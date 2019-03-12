#include "HUMboldt.h"

list<ETH_envelope> ETH_request_list;
list<ETH_envelope> ETH_clr2snd_list;
list<ETH_data_packet> ETH_data_list;
list<ETH_envelope> ETH_error_list;
list<ETH_envelope> ETH_done_list;

list<TCP_envelope> TCP_request_list;
list<TCP_envelope> TCP_clr2snd_list;
list<TCP_data_packet> TCP_data_list;
list<TCP_envelope> TCP_error_list;
list<TCP_envelope> TCP_done_list;

pthread_mutex_t lock = PTHREAD_MUTEX_INITIALIZER;
mutex ETH_Mutex,TCP_Mutex;
thread eth;
thread tcp;

bool is_receiving = 1;

int s;
struct ifreq buffer;
int ifindex;
unsigned char source[ETH_ALEN];
vector<rank_info> rank_info_table(256);


int receiving_size;
int server_fd;
struct sockaddr_in address;
int opt = 1;
int addrlen = sizeof(address);

thread receiver_threads[MAX_NUM_TC_SESSIONS];
int socket_list[MAX_NUM_TC_SESSIONS];
int num_receiver_threads = 0;

int RANK;

int ETH_MPI_Init(){
	if ((s = socket(AF_PACKET, SOCK_RAW, htons(ETH_PROTO))) < 0) {
		printf("Error: could not open socket\n");
		return -1;
	}
	memset(&buffer, 0x00, sizeof(buffer));
	strncpy(buffer.ifr_name, ETHERNET_INTERFACE_NAME, IFNAMSIZ);
	if (ioctl(s, SIOCGIFINDEX, &buffer) < 0) {
		printf("Error: could not get interface index\n");
		close(s);
		return -1;
	}
	ifindex = buffer.ifr_ifindex;

	if (ioctl(s, SIOCGIFHWADDR, &buffer) < 0) {
		printf("Error: could not get interface address\n");
		close(s);
		return -1;
	}
	memcpy((void*)source, (void*)(buffer.ifr_hwaddr.sa_data),
		ETH_ALEN);

	eth = thread(eth_receiver_func);
}

int TCP_MPI_Init(){

	if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0)
	{
		perror("socket failed");
		exit(EXIT_FAILURE);
	}
	
	// Forcefully attaching socket to the port 8080
	struct timeval tv;
	tv.tv_sec = 1;
	tv.tv_usec = 0;
	if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT,
												&opt, sizeof(opt)))
	{
		perror("setsockopt");
		exit(EXIT_FAILURE);
	}
	
	//setsockopt(server_fd, SOL_SOCKET, SO_RCVTIMEO, (const char*)&tv, sizeof tv);
	//fcntl(server_fd, F_SETFL, fcntl(sock_desc, F_GETFL, 0) | O_NONBLOCK);
	int flags = fcntl(server_fd, F_GETFL, 0);
  	if (flags < 0) on_error("Could not get server socket flags: %s\n", strerror(errno))

  	int err = fcntl(server_fd, F_SETFL, flags | O_NONBLOCK);
	if (err < 0) on_error("Could set server socket to be non blocking: %s\n", strerror(errno));
	address.sin_family = AF_INET;
	address.sin_addr.s_addr = inet_addr(rank_info_table[RANK].ip_address.c_str());
	address.sin_port = htons( PORT );
	
	// Forcefully attaching socket to the port 8080
	if (bind(server_fd, (struct sockaddr *)&address, 
								sizeof(address))<0)
	{
		perror("bind failed");
		exit(EXIT_FAILURE);
	}
	if (listen(server_fd, 3) < 0)
	{
		perror("listen");
		exit(EXIT_FAILURE);
	}
	printf("start listening to port %d\n",PORT);

	tcp = thread(tcp_receiver_func);
}

void tcp_receiver_func() {
	int numbytes;
	int accepted_socket;

	while(is_receiving){
		//printf("waiting for a connection\n");
		if ((accepted_socket = accept(server_fd, (struct sockaddr *)&address, 
						(socklen_t*)&addrlen))<0)
		{
		    //perror("accept");
		    //exit(EXIT_FAILURE);
		}else
		{
		    printf("socket num:  %d\n",accepted_socket);
		    receiver_threads[num_receiver_threads] = thread(tcp_receiver,accepted_socket);
		    num_receiver_threads++;
	    }
	}
//	for(int i = 0 ; i < num_receiver_threads;i++)
//	    receiver_threads[i].join();
	//	std::terminate();
}

void eth_receiver_func() {


   	unsigned char buffer[ETH_FRAME_LEN];
	union ETH_envelope envlp;

	int numbytes;

   	while(is_receiving){
		numbytes = eth_recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,ETH_FRAME_LEN);
   		if(numbytes != -1){
   			std::lock_guard<std::mutex> guard(ETH_Mutex);
   			//cout << "l = 1"<<endl;
   			//cout <<numbytes<<endl;
			envlp.buffer[0] = buffer[HEADER_OFFSET];
			envlp.buffer[1] = buffer[1+HEADER_OFFSET];
			for(int i = 2; i < ETH_ENVELOPE_SIZE; i++){
				envlp.buffer[i] = buffer[i+HEADER_OFFSET];
				//cout << hex << (int)envlp.buffer[i] <<endl;
			}
			// cout << "envlp" <<endl;
			// for(int i = 0; i < ENVELOPE_SIZE; i++){
			// 	cout << hex << (int)envlp.buffer[i] <<endl;
			// }
			if((envlp.field.PKT_TYPE == C_CLR2SND_PACKET || envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET)  && envlp.field.DEST == RANK){
				if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
					ETH_clr2snd_list.push_back(envlp);
				}
				else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){
					ETH_request_list.push_back(envlp);
				}
			}
			else if(envlp.field.PKT_TYPE == C_DATA_PACKET ){
				ETH_data_packet data;
				data.ETH_envlp = envlp;

				if(numbytes > ETH_ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2)
					numbytes = ETH_ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2;
				unsigned char buffer_temp[ETH_FRAME_LEN];
				for(int i = 0; i < numbytes ;i++){
					data.buffer[i] = buffer[i]; 
					//cout << "byte " << i << " : " <<hex << (int)data.buffer[i] <<endl;
				}

				// for(int i = 0 ; i < ETH_DATA_FRAM_SIZE- (ENVELOPE_SIZE-2);i++)
				// 	cout << "\tbyte " << i << " : " <<hex << (int)buffer_temp[i] <<endl;

				//cin.get();
				// /cout << data.envlp.field.MSG_SIZE <<endl;

				ETH_data_list.push_back(data);
				// if(envlp.field.DATA_TYPE == INT)
				// 	cout << "added to data list as INT"<<endl;
				// else if(envlp.field.DATA_TYPE == FLOAT)
				// 	cout << "added to data list as FLOAT"<<endl;
			}
			else if(envlp.field.PKT_TYPE == C_DATA_TRANSMISSION_DONE && envlp.field.DEST == RANK){
				ETH_done_list.push_back(envlp);
			}
		}
		//mu.unlock();
   	}
}

