-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/FIFO_arp_server_arpTableInsertFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_arp_pkg_sender.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_arpDataIn_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_arp_table.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_arp_pkg_receiver.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_macIpEncode_req_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_arpDataOut_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_ap_rst_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/FIFO_arp_server_arpReplyMetaFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_macUpdate_resp_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_macUpdate_req_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_macLookup_req_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_macLookup_resp_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_top.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/arp_server_macIpEncode_rsp_if.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/hdl/verilog/FIFO_arp_server_arpRequestMetaFifo_V_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/arp_server_ip/sim/arp_server_ip.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

