#include "galapagos.h"

typedef struct galapagos_packet_eth{
    galapagos_packet <unsigned char [TCP_DATA_BUFFER_SIZE]> gp;
}galapagos_packet_eth;


int eth_init(){
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

void eth_receiver_func() {


   	unsigned char buffer[ETH_FRAME_LEN];
	union ETH_envelope envlp;

	int numbytes;

   	while(is_receiving){
		numbytes = eth_recv_packet(ETHERNET_INTERFACE_NAME,ETH_PROTO,buffer,ETH_FRAME_LEN);
   		if(numbytes != -1){
   			std::lock_guard<std::mutex> guard(gp_mutex);
            galapagos_packet gp;
            gp.proto = ETH_RANK;
            gp.buffer = buffer;
            gp_buff.push_back(gp);
        }

   	}
}