void tcp_receiver(int socket){
	char buffer[TCP_DATA_BUFFER_SIZE] = {0};
	union TCP_envelope envlp;
	int valread;
	int packet_count = 0;

	while(is_receiving){
		valread = read( socket , buffer,TCP_DATA_BUFFER_SIZE);
		printf("s:%d %d\n",socket,valread);
		// for(int i = 0 ; i < valread ;i++){
		// 	printf("0x%02X\n", (unsigned int)buffer[i]);
		// }
		if(valread > 0){
			std::lock_guard<std::mutex> guard(TCP_Mutex);

			// printf("p : %d\n",processed_bytes);
			for(int i = 0; i < TCP_ENVELOPE_SIZE; i++){
				envlp.buffer[i] = buffer[i];
				//printf("i : %d 0x%02X \n",i,(unsigned int)buffer[i]);
			}
	
			if(socket_list[envlp.field.SRC] == 0)
				socket_list[envlp.field.SRC] = socket;
	
			// cout << "dest: "<< (unsigned int)envlp.field.DEST << endl <<
			// 		"src: " << (unsigned int)envlp.field.SRC << endl <<
			// 		"pkt type: " << (unsigned int)envlp.field.PKT_TYPE <<endl <<
			// 		"msg size: " <<(unsigned int)envlp.field.MSG_SIZE <<endl <<
			// 		"tag: "      <<(unsigned int) envlp.field.TAG << endl <<
			// 		"data type: " <<(unsigned int)envlp.field.DATA_TYPE <<endl;
	
			if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET && envlp.field.DEST == RANK){
				TCP_clr2snd_list.push_back(envlp);
				//cout << "clr2snd" <<endl;
			}
			else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET && envlp.field.DEST == RANK){
				TCP_request_list.push_back(envlp);
				//cout << "envlp" <<endl;
			}
			else if(envlp.field.PKT_TYPE == C_DATA_TRANSMISSION_DONE && envlp.field.DEST == RANK){
				TCP_done_list.push_back(envlp);
				//cout << "done" <<endl;
			}
			else if(envlp.field.PKT_TYPE == C_DATA_PACKET && envlp.field.DEST == RANK){
				TCP_data_packet data;
				data.TCP_envlp = envlp;
				
				int processed_bytes = 0;
				while(processed_bytes < valread){
					for(int j = 0; j < TCP_ETH_DATA_FRAM_SIZE && processed_bytes < valread ;j++){
						data.buffer[j] = buffer[processed_bytes]; 
						processed_bytes++;
					}
					packet_count++;
					//cout <<"pckt count in receiver "<< packet_count <<endl;
					TCP_data_list.push_back(data);
				}

				//cout << "received bytes: " << valread <<endl;
				
				//cin.get();
			}
		}
	}
	//std::terminate();
}

int eth_recv_packet(char* iface, unsigned short proto, unsigned char * buffer, int buffer_size){
	int sockfd,sockopt;
	struct ifreq ifopts;  /* set promiscuous mode */
  	struct ifreq if_ip; /* get ip addr */
  	int numbytes;

  	struct ether_header *eh = (struct ether_header *) buffer;

	repeat: //printf("listener: Waiting to recvfrom...\n");
	numbytes = recvfrom(s, buffer, buffer_size, MSG_DONTWAIT, NULL, NULL);
	//printf("listener: got packet %d bytes\n", numbytes);

	//cout << hex << (int) eh->ether_dhost[0] << endl;

	if(check_packet_for_me(rank_info_table[RANK].mac_address,eh)){
		return numbytes;
	}
	else
		return -1;
}

int xml_parser(){

	ifstream myfile;
	vector<string> mac_addresses;
	vector<string> ip_addresses;
	string line;
	// myfile.open ("mpiMacAddresses");
	// while ( getline (myfile,line) )
	// {
	// 	//cout << line << '\n';
	// 	mac_addresses.push_back(line);
	// }
	// myfile.close();

	TiXmlDocument doc( "./configuration_files/mpiMap.xml" );
	doc.LoadFile();
	TiXmlHandle docHandle( &doc );
	TiXmlElement * fpga = docHandle.FirstChild( "cluster" ).FirstChild("node").ToElement();
	TiXmlElement * fpga2 = fpga;
	TiXmlElement * fpga3 = fpga;
	vector<string> kernel_to_mac_ptrs(256);

	for(fpga;fpga;fpga = fpga->NextSiblingElement()){
		TiXmlElement * mac_addr = fpga->FirstChild("mac_addr")->ToElement();
		string temp_str =  mac_addr->GetText();
		//cout << temp_str <<endl;
		mac_addresses.push_back(temp_str);
	}
	for(fpga3;fpga3;fpga3 = fpga3->NextSiblingElement()){
		TiXmlElement * ip_addr = fpga3->FirstChild("ip_addr")->ToElement();
		string temp_str =  ip_addr->GetText();
		//cout << temp_str <<endl;
		ip_addresses.push_back(temp_str);
	}


	int i = 0;
	for(fpga2;fpga2;fpga2 = fpga2->NextSiblingElement()){
		int rank_type;
		
		TiXmlElement * kernel = NULL;
		kernel = fpga2->FirstChild("type")->ToElement();
		const char * temp = kernel->GetText();
		cout << temp << endl;
		if(temp[0] == 's'){
			rank_type = SW_RANK;
		}
		else if(temp[0] == 'h'){
			kernel = kernel->NextSiblingElement("comm");
			const char * temp2 = kernel->GetText();
			if(temp2[0] == 't'){
				rank_type = TCP_RANK;
			}
			else if(temp2[0] == 'e'){
				rank_type = ETH_RANK;
			}
		}



		kernel = fpga2->FirstChild("kernel")->ToElement();
		for(kernel;kernel;kernel = kernel->NextSiblingElement("kernel")){
			const char * temp = kernel->GetText();
			int int_temp = atoi(temp);
			//cout << (int)(*temp - '0') << endl;
			rank_info_table[int_temp].rank_type = rank_type;
			//cout << int_temp << " mac: " << mac_addresses[i] << " ip: " << ip_addresses[i] <<endl;
			rank_info_table[int_temp].mac_address = str_to_hex(mac_addresses[i]);
			rank_info_table[int_temp].ip_address = ip_addresses[i];
		}
		i++;
	}

	// for(int i = 0 ; i < 5 ;i++){
	// 	cout << rank_info_table[i].rank_type <<endl;
	// }

	
	// for(int j = 0 ; j < kernel_to_mac_ptrs.size();  j++){
	// 	mac_addresses_lookup_table[j] = (mac_str_to_hex(kernel_to_mac_ptrs[j]));
	// 	//cout << mac_addresses_lookup_table[j] <<endl;
	// }

	//cout << "here" << endl;
	// for(int i = 0 ; i < kernel_to_mac_ptrs.size();i++)
	// {
	// 	if(kernel_to_mac_ptrs[i])
	// 		cout << i << "  "<< *(kernel_to_mac_ptrs[i]) << endl;
	// }

	// ----------------------------------------------------
}

int HUM_MPI_Init(int *argc, char ***argv ){
	MPI_Init(argc,argv);
    MPI_Comm_rank( MPI_COMM_WORLD, &RANK );
    cout <<"rank: "<<RANK <<endl;
    //MPI_Comm_size( MPI_COMM_WORLD, &size );
	xml_parser();
	ETH_MPI_Init();
	TCP_MPI_Init();
	cout << "Init is done!" <<endl;
}

string str_to_hex(string mac_address_str){
	vector<string> hex_strs;
	int i = 0;
	while(i < mac_address_str.size()){
		string temp;
		temp+=mac_address_str[i];
		temp+=mac_address_str[i+1];
		i+=3;
		hex_strs.push_back(temp);
	}

	string mac_address_hex;

	for(int i = 0 ; i < hex_strs.size();i++){
		stringstream str;
		str << hex_strs[i];
		int value;
		str >> std::hex >> value;
		mac_address_hex += (unsigned char)value &0xff;
		//cout <<hex<< value <<"  "<< (unsigned int)mac_address_hex[i]<<endl;
	}
	return mac_address_hex;
}

