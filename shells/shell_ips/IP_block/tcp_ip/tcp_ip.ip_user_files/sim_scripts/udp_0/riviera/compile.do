vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+/opt/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_rxEngineUdpChecksumVerificatio.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathPortUnreachable_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IPheader_V_las.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathWriteFunction.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathWriteFunction2checks_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_top.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputpathOutData_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_portTable.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_rxChecksum2rxEngine_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2rxChecksum_V_last_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathWriteFunction2checks.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_dat_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_stripIpHeader.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2rxChecksum_V_keep_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_udpMetadata_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_data_V_data_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_data_V_last_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_confirmPortStatus_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IPheader_V_dat.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathInData_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_checksumCalculation2outputPath.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IPheader_V_kee.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_ap_rst_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_dat_2.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathRxEngine.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathOutData_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_portTable2rxEng_assign_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_packetLength_V_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathReadFunction.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_udpChecksumCalculation.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2rxChecksum_V_data_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_addIpHeader.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_portTable_portTable_1.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_ipA.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_openPort_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IP_V_sourceIP_s.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_IP_V_destinati.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathReadFunction2addIpHe.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputPathInMetadata_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_rxEng2portTable_check_req_V_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_outputpathInLength_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_portRelease_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_packetData_V_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathInData_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_strip2inputPath_data_V_keep_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/udp_inputPathOutputMetadata_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/hdl/verilog/FIFO_udp_outputPathRead2addIpHeader_dat.v" \
"../../../../tcp_ip.srcs/sources_1/ip/udp_0/sim/udp_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

