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
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_m_axis_arp_lookup_request_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_extract_ip_address.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_handle_arp_reply.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_s_axis_ip_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/FIFO_mac_ip_encode_checksumFifo_V_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_ap_rst_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_s_axis_arp_lookup_reply_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/FIFO_mac_ip_encode_dataStreamBuffer1_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/FIFO_mac_ip_encode_dataStreamBuffer2_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_m_axis_ip_if.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_compute_ip_checksum.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/FIFO_mac_ip_encode_dataStreamBuffer0_V.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_top.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/hdl/verilog/mac_ip_encode_ip_checksum_insert.v" \
"../../../../tcp_ip.srcs/sources_1/ip/mac_ip_encode_ip/sim/mac_ip_encode_ip.v" \

vlog -work xil_defaultlib \
"glbl.v"