bool check_packet_for_me(string mac_address, struct ether_header * eh){

	// for(int i = 0; i < mac_address.size(); i++){
	// 	cout << hex << mac_address[i] <<"    " << eh->ether_dhost[i] << endl;
	// }
  //Check the packet is for me
	if (eh->ether_dhost[0] == (mac_address[0] & 0xff)&&
		eh->ether_dhost[1] == (mac_address[1] & 0xff) &&
		eh->ether_dhost[2] == (mac_address[2] & 0xff) &&
		eh->ether_dhost[3] == (mac_address[3] & 0xff) &&
		eh->ether_dhost[4] == (mac_address[4] & 0xff)&&
		eh->ether_dhost[5] == (mac_address[5] & 0xff)) {
		//printf("Correct destination MAC address\n");
		return 1;
	} else {
	// printf("Wrong destination MAC: %x:%x:%x:%x:%x:%x\n",
	// 	eh->ether_dhost[0],
	// 	eh->ether_dhost[1],
	// 	eh->ether_dhost[2],
	// 	eh->ether_dhost[3],
	// 	eh->ether_dhost[4],
	// 	eh->ether_dhost[5]);
		return 0;
	}
}


int eth_send_packet(char* iface, unsigned short proto,const char* dest,
	const unsigned char * data , int data_size){

	//cout << "data_size" << data_size << endl;

	union ethframe frame;
	memcpy(frame.field.header.h_dest, dest, ETH_ALEN);
	memcpy(frame.field.header.h_source, source, ETH_ALEN);
	frame.field.header.h_proto = htons(proto);
	memcpy(frame.field.data, data, data_size);

	unsigned int frame_len = data_size + ETH_HLEN;

	struct sockaddr_ll saddrll;
	memset((void*)&saddrll, 0, sizeof(saddrll));
	saddrll.sll_family = PF_PACKET;   
	saddrll.sll_ifindex = ifindex;
	saddrll.sll_halen = ETH_ALEN;
	memcpy((void*)(saddrll.sll_addr), (void*)dest, ETH_ALEN);

	// if (sendto(s, frame.buffer, frame_len, 0,
	// 	(struct sockaddr*)&saddrll, sizeof(saddrll)) > 0)
	// 	printf("Success!\n");
	// else
	// 	printf("Error, could not send\n");

	sendto(s, frame.buffer, frame_len, 0,(struct sockaddr*)&saddrll, sizeof(saddrll));

//	close(s);

	return 0;
}

int eth_send_envelope(unsigned int dest, unsigned int count,HUM_MPI_DATA_TYPE dataType,int tag){
	union ETH_envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST_temp = dest;
	envlp.field.DEST = dest;
	if(dataType == HUM_MPI_INT || dataType == HUM_MPI_FLOAT){
		envlp.field.MSG_SIZE = count;
	}
	else if(dataType == HUM_MPI_SHORT){
		envlp.field.MSG_SIZE = count*2;
	}
	else if(dataType == HUM_MPI_CHAR){
		envlp.field.MSG_SIZE = count*4;
	}
	else{
		return -1;
	}

	envlp.field.PKT_TYPE = C_SYNC_ENV_PACKET;
	envlp.field.TAG = tag;
	if(dataType == HUM_MPI_FLOAT)
		envlp.field.DATA_TYPE = FLOAT;
	else if (dataType == HUM_MPI_INT)
		envlp.field.DATA_TYPE = INT;

	// find the mac address of the FPGA which contains the rank

	// string mac_address;
	// mac_address = find_mac_address(dest);
	// string mac_address_hex = mac_str_to_hex(mac_address);

	//cout <<"sending to : "<< mac_address_hex <<endl;

	eth_send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,rank_info_table[dest].mac_address.c_str(),envlp.buffer,sizeof(envlp.buffer));
	//time_begin = clock();
	//cout<< sizeof(envlp.buffer) <<endl;
}

