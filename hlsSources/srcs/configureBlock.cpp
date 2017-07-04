#include "ap_cint.h"
#include "ap_int.h"
#include "hls_stream.h"

#define CONTROL_ADDR_OFFSET  0x114000
#define CONTROL_ADDR_OFFSET_SOURCE  0x114010
#define CONTROL_ADDR_OFFSET_DEST  0x114018
struct ap_axis{
	ap_int <48> data;
	ap_uint<8> dest;
};


void configureBlock(
		ap_uint <32> *  numPacketFormatters,
		ap_int <32> * bram_ctrl_addr,
		ap_uint <48>  * sourceMAC_out,
		hls::stream <ap_axis> destMAC_out,
		//ap_uint <32> * start_test,
		ap_uint <1> * start_out
		){



	ap_uint <48> sourceMAC;
	ap_uint <48> destMAC;
	ap_uint <32> readReg[1];
	ap_uint <32> readReg2[1];
	ap_uint <16> temp;
	ap_uint <32> start[1];
	ap_axis destWord;

	//*start_out = 0;
	//start[0] = 0;
	//*start_test = start[0];
	//while(start[0] == 0){
	//	memcpy(start,  bram_ctrl_addr + (CONTROL_ADDR_OFFSET)/4, sizeof(int));
	//	*start_test = start[0];
	//}
	//*start_test = 0;
	memcpy(readReg, bram_ctrl_addr + (CONTROL_ADDR_OFFSET_SOURCE)/4, sizeof(int));
	memcpy(readReg2, bram_ctrl_addr + (CONTROL_ADDR_OFFSET_SOURCE + 0x4)/4, sizeof(int));
	temp = readReg2[0].range(15,0);
	sourceMAC = readReg[0].concat(temp);
	*sourceMAC_out = sourceMAC;


	for(int i=0; i<((*numPacketFormatters)<<1); i+=2){
		memcpy(readReg, bram_ctrl_addr + (CONTROL_ADDR_OFFSET_DEST +(i<<2))/4, sizeof(int));
		memcpy(readReg2, bram_ctrl_addr + (CONTROL_ADDR_OFFSET_DEST +0x4 + (i<<2))/4, sizeof(int));
		temp = readReg2[0].range(15,0);
		destMAC = readReg[0].concat(temp);
		destWord.data = destMAC;
		destWord.dest = i>>1;
		destMAC_out.write(destWord);

	}
	*start_out = 1;


}
