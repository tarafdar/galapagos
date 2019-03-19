#ifndef __GALAPAGOS_H__   // if x.h hasn't been included yet...
#define __GALAPAGOS_H__

#include <errno.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/socket.h>    /* Must precede if*.h */
#include <linux/if.h>
#include <linux/if_ether.h>
#include <linux/if_packet.h>
#include <sys/ioctl.h>
#include <arpa/inet.h>
#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <vector>
#include <unistd.h>
#include <netinet/ether.h>
#include <iostream>
#include <cstdlib>
#include <pthread.h>
#include <list>
#include <thread>
#include <chrono>         // std::chrono::seconds
#include <mutex>
#include <time.h>
#include <stdio.h>
#include <sys/socket.h>
#include <stdlib.h>
#include <netinet/in.h>
#include <string.h>
#include <iomanip>


#define on_error(...) { fprintf(stderr, __VA_ARGS__); fflush(stderr); exit(1); }
#define PORT 7

#include "tinyxml_lib/tinyxml.h"

using namespace std;



//FIXME DEFINE IN MAKEFILE
#define ETHERNET_INTERFACE_NAME "eth3"



#define ETH_PROTO 0x7400
#define BUFFER_SIZE 1024
#define HEADER_OFFSET 14

#define TCP_ENVELOPE_SIZE 8
#define ETH_ENVELOPE_SIZE 10

#define TCP_ETH_DATA_FRAM_SIZE 1460
#define ETH_ETH_DATA_FRAM_SIZE 1496

#define TIMEOUT 100

#define TCP_DATA_BUFFER_SIZE (20*65*1024)

#define INT 0
#define FLOAT 1

#define MAX_NUM_TC_SESSIONS 256


enum HUM_MPI_DATA_TYPE{HUM_MPI_INT = 3,HUM_MPI_FLOAT=4,HUM_MPI_SHORT=2,HUM_MPI_CHAR=1};

enum HUM_MPI_COMM{HUM_MPI_COMM_WORLD = 0};

extern int RANK;



struct galapagos_packet_eth{
    unsigned short DEST;
    unsigned char buffer[ETH_FRAME_LEN];
};

struct galapagos_packet_tcp{
    unsigned short DEST;
    unsigned char buffer[TCP_DATA_BUFFER_SIZE];
};




#define SW_RANK 0
#define ETH_RANK 1
#define TCP_RANK 2
struct rank_info
{
	short rank_type;
	string mac_address;
	string ip_address;
};



string str_to_hex(string mac_address_str);

int ETH_MPI_Init();
void eth_receiver_func();
int eth_recv_packet(char* iface, unsigned short proto, unsigned char * buffer, int buffer_size);
int eth_recv_packet(char* iface, unsigned short proto, unsigned char * buffer, int buffer_size);
bool check_packet_for_me(string mac_address, struct ether_header * eh);
int eth_send_packet(char* iface, unsigned short proto,const char* dest,
	const unsigned char * data , int data_size);
int eth_send_envelope(unsigned int dest, unsigned int count,HUM_MPI_DATA_TYPE dataType,int tag);
int eth_wait_for_clr2snd(unsigned int dest, unsigned int count,HUM_MPI_DATA_TYPE dataType,int tag);
int eth_send_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int dest,int tag);
int eth_wait_for_envlp(int source, HUM_MPI_DATA_TYPE dataType);
int eth_send_clr2snd(int dest, HUM_MPI_DATA_TYPE dataType);
int eth_receive_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int source);
int ETH_MPI_Recv(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int src,int tag,HUM_MPI_COMM comm);
int ETH_MPI_Send(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm);
int ETH_MPI_Finalize();



int TCP_MPI_Init();
void tcp_receiver(int socket);
void tcp_receiver_func();
int tcp_send_packet(int dest, const unsigned char * data , int data_size);
int tcp_send_envelope(unsigned int dest, unsigned int count, HUM_MPI_DATA_TYPE dataType,int tag);
int tcp_wait_for_clr2snd(unsigned int dest, unsigned int count,HUM_MPI_DATA_TYPE dataType,int tag);
int tcp_send_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int dest,int tag);
int tcp_wait_for_envlp(int source, HUM_MPI_DATA_TYPE dataType);
int tcp_send_clr2snd(int dest, HUM_MPI_DATA_TYPE dataType);
int tcp_receive_data(void * buff,unsigned count, HUM_MPI_DATA_TYPE dataType,unsigned int source);
int TCP_MPI_Recv(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int src,int tag,HUM_MPI_COMM comm);
int TCP_MPI_Send(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm);
int TCP_MPI_Finalize();



int HUM_MPI_Init(int *argc, char ***argv );
int HUM_MPI_Finalize();
int HUM_MPI_Send(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int dest,int tag,HUM_MPI_COMM comm);
int HUM_MPI_Recv(void * buff,unsigned int count,HUM_MPI_DATA_TYPE dataType,
	unsigned int source,int tag,HUM_MPI_COMM comm);



#endif