int eth_wait_for_clr2snd(unsigned int dest, unsigned int count,HUM_MPI_DATA_TYPE dataType,int tag){ // it needs a timeout mechanism
	unsigned char buffer[ETH_FRAME_LEN];
	union ETH_envelope envlp;

	while(1){
		std::lock_guard<std::mutex> guard(ETH_Mutex);
		//cout<<".";
		//while(lock);
		//pthread_mutex_lock(&lock);
		//cout<<"c";
		// time_end = clock();
		// if((double)(time_end - time_begin) / CLOCKS_PER_SEC >= TIMEOUT){
		// 	send_envelope(dest,count,dataType,tag);
		// }
		//cout <<(double)(time_end - time_begin) / CLOCKS_PER_SEC<<endl;
		for(list<ETH_envelope>::iterator it = ETH_clr2snd_list.begin(); it != ETH_clr2snd_list.end(); it++){
			if((*it).field.PKT_TYPE == C_CLR2SND_PACKET
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == dest){
				if((dataType == HUM_MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).field.DATA_TYPE == INT)){
					
					
					it = ETH_clr2snd_list.erase(it);
					
					return 1;
				}
			}
		}
		//pthread_mutex_unlock(&lock);





		// if(recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,BUFFER_SIZE)){
		// 	envlp.buffer[0] = buffer[HEADER_OFFSET];
		// 	envlp.buffer[1] = buffer[1+HEADER_OFFSET];
		// 	for(int i = 2; i < ENVELOPE_SIZE; i++){
		// 		envlp.buffer[(ENVELOPE_SIZE-i)-1+2] = buffer[i+HEADER_OFFSET];
		// 		//cout << hex << (int)envlp.buffer[i] <<endl;
		// 	}
		// 	// for(int i = 0; i < ENVELOPE_SIZE; i++){
		// 	// 	cout << hex << (int)envlp.buffer[i] <<endl;
		// 	// }
		// 	if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET && envlp.field.DEST == RANK && envlp.field.SRC == dest){
		// 		cout << "clr2snd" << envlp.field.SRC <<endl;
		// 		return 1;
		// 	}
		// 	else{
		// 		// cout << "pkt type: " <<(int) envlp.field.PKT_TYPE <<endl;
		// 		// cout << "DEST: "<< envlp.field.DEST <<endl;
		// 		if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
		// 			clr2snd_array[clr_num] = envlp;
		// 			clr_num++;
		// 			cout << "added to clr2snd list"<<endl;
		// 		}
		// 		else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){
		// 			request_array[req_num] = envlp;
		// 			req_num++;
		// 			cout << "added to envlp list"<<endl;
		// 		}
	
		// 	}
		// }
	}
	// cout << "src : " << (int) envlp.field.SRC <<endl;
	// cout << "dest : " << (int) envlp.field.DEST <<endl;
	// cout << "MSG_SIZE : " << (int) envlp.field.MSG_SIZE <<endl;
	// cout << "paket type : " << (int) envlp.field.PKT_TYPE <<endl;
	// if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
	// 	cout << "CLR2SND" <<endl;
	// }
	// else{
	// 	cout << "not CLR2SND" <<endl;
	// }
}
int eth_send_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int dest,int tag){

	unsigned char * buff_char_ptr = (unsigned char *) buff;
	int data_size;
	union ETH_envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	envlp.field.DEST_temp = dest;
	envlp.field.PKT_TYPE = C_DATA_PACKET;
	envlp.field.TAG = tag;
	if(dataType == HUM_MPI_FLOAT){
		envlp.field.DATA_TYPE = FLOAT;
		data_size = 4;
	}
	else if(dataType == HUM_MPI_INT){
		envlp.field.DATA_TYPE = INT;
		data_size = 4;
	}


	// for(int seq_num = 0; seq_num < ((count*dataType)/ETH_DATA_FRAM_SIZE)+1 ; seq_num++){


	// }

	// find the mac address of the FPGA which contains the rank

	if((count*data_size)+ETH_ENVELOPE_SIZE <= ETH_ETH_DATA_FRAM_SIZE){
		envlp.field.MSG_SIZE = 0;
		unsigned char * to_send_buffer = new unsigned char[(count*data_size)+ETH_ENVELOPE_SIZE];
		for(int i = 0; i < ETH_ENVELOPE_SIZE ;i++){
			to_send_buffer[i] = envlp.buffer[i];
		}
		for(int i = ETH_ENVELOPE_SIZE ; i < (count*data_size)+ETH_ENVELOPE_SIZE;i++)
			to_send_buffer[i] = buff_char_ptr[i - ETH_ENVELOPE_SIZE];  

	//for(int i = 0 ; i < count*dataType ; i+= ENVELOPE_SIZE){
		// union envelope envlp;
		// for(int j = 0 ; j < ENVELOPE_SIZE ;j++){
		// 	envlp.buffer[j] = buff_char_ptr[i+j];
		// }

		// string mac_address;
		// mac_address = find_mac_address(dest);
		// string mac_address_hex = mac_str_to_hex(mac_address);

		//cout << "befor send: " <<sizeof(envlp.buffer)<<endl;

		// for(int k = 0 ; k < sizeof(envlp.buffer);k++){
		// 	cout <<k <<"   " << hex << (int)envlp.buffer[k] << endl;
		// }

		//send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_address_hex.c_str(),envlp.buffer,sizeof(envlp.buffer));
		eth_send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,rank_info_table[dest].mac_address.c_str(),to_send_buffer,(count*data_size)+ETH_ENVELOPE_SIZE);

	}
	else{
		int seq_num = 0;
		unsigned char to_send_buffer[ETH_ETH_DATA_FRAM_SIZE+100];
send_seq:
		for(seq_num; seq_num < ((count*data_size)/(ETH_ETH_DATA_FRAM_SIZE-(ETH_ENVELOPE_SIZE-2)))+1 ; seq_num++){
			std::lock_guard<std::mutex> guard(ETH_Mutex);
			// for(list<envelope>::iterator it = error_list.begin(); it != error_list.end(); it++){
			// 	//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
			// 	if((*it).field.PKT_TYPE == C_RECV_ERROR
			// 	&& (*it).field.DEST == RANK
			// 	&& (*it).field.SRC == dest){
			// 		if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
			// 			|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
						
			// 			it = error_list.erase(it);
			// 			cout << "send error "<< (*it).field.MSG_SIZE << "***************************************" <<endl;
			// 			cin.get();
			// 			seq_num = (*it).field.MSG_SIZE;
			// 			break;
			// 		}
			// 	}
			// }



			int k = 0;
			envlp.field.MSG_SIZE = seq_num;
			for(int i = 0; i < ETH_ENVELOPE_SIZE ;i++){
				to_send_buffer[i] = envlp.buffer[i];
			} 
			for(k = ETH_ENVELOPE_SIZE;; k++){
				if( k >= (ETH_ETH_DATA_FRAM_SIZE+2) || (seq_num*(ETH_ETH_DATA_FRAM_SIZE - (ETH_ENVELOPE_SIZE-2)))+(k - ETH_ENVELOPE_SIZE) == (count*data_size)){
					//cout <<"break"<<endl;
					//size = k;
					break;
				}
				//cout << k<<" ";
				to_send_buffer[k] = buff_char_ptr[(seq_num*(ETH_ETH_DATA_FRAM_SIZE - (ETH_ENVELOPE_SIZE-2)))+(k - ETH_ENVELOPE_SIZE)];
				// size = k;
 			}
 			//k++;
			//cout<<seq_num << "after for " <<k<<endl;
			// string mac_address;
			// mac_address = find_mac_address(dest);
			// //cout<<seq_num << "after find_mac_address " <<k<<endl;
			// string mac_address_hex = mac_str_to_hex(mac_address);
			//cout << "seq "<<seq_num <<" j:"<<k<<endl;
			eth_send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,rank_info_table[dest].mac_address.c_str(),to_send_buffer,k); // ??? 
		}
		while(1){
			std::lock_guard<std::mutex> guard(ETH_Mutex);
			for(list<ETH_envelope>::iterator it = ETH_done_list.begin(); it != ETH_done_list.end(); it++){
				//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
				if((*it).field.PKT_TYPE == C_DATA_TRANSMISSION_DONE
				&& (*it).field.DEST == RANK
				&& (*it).field.SRC == dest){
					if((dataType == HUM_MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
						|| (dataType == HUM_MPI_INT && (*it).field.DATA_TYPE == INT)){
						//cout << "done" <<endl;
						it = ETH_done_list.erase(it);
						return 1;
					}
				}
			}
			// for(list<envelope>::iterator it = error_list.begin(); it != error_list.end(); it++){
			// 	//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
			// 	if((*it).field.PKT_TYPE == C_RECV_ERROR
			// 	&& (*it).field.DEST == RANK
			// 	&& (*it).field.SRC == dest){
			// 		if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
			// 			|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
						
			// 			it = error_list.erase(it);
			// 			cout << "send error last"<<(*it).field.MSG_SIZE<<" ***************************************" <<endl;
			// 			cin.get();
			// 			seq_num = (*it).field.MSG_SIZE;
			// 			goto send_seq;
			// 		}
			// 	}
			// }
		}
	}

	//printf("to send buff: %x %x\n",to_send_buffer[0],to_send_buffer[1]);

	
		//cout<<"buffer size: "<< sizeof(envlp.buffer) <<endl;
	//}

	// for(int i = 0 ; i < count ; i+= dataType){
	// 	if(i < count)
	// 		buf[i] = recv_data(31,0);
	// 	if(i+1 < count)
	// 		buf[i+1] = recv_data(63,32);
	// 	if(i+2 < count)
	// 		buf[i+2] = recv_data(95,64);
	// 	if(i+3 < count)
	// 		buf[i+3] = recv_data(127,96);
	// }
}

int eth_wait_for_envlp(int source, HUM_MPI_DATA_TYPE dataType){
	unsigned char buffer[ETH_FRAME_LEN];
	union ETH_envelope envlp;

	while(1){
		//while(lock);
		//pthread_mutex_lock(&lock);
		std::lock_guard<std::mutex> guard(ETH_Mutex);
		//cout << "e";
		//cout <<request_list.size()<<endl;
		for(list<ETH_envelope>::iterator it = ETH_request_list.begin(); it != ETH_request_list.end(); it++){
			//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
			if((*it).field.PKT_TYPE == C_SYNC_ENV_PACKET
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == source){
				if((dataType == HUM_MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).field.DATA_TYPE == INT)){
					
					it = ETH_request_list.erase(it);
					
					return 1;
				}
			}
		}
		//mu.unlock();
		//pthread_mutex_unlock(&lock);


		// if(recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,BUFFER_SIZE)){
		// 	for(int i = 0; i < ENVELOPE_SIZE; i++){
		// 		envlp.buffer[i] = buffer[i+HEADER_OFFSET];
		// 		//cout << hex << (int)envlp.buffer[i] <<endl;
		// 	}
		// 	if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET && envlp.field.DEST == RANK && envlp.field.SRC == source ){
		// 		cout << "envlp received... " <<endl;
		// 		return 1;
		// 	}
		// 	else{
		// 		// cout << "pkt type: " <<(int) envlp.field.PKT_TYPE <<endl;
		// 		// cout << "DEST: "<< envlp.field.DEST <<endl;
		// 		if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
		// 			clr2snd_array[clr_num] = envlp;
		// 			clr_num++;
		// 			cout << "added to clr2snd list"<<endl;
		// 		}
		// 		else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){
		// 			request_array[req_num] = envlp;
		// 			req_num++;
		// 			cout << "added to envlp list"<<endl;
		// 		}
		// 	}
		// }
	}
}

