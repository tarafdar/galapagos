`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/26/2018 12:03:03 PM
// Design Name: 
// Module Name: tcp_ip_wrapper_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tcp_ip_wrapper_wrapper
#(
    parameter TCP_ENABLE = 1,
    parameter UDP_ENABLE = 1
)
(
    input                aclk,
    input                aresetn,
    input[47:0]          myMacAddress,
    input[31:0]          myIpAddress,
    input[31:0]          myGateway,
    input[31:0]          mySubnet,
    output[15:0]         regSessionCount,
    output[15:0]         relSessionCount,
    output               AXI_M_Stream_TVALID,
    input                AXI_M_Stream_TREADY,
    output[63:0]         AXI_M_Stream_TDATA,
    output[7:0]          AXI_M_Stream_TKEEP,
    output               AXI_M_Stream_TLAST,
    input                AXI_S_Stream_TVALID,
    output               AXI_S_Stream_TREADY,
    input[63:0]          AXI_S_Stream_TDATA,
    input[7:0]           AXI_S_Stream_TKEEP,
    input                AXI_S_Stream_TLAST,
    output               m_axis_listen_port_status_TVALID,
    input                m_axis_listen_port_status_TREADY,
    output[7:0]          m_axis_listen_port_status_TDATA,
    output               m_axis_notifications_TVALID,
    input                m_axis_notifications_TREADY,
    output[87:0]         m_axis_notifications_TDATA,
    output               m_axis_open_status_TVALID,
    input                m_axis_open_status_TREADY,
    output[23:0]         m_axis_open_status_TDATA,
    output               m_axis_rx_data_TVALID,
    input                m_axis_rx_data_TREADY,
    output[63:0]         m_axis_rx_data_TDATA,
    output[7:0]          m_axis_rx_data_TKEEP,
    output               m_axis_rx_data_TLAST,
    output               m_axis_rx_metadata_TVALID,
    input                m_axis_rx_metadata_TREADY,
    output[15:0]         m_axis_rx_metadata_TDATA,
    output               m_axis_tx_status_TVALID,
    input                m_axis_tx_status_TREADY,
    output[23:0]         m_axis_tx_status_TDATA,
    input                s_axis_listen_port_TVALID,
    output               s_axis_listen_port_TREADY,
    input[15:0]          s_axis_listen_port_TDATA,
    input                s_axis_close_connection_TVALID,
    output               s_axis_close_connection_TREADY,
    input[15:0]          s_axis_close_connection_TDATA,
    input                s_axis_open_connection_TVALID,
    output               s_axis_open_connection_TREADY,
    input[47:0]          s_axis_open_connection_TDATA,
    input                s_axis_read_package_TVALID,
    output               s_axis_read_package_TREADY,
    input[31:0]          s_axis_read_package_TDATA,
    input                s_axis_tx_data_TVALID,
    output               s_axis_tx_data_TREADY,
    input[63:0]          s_axis_tx_data_TDATA,
    input[7:0]           s_axis_tx_data_TKEEP,
    input                s_axis_tx_data_TLAST,
    input                s_axis_tx_metadata_TVALID,
    output               s_axis_tx_metadata_TREADY,
    input[31:0]          s_axis_tx_metadata_TDATA,
    output               udp2appRxDataIn_TVALID,
    input                udp2appRxDataIn_TREADY,
    output [63:0]        udp2appRxDataIn_TDATA,
    output               udp2appRxDataIn_TLAST,
    output [7:0]         udp2appRxDataIn_TKEEP,
    output               udp2appRxMetadataIn_V_TVALID,
    input                udp2appRxMetadataIn_V_TREADY,
    output[95:0]         udp2appRxMetadataIn_V_TDATA,
    input                app2udp_requestPortOpenOut_V_TVALID,
    output               app2udp_requestPortOpenOut_V_TREADY,
    input [15:0]         app2udp_requestPortOpenOut_V_TDATA,
    output               udp2app_portOpenReplyIn_V_V_TVALID,
    input                udp2app_portOpenReplyIn_V_V_TREADY,
    output[7:0]          udp2app_portOpenReplyIn_V_V_TDATA,
    input                app2udp_TVALID,
    output               app2udp_TREADY,
    input[63:0]          app2udp_TDATA,
    input[7:0]           app2udp_TKEEP,
    input                app2udp_TLAST,
    input                app2udpTxMetadataOut_V_TVALID,
    output               app2udpTxMetadataOut_V_TREADY,
    input[95:0]          app2udpTxMetadataOut_V_TDATA,
    input                app2udpTxLengthOut_V_V_TVALID,
    output               app2udpTxLengthOut_V_V_TREADY,
    input[15:0]          app2udpTxLengthOut_V_V_TDATA,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWID" *)
output wire [3 : 0] M00_AXI_AWID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR" *)
output wire [31 : 0] M00_AXI_AWADDR,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN" *)
output wire [7 : 0] M00_AXI_AWLEN,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE" *)
output wire [2 : 0] M00_AXI_AWSIZE,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST" *)
output wire [1 : 0] M00_AXI_AWBURST,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK" *)
output wire M00_AXI_AWLOCK,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE" *)
output wire [3 : 0] M00_AXI_AWCACHE,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT" *)
output wire [2 : 0] M00_AXI_AWPROT,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS" *)
output wire [3 : 0] M00_AXI_AWQOS,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID" *)
output wire M00_AXI_AWVALID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY" *)
input wire M00_AXI_AWREADY,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WDATA" *)
output wire [63 : 0] M00_AXI_WDATA,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB" *)
output wire [7 : 0] M00_AXI_WSTRB,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WLAST" *)
output wire M00_AXI_WLAST,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WVALID" *)
output wire M00_AXI_WVALID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI WREADY" *)
input wire M00_AXI_WREADY,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BID" *)
input wire [3 : 0] M00_AXI_BID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BRESP" *)
input wire [1 : 0] M00_AXI_BRESP,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BVALID" *)
input wire M00_AXI_BVALID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI BREADY" *)
output wire M00_AXI_BREADY,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARID" *)
output wire [3 : 0] M00_AXI_ARID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR" *)
output wire [31 : 0] M00_AXI_ARADDR,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN" *)
output wire [7 : 0] M00_AXI_ARLEN,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE" *)
output wire [2 : 0] M00_AXI_ARSIZE,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST" *)
output wire [1 : 0] M00_AXI_ARBURST,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK" *)
output wire M00_AXI_ARLOCK,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE" *)
output wire [3 : 0] M00_AXI_ARCACHE,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT" *)
output wire [2 : 0] M00_AXI_ARPROT,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS" *)
output wire [3 : 0] M00_AXI_ARQOS,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID" *)
output wire M00_AXI_ARVALID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY" *)
input wire M00_AXI_ARREADY,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RID" *)
input wire [3 : 0] M00_AXI_RID,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RDATA" *)
input wire [63 : 0] M00_AXI_RDATA,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RRESP" *)
input wire [1 : 0] M00_AXI_RRESP,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RLAST" *)
input wire M00_AXI_RLAST,
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RVALID" *)
input wire M00_AXI_RVALID,
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M00_AXI RREADY" *)
output wire M00_AXI_RREADY

);
wire       m_axis_rxread_cmd_TVALID  ;
wire       m_axis_rxread_cmd_TREADY  ;
wire[71:0] m_axis_rxread_cmd_TDATA   ;
wire       m_axis_rxwrite_cmd_TVALID ;
wire       m_axis_rxwrite_cmd_TREADY ;
wire[71:0] m_axis_rxwrite_cmd_TDATA  ;
wire       s_axis_rxwrite_sts_TVALID ;
wire       s_axis_rxwrite_sts_TREADY ;
wire[7:0]  s_axis_rxwrite_sts_TDATA  ;
wire       s_axis_rxread_data_TVALID ;
wire       s_axis_rxread_data_TREADY  ;
wire[63:0] s_axis_rxread_data_TDATA   ;
wire[7:0]  s_axis_rxread_data_TKEEP   ;
wire       s_axis_rxread_data_TLAST   ;
wire       m_axis_rxwrite_data_TVALID ;
wire       m_axis_rxwrite_data_TREADY ;
wire[63:0] m_axis_rxwrite_data_TDATA  ;
wire[7:0]  m_axis_rxwrite_data_TKEEP  ;
wire       m_axis_rxwrite_data_TLAST  ;

wire       m_axis_txread_cmd_TVALID   ;
wire       m_axis_txread_cmd_TREADY   ;
wire[71:0] m_axis_txread_cmd_TDATA    ;
wire       m_axis_txwrite_cmd_TVALID  ;
wire       m_axis_txwrite_cmd_TREADY  ;
wire[71:0] m_axis_txwrite_cmd_TDATA   ;
wire       s_axis_txwrite_sts_TVALID  ;
wire       s_axis_txwrite_sts_TREADY  ;
wire[7:0]  s_axis_txwrite_sts_TDATA   ;
wire       s_axis_txread_data_TVALID  ;
wire       s_axis_txread_data_TREADY  ;
wire[63:0] s_axis_txread_data_TDATA   ;
wire[7:0]  s_axis_txread_data_TKEEP   ;
wire       s_axis_txread_data_TLAST   ;
wire       m_axis_txwrite_data_TVALID ;
wire       m_axis_txwrite_data_TREADY ;
wire[63:0] m_axis_txwrite_data_TDATA  ;
wire[7:0]  m_axis_txwrite_data_TKEEP  ;
wire       m_axis_txwrite_data_TLAST  ;
//tcp_ip_wrapper tcp_ip_wrapper_inst (.*);
network_stack #(.TCP_ENABLE(TCP_ENABLE), .UDP_ENABLE(UDP_ENABLE)) tcp_ip_wrapper_inst (.*);

if(TCP_ENABLE)
begin
wire [31 : 0] S00_AXI_ARADDR;
wire [1 : 0]  S00_AXI_ARBURST;
wire [3 : 0]  S00_AXI_ARCACHE;
wire [0 : 0]  S00_AXI_ARID;
wire [7 : 0]  S00_AXI_ARLEN;
wire          S00_AXI_ARLOCK;
wire [2 : 0]  S00_AXI_ARPROT;
wire [3 : 0]  S00_AXI_ARQOS;
wire          S00_AXI_ARREADY;
wire [2 : 0]  S00_AXI_ARSIZE;
wire          S00_AXI_ARVALID;
wire [31 : 0] S00_AXI_AWADDR;
wire [1 : 0]  S00_AXI_AWBURST;
wire [3 : 0]  S00_AXI_AWCACHE;
wire [0 : 0]  S00_AXI_AWID;
wire [7 : 0]  S00_AXI_AWLEN;
wire          S00_AXI_AWLOCK;
wire [2 : 0]  S00_AXI_AWPROT;
wire [3 : 0]  S00_AXI_AWQOS;
wire          S00_AXI_AWREADY;
wire [2 : 0]  S00_AXI_AWSIZE;
wire          S00_AXI_AWVALID;
wire [0 : 0]  S00_AXI_BID;
wire          S00_AXI_BREADY;
wire [1 : 0]  S00_AXI_BRESP;
wire          S00_AXI_BVALID;
wire [63 : 0] S00_AXI_RDATA;
wire [0 : 0]  S00_AXI_RID;
wire          S00_AXI_RLAST;
wire          S00_AXI_RREADY;
wire [1 : 0]  S00_AXI_RRESP;
wire          S00_AXI_RVALID;
wire [63 : 0] S00_AXI_WDATA;
wire          S00_AXI_WLAST;
wire          S00_AXI_WREADY;
wire [7 : 0]  S00_AXI_WSTRB;
wire          S00_AXI_WVALID;
wire [31 : 0] S01_AXI_ARADDR;
wire [1 : 0]  S01_AXI_ARBURST;
wire [3 : 0]  S01_AXI_ARCACHE;
wire [0 : 0]  S01_AXI_ARID;
wire [7 : 0]  S01_AXI_ARLEN;
wire          S01_AXI_ARLOCK;
wire [2 : 0]  S01_AXI_ARPROT;
wire [3 : 0]  S01_AXI_ARQOS;
wire          S01_AXI_ARREADY;
wire [2 : 0]  S01_AXI_ARSIZE;
wire          S01_AXI_ARVALID;
wire [31 : 0] S01_AXI_AWADDR;
wire [1 : 0]  S01_AXI_AWBURST;
wire [3 : 0]  S01_AXI_AWCACHE;
wire [0 : 0]  S01_AXI_AWID;
wire [7 : 0]  S01_AXI_AWLEN;
wire          S01_AXI_AWLOCK;
wire [2 : 0]  S01_AXI_AWPROT;
wire [3 : 0]  S01_AXI_AWQOS;
wire          S01_AXI_AWREADY;
wire [2 : 0]  S01_AXI_AWSIZE;
wire          S01_AXI_AWVALID;
wire [0 : 0]  S01_AXI_BID;
wire          S01_AXI_BREADY;
wire [1 : 0]  S01_AXI_BRESP;
wire          S01_AXI_BVALID;
wire [63 : 0] S01_AXI_RDATA;
wire [0 : 0]  S01_AXI_RID;
wire          S01_AXI_RLAST;
wire          S01_AXI_RREADY;
wire [1 : 0]  S01_AXI_RRESP;
wire          S01_AXI_RVALID;
wire [63 : 0] S01_AXI_WDATA;
wire          S01_AXI_WLAST;
wire          S01_AXI_WREADY;
wire [7 : 0]  S01_AXI_WSTRB;
wire          S01_AXI_WVALID;

axi_datamover_0 rx_datamover (
  .m_axi_mm2s_aclk            ( aclk            ) , // input wire m_axi_mm2s_aclk
  .m_axi_mm2s_aresetn         ( aresetn         ) , // input wire m_axi_mm2s_aresetn
  .mm2s_err                   () , // output wire mm2s_err
  .m_axis_mm2s_cmdsts_aclk    ( aclk    ) , // input wire m_axis_mm2s_cmdsts_aclk
  .m_axis_mm2s_cmdsts_aresetn ( aresetn ) , // input wire m_axis_mm2s_cmdsts_aresetn
  .s_axis_mm2s_cmd_tvalid     (m_axis_rxread_cmd_TVALID) , // input wire s_axis_mm2s_cmd_tvalid
  .s_axis_mm2s_cmd_tready     (m_axis_rxread_cmd_TREADY) , // output wire s_axis_mm2s_cmd_tready
  .s_axis_mm2s_cmd_tdata      (m_axis_rxread_cmd_TDATA ) , // input wire [71 : 0] s_axis_mm2s_cmd_tdata
  .m_axis_mm2s_sts_tvalid     () , // output wire m_axis_mm2s_sts_tvalid
  .m_axis_mm2s_sts_tready     (1) , // input wire m_axis_mm2s_sts_tready
  .m_axis_mm2s_sts_tdata      () , // output wire [7 : 0] m_axis_mm2s_sts_tdata
  .m_axis_mm2s_sts_tkeep      () , // output wire [0 : 0] m_axis_mm2s_sts_tkeep
  .m_axis_mm2s_sts_tlast      () , // output wire m_axis_mm2s_sts_tlast
  .m_axis_mm2s_tdata          (s_axis_rxread_data_TDATA ) , // output wire [63 : 0] m_axis_mm2s_tdata
  .m_axis_mm2s_tkeep          (s_axis_rxread_data_TKEEP ) , // output wire [7 : 0] m_axis_mm2s_tkeep
  .m_axis_mm2s_tlast          (s_axis_rxread_data_TLAST ) , // output wire m_axis_mm2s_tlast
  .m_axis_mm2s_tvalid         (s_axis_rxread_data_TVALID) , // output wire m_axis_mm2s_tvalid
  .m_axis_mm2s_tready         (s_axis_rxread_data_TREADY) , // input wire m_axis_mm2s_tready
  .m_axi_s2mm_aclk            ( aclk            ) , // input wire m_axi_s2mm_aclk
  .m_axi_s2mm_aresetn         ( aresetn         ) , // input wire m_axi_s2mm_aresetn
  .s2mm_err                   () , // output wire s2mm_err
  .m_axis_s2mm_cmdsts_awclk   ( aclk   ) , // input wire m_axis_s2mm_cmdsts_awclk
  .m_axis_s2mm_cmdsts_aresetn ( aresetn ) , // input wire m_axis_s2mm_cmdsts_aresetn
  .s_axis_s2mm_cmd_tvalid     (m_axis_rxwrite_cmd_TVALID) , // input wire s_axis_s2mm_cmd_tvalid
  .s_axis_s2mm_cmd_tready     (m_axis_rxwrite_cmd_TREADY) , // output wire s_axis_s2mm_cmd_tready
  .s_axis_s2mm_cmd_tdata      (m_axis_rxwrite_cmd_TDATA ) , // input wire [71 : 0] s_axis_s2mm_cmd_tdata
  .m_axis_s2mm_sts_tvalid     (s_axis_rxwrite_sts_TVALID) , // output wire m_axis_s2mm_sts_tvalid
  .m_axis_s2mm_sts_tready     (s_axis_rxwrite_sts_TREADY) , // input wire m_axis_s2mm_sts_tready
  .m_axis_s2mm_sts_tdata      (s_axis_rxwrite_sts_TDATA ) , // output wire [7 : 0] m_axis_s2mm_sts_tdata
  .m_axis_s2mm_sts_tkeep      () , // output wire [0 : 0] m_axis_s2mm_sts_tkeep
  .m_axis_s2mm_sts_tlast      () , // output wire m_axis_s2mm_sts_tlast
  .s_axis_s2mm_tdata          (m_axis_rxwrite_data_TDATA) , // input wire [63 : 0] s_axis_s2mm_tdata
  .s_axis_s2mm_tkeep          (m_axis_rxwrite_data_TKEEP ) , // input wire [7 : 0] s_axis_s2mm_tkeep
  .s_axis_s2mm_tlast          (m_axis_rxwrite_data_TLAST ) , // input wire s_axis_s2mm_tlast
  .s_axis_s2mm_tvalid         (m_axis_rxwrite_data_TVALID) , // input wire s_axis_s2mm_tvalid
  .s_axis_s2mm_tready         (m_axis_rxwrite_data_TREADY) , // output wire s_axis_s2mm_tready
  .m_axi_mm2s_araddr          ( S00_AXI_ARADDR  ) , // output wire [31 : 0] m_axi_mm2s_araddr
  .m_axi_mm2s_arburst         ( S00_AXI_ARBURST ) , // output wire [1 : 0] m_axi_mm2s_arburst
  .m_axi_mm2s_arcache         ( S00_AXI_ARCACHE ) , // output wire [3 : 0] m_axi_mm2s_arcache
  .m_axi_mm2s_arlen           ( S00_AXI_ARLEN   ) , // output wire [7 : 0] m_axi_mm2s_arlen
  .m_axi_mm2s_arprot          ( S00_AXI_ARPROT  ) , // output wire [2 : 0] m_axi_mm2s_arprot
  .m_axi_mm2s_arready         ( S00_AXI_ARREADY ) , // input wire m_axi_mm2s_arready
  .m_axi_mm2s_arsize          ( S00_AXI_ARSIZE  ) , // output wire [2 : 0] m_axi_mm2s_arsize
  .m_axi_mm2s_aruser          ( S00_AXI_ARUSER  ) , // output wire [3 : 0] m_axi_mm2s_aruser
  .m_axi_mm2s_arvalid         ( S00_AXI_ARVALID ) , // output wire m_axi_mm2s_arvalid
  .m_axi_s2mm_awaddr          ( S00_AXI_AWADDR  ) , // output wire [31 : 0] m_axi_s2mm_awaddr
  .m_axi_s2mm_awburst         ( S00_AXI_AWBURST ) , // output wire [1 : 0] m_axi_s2mm_awburst
  .m_axi_s2mm_awcache         ( S00_AXI_AWCACHE ) , // output wire [3 : 0] m_axi_s2mm_awcache
  .m_axi_s2mm_awlen           ( S00_AXI_AWLEN   ) , // output wire [7 : 0] m_axi_s2mm_awlen
  .m_axi_s2mm_awprot          ( S00_AXI_AWPROT  ) , // output wire [2 : 0] m_axi_s2mm_awprot
  .m_axi_s2mm_awready         ( S00_AXI_AWREADY ) , // input wire m_axi_s2mm_awready
  .m_axi_s2mm_awsize          ( S00_AXI_AWSIZE  ) , // output wire [2 : 0] m_axi_s2mm_awsize
  .m_axi_s2mm_awuser          ( S00_AXI_AWUSER  ) , // output wire [3 : 0] m_axi_s2mm_awuser
  .m_axi_s2mm_awvalid         ( S00_AXI_AWVALID ) , // output wire m_axi_s2mm_awvalid
  .m_axi_s2mm_bready          ( S00_AXI_BREADY  ) , // output wire m_axi_s2mm_bready
  .m_axi_s2mm_bresp           ( S00_AXI_BRESP   ) , // input wire [1 : 0] m_axi_s2mm_bresp
  .m_axi_s2mm_bvalid          ( S00_AXI_BVALID  ) , // input wire m_axi_s2mm_bvalid
  .m_axi_mm2s_rdata           ( S00_AXI_RDATA   ) , // input wire [63 : 0] m_axi_mm2s_rdata
  .m_axi_mm2s_rlast           ( S00_AXI_RLAST   ) , // input wire m_axi_mm2s_rlast
  .m_axi_mm2s_rready          ( S00_AXI_RREADY  ) , // output wire m_axi_mm2s_rready
  .m_axi_mm2s_rresp           ( S00_AXI_RRESP   ) , // input wire [1 : 0] m_axi_mm2s_rresp
  .m_axi_mm2s_rvalid          ( S00_AXI_RVALID  ) , // input wire m_axi_mm2s_rvalid
  .m_axi_s2mm_wdata           ( S00_AXI_WDATA   ) , // output wire [63 : 0] m_axi_s2mm_wdata
  .m_axi_s2mm_wlast           ( S00_AXI_WLAST   ) , // output wire m_axi_s2mm_wlast
  .m_axi_s2mm_wready          ( S00_AXI_WREADY  ) , // input wire m_axi_s2mm_wready
  .m_axi_s2mm_wstrb           ( S00_AXI_WSTRB   ) , // output wire [7 : 0] m_axi_s2mm_wstrb
  .m_axi_s2mm_wvalid          ( S00_AXI_WVALID  )   // output wire m_axi_s2mm_wvalid
);

axi_datamover_0 tx_datamover (
  .m_axi_mm2s_aclk            ( aclk            ) , // input wire m_axi_mm2s_aclk
  .m_axi_mm2s_aresetn         ( aresetn         ) , // input wire m_axi_mm2s_aresetn
  .mm2s_err                   () , // output wire mm2s_err
  .m_axis_mm2s_cmdsts_aclk    ( aclk    ) , // input wire m_axis_mm2s_cmdsts_aclk
  .m_axis_mm2s_cmdsts_aresetn ( aresetn ) , // input wire m_axis_mm2s_cmdsts_aresetn
  .s_axis_mm2s_cmd_tvalid     ( m_axis_txread_cmd_TVALID) , // input wire s_axis_mm2s_cmd_tvalid
  .s_axis_mm2s_cmd_tready     ( m_axis_txread_cmd_TREADY) , // output wire s_axis_mm2s_cmd_tready
  .s_axis_mm2s_cmd_tdata      ( m_axis_txread_cmd_TDATA) , // input wire [71 : 0] s_axis_mm2s_cmd_tdata
  .m_axis_mm2s_sts_tvalid     () , // output wire m_axis_mm2s_sts_tvalid
  .m_axis_mm2s_sts_tready     ( 1 ) , // input wire m_axis_mm2s_sts_tready
  .m_axis_mm2s_sts_tdata      () , // output wire [7 : 0] m_axis_mm2s_sts_tdata
  .m_axis_mm2s_sts_tkeep      () , // output wire [0 : 0] m_axis_mm2s_sts_tkeep
  .m_axis_mm2s_sts_tlast      () , // output wire m_axis_mm2s_sts_tlast
  .m_axis_mm2s_tdata          ( s_axis_txread_data_TDATA) , // output wire [63 : 0] m_axis_mm2s_tdata
  .m_axis_mm2s_tkeep          ( s_axis_txread_data_TKEEP) , // output wire [7 : 0] m_axis_mm2s_tkeep
  .m_axis_mm2s_tlast          ( s_axis_txread_data_TLAST) , // output wire m_axis_mm2s_tlast
  .m_axis_mm2s_tvalid         ( s_axis_txread_data_TVALID) , // output wire m_axis_mm2s_tvalid
  .m_axis_mm2s_tready         ( s_axis_txread_data_TREADY) , // input wire m_axis_mm2s_tready
  .m_axi_s2mm_aclk            ( aclk            ) , // input wire m_axi_s2mm_aclk
  .m_axi_s2mm_aresetn         ( aresetn         ) , // input wire m_axi_s2mm_aresetn
  .s2mm_err                   () , // output wire s2mm_err
  .m_axis_s2mm_cmdsts_awclk   ( aclk   ) , // input wire m_axis_s2mm_cmdsts_awclk
  .m_axis_s2mm_cmdsts_aresetn ( aresetn ) , // input wire m_axis_s2mm_cmdsts_aresetn
  .s_axis_s2mm_cmd_tvalid     ( m_axis_txwrite_cmd_TVALID) , // input wire s_axis_s2mm_cmd_tvalid
  .s_axis_s2mm_cmd_tready     ( m_axis_txwrite_cmd_TREADY) , // output wire s_axis_s2mm_cmd_tready
  .s_axis_s2mm_cmd_tdata      ( m_axis_txwrite_cmd_TDATA) , // input wire [71 : 0] s_axis_s2mm_cmd_tdata
  .m_axis_s2mm_sts_tvalid     ( s_axis_txwrite_sts_TVALID) , // output wire m_axis_s2mm_sts_tvalid
  .m_axis_s2mm_sts_tready     ( s_axis_txwrite_sts_TREADY) , // input wire m_axis_s2mm_sts_tready
  .m_axis_s2mm_sts_tdata      ( s_axis_txwrite_sts_TDATA) , // output wire [7 : 0] m_axis_s2mm_sts_tdata
  .m_axis_s2mm_sts_tkeep      ( ) , // output wire [0 : 0] m_axis_s2mm_sts_tkeep
  .m_axis_s2mm_sts_tlast      ( ) , // output wire m_axis_s2mm_sts_tlast
  .s_axis_s2mm_tdata          ( m_axis_txwrite_data_TDATA) , // input wire [63 : 0] s_axis_s2mm_tdata
  .s_axis_s2mm_tkeep          ( m_axis_txwrite_data_TKEEP) , // input wire [7 : 0] s_axis_s2mm_tkeep
  .s_axis_s2mm_tlast          ( m_axis_txwrite_data_TLAST) , // input wire s_axis_s2mm_tlast
  .s_axis_s2mm_tvalid         ( m_axis_txwrite_data_TVALID) , // input wire s_axis_s2mm_tvalid
  .s_axis_s2mm_tready         ( m_axis_txwrite_data_TREADY) , // output wire s_axis_s2mm_tready
  .m_axi_mm2s_araddr          ( S01_AXI_ARADDR  ) , // output wire [31 : 0] m_axi_mm2s_araddr
  .m_axi_mm2s_arburst         ( S01_AXI_ARBURST ) , // output wire [1 : 0] m_axi_mm2s_arburst
  .m_axi_mm2s_arcache         ( S01_AXI_ARCACHE ) , // output wire [3 : 0] m_axi_mm2s_arcache
  .m_axi_mm2s_arlen           ( S01_AXI_ARLEN   ) , // output wire [7 : 0] m_axi_mm2s_arlen
  .m_axi_mm2s_arprot          ( S01_AXI_ARPROT  ) , // output wire [2 : 0] m_axi_mm2s_arprot
  .m_axi_mm2s_arready         ( S01_AXI_ARREADY ) , // input wire m_axi_mm2s_arready
  .m_axi_mm2s_arsize          ( S01_AXI_ARSIZE  ) , // output wire [2 : 0] m_axi_mm2s_arsize
  .m_axi_mm2s_aruser          ( S01_AXI_ARUSER  ) , // output wire [3 : 0] m_axi_mm2s_aruser
  .m_axi_mm2s_arvalid         ( S01_AXI_ARVALID ) , // output wire m_axi_mm2s_arvalid
  .m_axi_s2mm_awaddr          ( S01_AXI_AWADDR  ) , // output wire [31 : 0] m_axi_s2mm_awaddr
  .m_axi_s2mm_awburst         ( S01_AXI_AWBURST ) , // output wire [1 : 0] m_axi_s2mm_awburst
  .m_axi_s2mm_awcache         ( S01_AXI_AWCACHE ) , // output wire [3 : 0] m_axi_s2mm_awcache
  .m_axi_s2mm_awlen           ( S01_AXI_AWLEN   ) , // output wire [7 : 0] m_axi_s2mm_awlen
  .m_axi_s2mm_awprot          ( S01_AXI_AWPROT  ) , // output wire [2 : 0] m_axi_s2mm_awprot
  .m_axi_s2mm_awready         ( S01_AXI_AWREADY ) , // input wire m_axi_s2mm_awready
  .m_axi_s2mm_awsize          ( S01_AXI_AWSIZE  ) , // output wire [2 : 0] m_axi_s2mm_awsize
  .m_axi_s2mm_awuser          ( S01_AXI_AWUSER  ) , // output wire [3 : 0] m_axi_s2mm_awuser
  .m_axi_s2mm_awvalid         ( S01_AXI_AWVALID ) , // output wire m_axi_s2mm_awvalid
  .m_axi_s2mm_bready          ( S01_AXI_BREADY  ) , // output wire m_axi_s2mm_bready
  .m_axi_s2mm_bresp           ( S01_AXI_BRESP   ) , // input wire [1 : 0] m_axi_s2mm_bresp
  .m_axi_s2mm_bvalid          ( S01_AXI_BVALID  ) , // input wire m_axi_s2mm_bvalid
  .m_axi_mm2s_rdata           ( S01_AXI_RDATA   ) , // input wire [63 : 0] m_axi_mm2s_rdata
  .m_axi_mm2s_rlast           ( S01_AXI_RLAST   ) , // input wire m_axi_mm2s_rlast
  .m_axi_mm2s_rready          ( S01_AXI_RREADY  ) , // output wire m_axi_mm2s_rready
  .m_axi_mm2s_rresp           ( S01_AXI_RRESP   ) , // input wire [1 : 0] m_axi_mm2s_rresp
  .m_axi_mm2s_rvalid          ( S01_AXI_RVALID  ) , // input wire m_axi_mm2s_rvalid
  .m_axi_s2mm_wdata           ( S01_AXI_WDATA   ) , // output wire [63 : 0] m_axi_s2mm_wdata
  .m_axi_s2mm_wlast           ( S01_AXI_WLAST   ) , // output wire m_axi_s2mm_wlast
  .m_axi_s2mm_wready          ( S01_AXI_WREADY  ) , // input wire m_axi_s2mm_wready
  .m_axi_s2mm_wstrb           ( S01_AXI_WSTRB   ) , // output wire [7 : 0] m_axi_s2mm_wstrb
  .m_axi_s2mm_wvalid          ( S01_AXI_WVALID  )   // output wire m_axi_s2mm_wvalid
);

axi_interconnect_0 axi_interconnect_0_inst (
    .*,
    .INTERCONNECT_ACLK    ( aclk    ) , // input wire INTERCONNECT_ACLK
    .INTERCONNECT_ARESETN ( aresetn ) , // input wire INTERCONNECT_ARESETN
    .S00_AXI_ACLK         ( aclk    ) , // input wire S00_AXI_ACLK
    .S00_AXI_ARESET_OUT_N ( ) , // output wire S00_AXI_ARESET_OUT_N
    .S01_AXI_ACLK         ( aclk    ) ,
    .S01_AXI_ARESET_OUT_N ( ) , // output wire S01_AXI_ARESET_OUT_N
    .M00_AXI_ACLK         ( aclk    ) ,
    .M00_AXI_ARESET_OUT_N ( ) 
);

end
else
begin
assign  M00_AXI_AWID    = 0;
assign  M00_AXI_AWADDR  = 0;
assign  M00_AXI_AWLEN   = 0;
assign  M00_AXI_AWSIZE  = 0;
assign  M00_AXI_AWBURST = 0;
assign  M00_AXI_AWLOCK  = 0;
assign  M00_AXI_AWCACHE = 0;
assign  M00_AXI_AWPROT  = 0;
assign  M00_AXI_AWQOS   = 0;
assign  M00_AXI_AWVALID = 0;
assign  M00_AXI_WDATA   = 0;
assign  M00_AXI_WSTRB   = 0;
assign  M00_AXI_WLAST   = 0;
assign  M00_AXI_WVALID  = 0;
assign  M00_AXI_BREADY  = 0;
assign  M00_AXI_ARID    = 0;
assign  M00_AXI_ARADDR  = 0;
assign  M00_AXI_ARLEN   = 0;
assign  M00_AXI_ARSIZE  = 0;
assign  M00_AXI_ARBURST = 0;
assign  M00_AXI_ARLOCK  = 0;
assign  M00_AXI_ARCACHE = 0;
assign  M00_AXI_ARPROT  = 0;
assign  M00_AXI_ARQOS   = 0;
assign  M00_AXI_ARVALID = 0;
assign  M00_AXI_RREADY  = 0;

assign m_axis_rxread_cmd_TREADY   = 1;
assign m_axis_rxwrite_cmd_TREADY  = 1;
assign s_axis_rxwrite_sts_TVALID  = 0;
assign s_axis_rxwrite_sts_TDATA   = 0;
assign s_axis_rxread_data_TVALID  = 0;
assign s_axis_rxread_data_TDATA   = 0;
assign s_axis_rxread_data_TKEEP   = 0;
assign s_axis_rxread_data_TLAST   = 0;
assign m_axis_rxwrite_data_TREADY = 1;

assign m_axis_txread_cmd_TREADY   = 1;
assign m_axis_txwrite_cmd_TREADY  = 1;
assign s_axis_txwrite_sts_TVALID  = 0;
assign s_axis_txwrite_sts_TDATA   = 0;
assign s_axis_txread_data_TVALID  = 0;
assign s_axis_txread_data_TDATA   = 0;
assign s_axis_txread_data_TKEEP   = 0;
assign s_axis_txread_data_TLAST   = 0;
assign m_axis_txwrite_data_TREADY = 1;
end

endmodule
