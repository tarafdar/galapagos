-makelib ies_lib/xil_defaultlib -sv \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "/opt/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/FIFO_ip_handler_ipDataCheckFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler_detect_ip_protocol.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/FIFO_ip_handler_ipValidFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler_detect_mac_protocol.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler_check_ip_checksum.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/FIFO_ip_handler_iph_subSumsFifoOut_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/FIFO_ip_handler_ipDataDropFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/FIFO_ip_handler_ipDataFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler_ip_invalid_dropper.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler_iph_check_ip_checksum.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/ip_handler_cut_length.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/hdl/verilog/FIFO_ip_handler_ipDataCutFifo_V.v" \
  "../../../../tcp_ip.srcs/sources_1/ip/ip_handler_ip/sim/ip_handler_ip.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