int eth_send_clr2snd(int dest, HUM_MPI_DATA_TYPE dataType){
	union ETH_envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	envlp.field.DEST_temp = dest;
	envlp.field.MSG_SIZE = receiving_size;

	envlp.field.PKT_TYPE = C_CLR2SND_PACKET;
	envlp.field.TAG = 0;
	if(dataType == HUM_MPI_FLOAT){
		envlp.field.DATA_TYPE = FLOAT;
		//cout << "### FLOAT ####"<<endl;
	}
	else if (dataType == HUM_MPI_INT){
		envlp.field.DATA_TYPE = INT;
		//cout << "### INT ####"<<endl;
	}

	// find the mac address of the FPGA which contains the rank

	// string mac_address;
	// mac_address = find_mac_address(dest);
	// string mac_address_hex = mac_str_to_hex(mac_address);

	//cout <<"sending to : "<< mac_address_hex <<endl;

	eth_send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,rank_info_table[dest].mac_address.c_str(),envlp.buffer,sizeof(envlp.buffer));
}

int eth_receive_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int source){

	int seq_num = 0;
	bool is_error_sent = 0;
	int data_size;
	if(dataType == HUM_MPI_INT){
		data_size = 4;
	}
	else if(dataType == HUM_MPI_FLOAT){
		data_size = 4;
	}
	unsigned char * buff_char_ptr = (unsigned char *) buff;

	float temp_buffer[20];
	void * temp_buffer_void = (void *) temp_buffer;
	unsigned char * temp_buffer_char = (unsigned char *) temp_buffer_void;

	//std::vector<list<ETH_data_packet>::iterator> to_delete;

	while(1){
		//cout << ".";
		//while(lock);
		//pthread_mutex_lock(&lock);
		//mu.lock();
		//cout << "D";
		// time_end = clock();
		// if((double)(time_end - time_begin) / CLOCKS_PER_SEC >= TIMEOUT){
		// 	send_clr2snd(source, dataType);
		// 	//cout << "fuck :D" <<endl;
		// }
		std::lock_guard<std::mutex> guard(ETH_Mutex);
		for(list<ETH_data_packet>::iterator it = ETH_data_list.begin(); it != ETH_data_list.end(); it++){
			//cout <<"1 dest:" << (*it).ETH_envlp.field.DEST << " src:" << (*it).ETH_envlp.field.SRC << endl;
			if((*it).ETH_envlp.field.PKT_TYPE == C_DATA_PACKET	
			&& (*it).ETH_envlp.field.DEST == RANK
			&& (*it).ETH_envlp.field.SRC == source){
				//cout <<"2" <<endl;
				if((dataType == HUM_MPI_FLOAT && (*it).ETH_envlp.field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).ETH_envlp.field.DATA_TYPE == INT)){
					
					if((count*data_size)+ETH_ENVELOPE_SIZE <= ETH_ETH_DATA_FRAM_SIZE){
						int j;
						for(j = HEADER_OFFSET + ETH_ENVELOPE_SIZE ; j < ETH_ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2; j++){
							if((j - ETH_ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
								//cout<<count*data_size<<"break"<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
								break;
							}
							buff_char_ptr[(j - ETH_ENVELOPE_SIZE - HEADER_OFFSET)] = (*it).buffer[j];
						}
						if((j - ETH_ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
							it = ETH_data_list.erase(it);
							goto done;
						}
					}
					else{
						if((*it).ETH_envlp.field.MSG_SIZE == seq_num){
							//read it
							int j;
							unsigned char temp_buff[ETH_ETH_DATA_FRAM_SIZE];
							unsigned char temp_buff2[ETH_ETH_DATA_FRAM_SIZE];
							//cout <<"4" <<endl;
							for(j = HEADER_OFFSET + ETH_ENVELOPE_SIZE ; j < ETH_ETH_DATA_FRAM_SIZE+HEADER_OFFSET+2; j++){
								if((seq_num*(ETH_ETH_DATA_FRAM_SIZE - (ETH_ENVELOPE_SIZE-2)))+(j - ETH_ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
									//cout<<count*data_size<<"break"<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
									break;
								}
								buff_char_ptr[(seq_num*(ETH_ETH_DATA_FRAM_SIZE - (ETH_ENVELOPE_SIZE-2)))+(j - ETH_ENVELOPE_SIZE - HEADER_OFFSET)] = (*it).buffer[j];
								// if(dataType == MPI_INT)
								//cout <<"seq: "<<seq_num<< "\tbyte " << j << " : " <<hex << (int)buff_char_ptr[(seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET)] << " " << (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET)<<endl;
							}
							//cout <<"out of for "<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
							if((seq_num*(ETH_ETH_DATA_FRAM_SIZE - (ETH_ENVELOPE_SIZE-2)))+(j - ETH_ENVELOPE_SIZE - HEADER_OFFSET) == (count*data_size)){
								it = ETH_data_list.erase(it);
								goto done;
							}
							// for(int i = 0 ; i < ETH_DATA_FRAM_SIZE- ENVELOPE_SIZE+2 ;i++){
							// 	temp_buff2[i] = temp_buff[(ETH_DATA_FRAM_SIZE- ENVELOPE_SIZE+2)-i-1];
							// 	cout << "\t \tbyte " << i << " : " <<hex << (int)temp_buff[i] <<endl;
							// }
							seq_num++;
							is_error_sent = 0;
							it = ETH_data_list.erase(it);
							//cin.get();
						}
						else{
							if(!is_error_sent){
								cout << "Error " << seq_num<< endl;
								cin.get();
								// union envelope envlp;
								// envlp.field.SRC = RANK;
								// envlp.field.DEST = source;
								// envlp.field.DEST_temp = source;
								// envlp.field.MSG_SIZE = seq_num;
							
								// envlp.field.PKT_TYPE = C_RECV_ERROR;
								// envlp.field.TAG = 0;
								// if(dataType == MPI_FLOAT)
								// 	envlp.field.DATA_TYPE = FLOAT;
								// else if (dataType == MPI_INT)
								// 	envlp.field.DATA_TYPE = INT;
							
								// // find the mac address of the FPGA which contains the rank
							
								// // string mac_address;
								// // mac_address = find_mac_address(source);
								// // string mac_address_hex = mac_str_to_hex(mac_address);
							
								// //cout <<"sending to : "<< mac_address_hex <<endl;
							
								// send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,mac_addresses_lookup_table[source].c_str(),envlp.buffer,sizeof(envlp.buffer));
								// is_error_sent = 1;
								// //it = data_list.erase(it);
							}
						}
					}
					//to_delete.push_back(it);
					//return 1;
				}
			}
		}
	}
done:
		//cout << "done"<<endl;
		// for(int i = 0 ; i < to_delete.size();i++){
		// 	data_list.erase(to_delete[i]);
		// }
		// to_delete.clear();

		// for(int i = 0; i < 20 ;i++){
		// 	cout <<"temp" << temp_buffer[i] <<endl;
		// }

		//mu.unlock();
		//pthread_mutex_unlock(&lock);
		union ETH_envelope envlp;
		envlp.field.SRC = RANK;
		envlp.field.DEST = source;
		envlp.field.DEST_temp = source;
		envlp.field.MSG_SIZE = seq_num;
		
		envlp.field.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
		envlp.field.TAG = 0;
		if(dataType == HUM_MPI_FLOAT)
			envlp.field.DATA_TYPE = FLOAT;
		else if (dataType == HUM_MPI_INT)
			envlp.field.DATA_TYPE = INT;
		
		// find the mac address of the FPGA which contains the rank
		
		// string mac_address;
		// mac_address = find_mac_address(source);
		// string mac_address_hex = mac_str_to_hex(mac_address);
		
		//cout <<"sending to : "<< mac_address_hex <<endl;
		
		eth_send_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,rank_info_table[source].mac_address.c_str(),envlp.buffer,sizeof(envlp.buffer));
		return 1;
}

int ETH_MPI_Recv(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int src,int tag,HUM_MPI_COMM comm){
	cout << "ETH wait for envlp from " <<src<<endl;
	eth_wait_for_envlp(src,dataType);
	cout << "ETH send clr2snd to " <<src<<endl;
	eth_send_clr2snd(src,dataType);
	cout << "ETH receive data from " <<src<<endl;
	eth_receive_data(buff,count,dataType,src);//this function has problem
	cout << "ETH recv done " <<src<<endl;

	return 1;

}

int ETH_MPI_Send(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm){
	cout << "ETH send envelope to " <<dest<<endl;
	eth_send_envelope(dest,count,dataType,tag);
	cout << "ETH wait for clr2snd from " <<dest<<endl;
	eth_wait_for_clr2snd(dest,count,dataType,tag);
	cout << "ETH send data to " <<dest<<endl;
	eth_send_data(buff,count,dataType,dest,tag);
	cout << "ETH send done " <<dest<<endl;

	return 1;
}


int tcp_send_packet(int dest, const unsigned char * data , int data_size){

	// struct sockaddr_in address;
	// struct sockaddr_in serv_addr;
	// cout <<"here "<< socket_list[dest] <<endl;
	// int sock;
	// if(socket_list[dest] == 0){
	// 	memset(&serv_addr, '0', sizeof(serv_addr));

	// 	serv_addr.sin_family = AF_UNSPEC;
	// 	serv_addr.sin_port = htons(PORT);
	// 	serv_addr.sin_addr.s_addr = inet_addr("10.1.2.102");

	// 	if(inet_pton(AF_INET, "10.1.2.102", &serv_addr.sin_addr)<=0) 
	// 	{
	// 		printf("\nInvalid address/ Address not supported \n");
	// 		return -1;
	// 	}
	// 	if (connect(sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) < 0)
	// 	{
	// 		printf("\nConnection Failed \n");
	// 		return -1;
	// 	}
	// 	socket_list[dest] = sock;
	// 	cout << "connected" <<endl;
	// }
	// send(socket_list[dest], data , data_size , 0 );
	// return 1;

	int sockfd, numbytes;  
    char buf[1024];
    struct sockaddr_in their_addr; /* connector's address information */

    // if (argc != 2) {
    //     fprintf(stderr,"usage: client hostname\n");
    //     exit(1);
    // }

    // if ((he=gethostbyname(argv[1])) == NULL) {   get the host info 
    //     herror("gethostbyname");
    //     exit(1);
    // }
    if(socket_list[dest] == 0){
    	if ((sockfd = socket(AF_INET, SOCK_STREAM, 0)) == -1) {
    	    perror("socket");
    	    exit(1);
    	}
	
		their_addr.sin_family = AF_INET;      /* host byte order */
    	their_addr.sin_port = htons(PORT);    /* short, network byte order */
    	bzero(&(their_addr.sin_zero), 8);     /* zero the rest of the struct */
	
    	if(inet_pton(AF_INET, rank_info_table[dest].ip_address.c_str(), &their_addr.sin_addr)<=0) 
		{
			printf("\nInvalid address/ Address not supported \n");
			return -1;
		}
	
    	if (connect(sockfd, (struct sockaddr *)&their_addr, \
    	                                      sizeof(struct sockaddr)) == -1) {
    	    perror("connect");
    	    exit(1);
    	}
    	socket_list[dest] = sockfd;
    	receiver_threads[num_receiver_threads] = thread(tcp_receiver,sockfd);
		num_receiver_threads++;
	}
	send(socket_list[dest], data , data_size , 0 );
}

int tcp_send_envelope(unsigned int dest, unsigned int count, HUM_MPI_DATA_TYPE dataType,int tag){
	union TCP_envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	if(dataType == HUM_MPI_INT || dataType == HUM_MPI_FLOAT){
		envlp.field.MSG_SIZE = count;
	}
	else if(dataType == HUM_MPI_SHORT){
		envlp.field.MSG_SIZE = count*2;
	}
	else if(dataType == HUM_MPI_CHAR){
		envlp.field.MSG_SIZE = count*4;
	}
	else{
		return -1;
	}

	envlp.field.MSG_SIZE = count;

	envlp.field.PKT_TYPE = C_SYNC_ENV_PACKET;
	envlp.field.TAG = tag;
	if(dataType == HUM_MPI_FLOAT)
		envlp.field.DATA_TYPE = FLOAT;
	else if (dataType == HUM_MPI_INT)
		envlp.field.DATA_TYPE = INT;

	tcp_send_packet(dest,envlp.buffer,sizeof(envlp.buffer));
}

int tcp_wait_for_clr2snd(unsigned int dest, unsigned int count,HUM_MPI_DATA_TYPE dataType,int tag){ // it needs a timeout mechanism
	// unsigned char buffer[ETH_FRAME_LEN];
	// union envelope envlp;

	while(1){
		std::lock_guard<std::mutex> guard(TCP_Mutex);
		//cout<<".";
		//while(lock);
		//pthread_mutex_lock(&lock);
		//cout<<"c";
		//time_end = clock();
		// if((double)(time_end - time_begin) / CLOCKS_PER_SEC >= TIMEOUT){
		// 	send_envelope(dest,count,dataType,tag);
		// }
		//cout <<(double)(time_end - time_begin) / CLOCKS_PER_SEC<<endl;
		for(list<TCP_envelope>::iterator it = TCP_clr2snd_list.begin(); it != TCP_clr2snd_list.end(); it++){
			if((*it).field.PKT_TYPE == C_CLR2SND_PACKET
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == dest){
				if((dataType == HUM_MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).field.DATA_TYPE == INT)){
					
					
					it = TCP_clr2snd_list.erase(it);
					
					return 1;
				}
			}
		}
	}
		//pthread_mutex_unlock(&lock);





	// 	// if(recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,BUFFER_SIZE)){
	// 	// 	envlp.buffer[0] = buffer[HEADER_OFFSET];
	// 	// 	envlp.buffer[1] = buffer[1+HEADER_OFFSET];
	// 	// 	for(int i = 2; i < ENVELOPE_SIZE; i++){
	// 	// 		envlp.buffer[(ENVELOPE_SIZE-i)-1+2] = buffer[i+HEADER_OFFSET];
	// 	// 		//cout << hex << (int)envlp.buffer[i] <<endl;
	// 	// 	}
	// 	// 	// for(int i = 0; i < ENVELOPE_SIZE; i++){
	// 	// 	// 	cout << hex << (int)envlp.buffer[i] <<endl;
	// 	// 	// }
	// 	// 	if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET && envlp.field.DEST == RANK && envlp.field.SRC == dest){
	// 	// 		cout << "clr2snd" << envlp.field.SRC <<endl;
	// 	// 		return 1;
	// 	// 	}
	// 	// 	else{
	// 	// 		// cout << "pkt type: " <<(int) envlp.field.PKT_TYPE <<endl;
	// 	// 		// cout << "DEST: "<< envlp.field.DEST <<endl;
	// 	// 		if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
	// 	// 			clr2snd_array[clr_num] = envlp;
	// 	// 			clr_num++;
	// 	// 			cout << "added to clr2snd list"<<endl;
	// 	// 		}
	// 	// 		else if(envlp.field.PKT_TYPE == C_SYNC_ENV_PACKET){
	// 	// 			request_array[req_num] = envlp;
	// 	// 			req_num++;
	// 	// 			cout << "added to envlp list"<<endl;
	// 	// 		}
	
	// 	// 	}
	// 	// }
	// }
	// // cout << "src : " << (int) envlp.field.SRC <<endl;
	// // cout << "dest : " << (int) envlp.field.DEST <<endl;
	// // cout << "MSG_SIZE : " << (int) envlp.field.MSG_SIZE <<endl;
	// // cout << "paket type : " << (int) envlp.field.PKT_TYPE <<endl;
	// // if(envlp.field.PKT_TYPE == C_CLR2SND_PACKET){
	// // 	cout << "CLR2SND" <<endl;
	// // }
	// // else{
	// // 	cout << "not CLR2SND" <<endl;
	// // }
}

int tcp_send_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int dest,int tag){

	unsigned char * buff_char_ptr = (unsigned char *) buff;
	int data_size;
	union TCP_envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	envlp.field.PKT_TYPE = C_DATA_PACKET;
	envlp.field.TAG = tag;

	if(dataType == HUM_MPI_FLOAT){
		envlp.field.DATA_TYPE = FLOAT;
		data_size = 4;
	}
	else if(dataType == HUM_MPI_INT){
		envlp.field.DATA_TYPE = INT;
		data_size = 4;
	}
	//envlp.field.MSG_SIZE = data_size*count;


	// if((count*data_size)+ENVELOPE_SIZE <= ETH_DATA_FRAM_SIZE){
	// 	envlp.field.MSG_SIZE = count*data_size;
	// 	unsigned char * to_send_buffer = new unsigned char[(count*data_size)+ENVELOPE_SIZE];
	// 	for(int i = 0; i < ENVELOPE_SIZE ;i++){
	// 		to_send_buffer[i] = envlp.buffer[i];
	// 	}
	// 	for(int i = ENVELOPE_SIZE ; i < (count*data_size)+ENVELOPE_SIZE;i++)
	// 		to_send_buffer[i] = buff_char_ptr[i - ENVELOPE_SIZE];

	// 	send_packet(dest,to_send_buffer,(count*data_size)+ENVELOPE_SIZE);
	// }
	// else{
	int byte_index = 0;
	int remaining_size = count*data_size;
	while(remaining_size > 0){
		if(remaining_size + TCP_ENVELOPE_SIZE > TCP_ETH_DATA_FRAM_SIZE){
			envlp.field.MSG_SIZE = TCP_ETH_DATA_FRAM_SIZE - TCP_ENVELOPE_SIZE;
			remaining_size -= TCP_ETH_DATA_FRAM_SIZE - TCP_ENVELOPE_SIZE;
			unsigned char * to_send_buffer = new unsigned char[TCP_ETH_DATA_FRAM_SIZE];
			for(int i = 0; i < TCP_ENVELOPE_SIZE ;i++){
				to_send_buffer[i] = envlp.buffer[i];
			}
			for(int i = TCP_ENVELOPE_SIZE ; i < TCP_ETH_DATA_FRAM_SIZE;i++){
				to_send_buffer[i] = buff_char_ptr[byte_index];
				byte_index++;
			}
			tcp_send_packet(dest,to_send_buffer,TCP_ETH_DATA_FRAM_SIZE);
		}
		else{
			envlp.field.MSG_SIZE = remaining_size;
			unsigned char * to_send_buffer = new unsigned char[remaining_size + TCP_ENVELOPE_SIZE];
			for(int i = 0; i < TCP_ENVELOPE_SIZE ;i++){
				to_send_buffer[i] = envlp.buffer[i];
			}
			for(int i = TCP_ENVELOPE_SIZE ; i < remaining_size + TCP_ENVELOPE_SIZE ;i++){
				to_send_buffer[i] = buff_char_ptr[byte_index];
				byte_index++;
			}
			tcp_send_packet(dest,to_send_buffer,remaining_size+TCP_ENVELOPE_SIZE);
			remaining_size -= remaining_size;
 		}
	}




	while(1){
		std::lock_guard<std::mutex> guard(TCP_Mutex);
		for(list<TCP_envelope>::iterator it = TCP_done_list.begin(); it != TCP_done_list.end(); it++){
			//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
			if((*it).field.PKT_TYPE == C_DATA_TRANSMISSION_DONE
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == dest){
				if((dataType == HUM_MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).field.DATA_TYPE == INT)){
					//cout << "done" <<endl;
					it = TCP_error_list.erase(it);
					return 1;
				}
			}
		}
	}
//	}



	// unsigned char * to_send_buffer = new unsigned char[(count*data_size)+ENVELOPE_SIZE];
	// for(int i = 0; i < ENVELOPE_SIZE ;i++){
	// 	to_send_buffer[i] = envlp.buffer[i];
	// }
	// for(int i = ENVELOPE_SIZE ; i < (count*data_size)+ENVELOPE_SIZE;i++)
 // 		to_send_buffer[i] = buff_char_ptr[i - ENVELOPE_SIZE];

 // 	send_packet(dest,to_send_buffer,(count*data_size)+ENVELOPE_SIZE);

	// while(1){
	// 	std::lock_guard<std::mutex> guard(myMutex);
	// 	for(list<envelope>::iterator it = done_list.begin(); it != done_list.end(); it++){
	// 		//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
	// 		if((*it).field.PKT_TYPE == C_DATA_TRANSMISSION_DONE
	// 		&& (*it).field.DEST == RANK
	// 		&& (*it).field.SRC == dest){
	// 			if((dataType == MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
	// 				|| (dataType == MPI_INT && (*it).field.DATA_TYPE == INT)){
	// 				//cout << "done" <<endl;
	// 				it = error_list.erase(it);
	// 				return 1;
	// 			}
	// 		}
	// 	}
	// }
}

int tcp_wait_for_envlp(int source, HUM_MPI_DATA_TYPE dataType){
	unsigned char buffer[ETH_FRAME_LEN];
	union TCP_envelope envlp;

	while(1){
		//while(lock);
		//pthread_mutex_lock(&lock);
		std::lock_guard<std::mutex> guard(TCP_Mutex);
		//cout << "e";
		//cout <<request_list.size()<<endl;
		for(list<TCP_envelope>::iterator it = TCP_request_list.begin(); it != TCP_request_list.end(); it++){
			//cout <<hex<< "**********pck type: " << (int)(*it).field.PKT_TYPE  << " d: "<< (int)(*it).field.DEST << " s: " << (int)(*it).field.SRC << " t: "<< (int)(*it).field.DATA_TYPE <<" source: " <<source<<endl;
			if((*it).field.PKT_TYPE == C_SYNC_ENV_PACKET
			&& (*it).field.DEST == RANK
			&& (*it).field.SRC == source){
				if((dataType == HUM_MPI_FLOAT && (*it).field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).field.DATA_TYPE == INT)){
					
					it = TCP_request_list.erase(it);
					
					return 1;
				}
			}
		}
	}
}

int tcp_send_clr2snd(int dest, HUM_MPI_DATA_TYPE dataType){
	union TCP_envelope envlp;
	envlp.field.SRC = RANK;
	envlp.field.DEST = dest;
	envlp.field.MSG_SIZE = receiving_size;

	envlp.field.PKT_TYPE = C_CLR2SND_PACKET;
	envlp.field.TAG = 0;
	if(dataType == HUM_MPI_FLOAT){
		envlp.field.DATA_TYPE = FLOAT;
		//cout << "### FLOAT ####"<<endl;
	}
	else if (dataType == HUM_MPI_INT){
		envlp.field.DATA_TYPE = INT;
		//cout << "### INT ####"<<endl;
	}

	// find the mac address of the FPGA which contains the rank

	tcp_send_packet(dest,envlp.buffer,sizeof(envlp.buffer));
}

int tcp_receive_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int source){

	int packet_count = 0;
	int byte_index = 0;
	int seq_num = 0;
	bool is_error_sent = 0;
	int data_size;
	if(dataType == HUM_MPI_INT){
		data_size = 4;
	}
	else if(dataType == HUM_MPI_FLOAT){
		data_size = 4;
	}
	unsigned char * buff_char_ptr = (unsigned char *) buff;

	float temp_buffer[20];
	void * temp_buffer_void = (void *) temp_buffer;
	unsigned char * temp_buffer_char = (unsigned char *) temp_buffer_void;

	//std::vector<list<data_packet>::iterator> to_delete;

	while(1){
		//cout << ".";
		//while(lock);
		//pthread_mutex_lock(&lock);
		//mu.lock();
		
		//cout << "D";
		// time_end = clock();
		// if((double)(time_end - time_begin) / CLOCKS_PER_SEC >= TIMEOUT){
		// 	send_clr2snd(source, dataType);
		// 	cout << "fuck :D" <<endl;
		// }
		std::lock_guard<std::mutex> guard(TCP_Mutex);
		for(list<TCP_data_packet>::iterator it = TCP_data_list.begin(); it != TCP_data_list.end(); it++){
			//cout <<"1" <<endl;
			if((*it).TCP_envlp.field.PKT_TYPE == C_DATA_PACKET	
			&& (*it).TCP_envlp.field.DEST == RANK
			&& (*it).TCP_envlp.field.SRC == source){
				//cout <<"2" <<endl;
				if((dataType == HUM_MPI_FLOAT && (*it).TCP_envlp.field.DATA_TYPE == FLOAT)
					|| (dataType == HUM_MPI_INT && (*it).TCP_envlp.field.DATA_TYPE == INT)){

					// for(int i = 0 ; i < 16 ;i++){
					// 	printf("0x%02X\n", (unsigned int)(*it).buffer[i]);
					// }
					int size = (*it).TCP_envlp.field.MSG_SIZE;
					for(int j = TCP_ENVELOPE_SIZE ; j < size + TCP_ENVELOPE_SIZE; j++){
						//cout << j <<endl;
						// if((j - ENVELOPE_SIZE) == (count*data_size)){
						// 	//cout<<count*data_size<<"break"<< (seq_num*(ETH_DATA_FRAM_SIZE - (ENVELOPE_SIZE-2)))+(j - ENVELOPE_SIZE - HEADER_OFFSET) <<endl;
						// 	cout << "break" <<endl;
						// 	goto done;
						// }
						buff_char_ptr[byte_index] = (*it).buffer[j];
						byte_index++;
					}

					float * float_ptr = (float*) buff_char_ptr;

					// for(int i = 0 ; i < ETH_DATA_FRAM_SIZE ;i++){
					// 	cout<<i <<" " << float_ptr[i] <<endl;
					// }
					packet_count++;
					//cout <<"pckt count "<< packet_count <<endl;

					//cout <<" size: " << size  <<"received bytes: "<< byte_index <<endl;

					it = --TCP_data_list.erase(it);
					if( byte_index >= count*data_size){
						//cout << "done" <<endl;
						//cout << "done " << packet_count <<endl;
						goto done;
					}
				}
			}
		}
	}
done:
		//cout << "done"<<endl;
		// for(int i = 0 ; i < to_delete.size();i++){
		// 	data_list.erase(to_delete[i]);
		// }
		// to_delete.clear();

		// for(int i = 0; i < 20 ;i++){
		// 	cout <<"temp" << temp_buffer[i] <<endl;
		// }

		//mu.unlock();
		//pthread_mutex_unlock(&lock);
		union TCP_envelope envlp;
		envlp.field.SRC = RANK;
		envlp.field.DEST = source;
		envlp.field.MSG_SIZE = seq_num;
		
		envlp.field.PKT_TYPE = C_DATA_TRANSMISSION_DONE;
		envlp.field.TAG = 0;
		if(dataType == HUM_MPI_FLOAT)
			envlp.field.DATA_TYPE = FLOAT;
		else if (dataType == HUM_MPI_INT)
			envlp.field.DATA_TYPE = INT;
		
		// find the mac address of the FPGA which contains the rank
		
		// string mac_address;
		// mac_address = find_mac_address(source);
		// string mac_address_hex = mac_str_to_hex(mac_address);
		
		//cout <<"sending to : "<< mac_address_hex <<endl;
		
		tcp_send_packet(source,envlp.buffer,sizeof(envlp.buffer));
		return 1;
}

int TCP_MPI_Recv(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int src,int tag,HUM_MPI_COMM comm){
	cout << "TCP wait for envlp from " <<src<<endl;
	tcp_wait_for_envlp(src,dataType);
	cout << "TCP send clr2snd to " <<src<<endl;
	tcp_send_clr2snd(src,dataType);
	cout << "TCP receive data from " <<src<<endl;
	tcp_receive_data(buff,count,dataType,src);//this function has problem
	cout << "TCP recv done " <<src<<endl;

	// return 1;

}

int TCP_MPI_Send(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm){
	cout << "TCP send envelope to " <<dest<<endl;
	tcp_send_envelope(dest,count,dataType,tag);
	cout << "TCP wait for clr2snd from " <<dest<<endl;
	tcp_wait_for_clr2snd(dest,count,dataType,tag);
	cout << "TCP send data to " <<dest<<endl;
	tcp_send_data(buff,count,dataType,dest,tag);
	cout << "TCP send done " <<dest<<endl;

	// return 1;
}


int TCP_MPI_Finalize(){
 	shutdown(server_fd, SHUT_RDWR);
    	close(server_fd);
	for(int i = 0 ; i < num_receiver_threads; i++)
		receiver_threads[i].join();
	tcp.join();
	//cout << "Finished ..." <<endl;
	exit(0);
}

int ETH_MPI_Finalize(){
	eth.join();
	//cout << "Finished ..." <<endl;
	//pthread_exit(NULL);
	return 0;
}

int HUM_MPI_Finalize(){
	is_receiving = 0;
	ETH_MPI_Finalize();
	TCP_MPI_Finalize();
	cout << "Finished ..." <<endl;
	MPI_Finalize();
}


int HUM_MPI_Send(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm){

	if(rank_info_table[dest].rank_type == SW_RANK){
		MPI_Send(buff,count,dataType,dest,tag,MPI_COMM_WORLD);
	}else if(rank_info_table[dest].rank_type == ETH_RANK){
		ETH_MPI_Send(buff,count,dataType,dest,tag,comm);

	}else if(rank_info_table[dest].rank_type == TCP_RANK){
		TCP_MPI_Send(buff,count,dataType,dest,tag,comm);
	}

}

int HUM_MPI_Recv(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm){

	if(rank_info_table[dest].rank_type == SW_RANK){
		MPI_Recv(buff,count,dataType,dest,tag,MPI_COMM_WORLD,MPI_STATUS_IGNORE);
	}else if(rank_info_table[dest].rank_type == ETH_RANK){
		ETH_MPI_Recv(buff,count,dataType,dest,tag,comm);

	}else if(rank_info_table[dest].rank_type == TCP_RANK){
		TCP_MPI_Recv(buff,count,dataType,dest,tag,comm);
	}

}

