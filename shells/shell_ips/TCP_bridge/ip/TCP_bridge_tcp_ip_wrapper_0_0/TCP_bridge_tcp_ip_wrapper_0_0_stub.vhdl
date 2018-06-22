-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed Jun  6 16:40:28 2018
-- Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top TCP_bridge_tcp_ip_wrapper_0_0 -prefix
--               TCP_bridge_tcp_ip_wrapper_0_0_ TCP_bridge_tcp_ip_wrapper_0_0_stub.vhdl
-- Design      : TCP_bridge_tcp_ip_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TCP_bridge_tcp_ip_wrapper_0_0 is
  Port ( 
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    myMacAddress : in STD_LOGIC_VECTOR ( 47 downto 0 );
    myIpAddress : in STD_LOGIC_VECTOR ( 31 downto 0 );
    myGateway : in STD_LOGIC_VECTOR ( 31 downto 0 );
    mySubnet : in STD_LOGIC_VECTOR ( 31 downto 0 );
    regSessionCount : out STD_LOGIC_VECTOR ( 15 downto 0 );
    relSessionCount : out STD_LOGIC_VECTOR ( 15 downto 0 );
    AXI_M_Stream_TVALID : out STD_LOGIC;
    AXI_M_Stream_TREADY : in STD_LOGIC;
    AXI_M_Stream_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    AXI_M_Stream_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_M_Stream_TLAST : out STD_LOGIC;
    AXI_S_Stream_TVALID : in STD_LOGIC;
    AXI_S_Stream_TREADY : out STD_LOGIC;
    AXI_S_Stream_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    AXI_S_Stream_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AXI_S_Stream_TLAST : in STD_LOGIC;
    m_axis_listen_port_status_TVALID : out STD_LOGIC;
    m_axis_listen_port_status_TREADY : in STD_LOGIC;
    m_axis_listen_port_status_TDATA : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_notifications_TVALID : out STD_LOGIC;
    m_axis_notifications_TREADY : in STD_LOGIC;
    m_axis_notifications_TDATA : out STD_LOGIC_VECTOR ( 87 downto 0 );
    m_axis_open_status_TVALID : out STD_LOGIC;
    m_axis_open_status_TREADY : in STD_LOGIC;
    m_axis_open_status_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_rx_data_TVALID : out STD_LOGIC;
    m_axis_rx_data_TREADY : in STD_LOGIC;
    m_axis_rx_data_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_data_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_data_TLAST : out STD_LOGIC;
    m_axis_rx_metadata_TVALID : out STD_LOGIC;
    m_axis_rx_metadata_TREADY : in STD_LOGIC;
    m_axis_rx_metadata_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_tx_status_TVALID : out STD_LOGIC;
    m_axis_tx_status_TREADY : in STD_LOGIC;
    m_axis_tx_status_TDATA : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_listen_port_TVALID : in STD_LOGIC;
    s_axis_listen_port_TREADY : out STD_LOGIC;
    s_axis_listen_port_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_close_connection_TVALID : in STD_LOGIC;
    s_axis_close_connection_TREADY : out STD_LOGIC;
    s_axis_close_connection_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_open_connection_TVALID : in STD_LOGIC;
    s_axis_open_connection_TREADY : out STD_LOGIC;
    s_axis_open_connection_TDATA : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axis_read_package_TVALID : in STD_LOGIC;
    s_axis_read_package_TREADY : out STD_LOGIC;
    s_axis_read_package_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tx_data_TVALID : in STD_LOGIC;
    s_axis_tx_data_TREADY : out STD_LOGIC;
    s_axis_tx_data_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_data_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_data_TLAST : in STD_LOGIC;
    s_axis_tx_metadata_TVALID : in STD_LOGIC;
    s_axis_tx_metadata_TREADY : out STD_LOGIC;
    s_axis_tx_metadata_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_AWID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_AWLOCK : out STD_LOGIC;
    M00_AXI_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_AWVALID : out STD_LOGIC;
    M00_AXI_AWREADY : in STD_LOGIC;
    M00_AXI_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_WLAST : out STD_LOGIC;
    M00_AXI_WVALID : out STD_LOGIC;
    M00_AXI_WREADY : in STD_LOGIC;
    M00_AXI_BID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_BVALID : in STD_LOGIC;
    M00_AXI_BREADY : out STD_LOGIC;
    M00_AXI_ARID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M00_AXI_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M00_AXI_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_ARLOCK : out STD_LOGIC;
    M00_AXI_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M00_AXI_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_ARVALID : out STD_LOGIC;
    M00_AXI_ARREADY : in STD_LOGIC;
    M00_AXI_RID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    M00_AXI_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M00_AXI_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M00_AXI_RLAST : in STD_LOGIC;
    M00_AXI_RVALID : in STD_LOGIC;
    M00_AXI_RREADY : out STD_LOGIC
  );

end TCP_bridge_tcp_ip_wrapper_0_0;

architecture stub of TCP_bridge_tcp_ip_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,aresetn,myMacAddress[47:0],myIpAddress[31:0],myGateway[31:0],mySubnet[31:0],regSessionCount[15:0],relSessionCount[15:0],AXI_M_Stream_TVALID,AXI_M_Stream_TREADY,AXI_M_Stream_TDATA[63:0],AXI_M_Stream_TKEEP[7:0],AXI_M_Stream_TLAST,AXI_S_Stream_TVALID,AXI_S_Stream_TREADY,AXI_S_Stream_TDATA[63:0],AXI_S_Stream_TKEEP[7:0],AXI_S_Stream_TLAST,m_axis_listen_port_status_TVALID,m_axis_listen_port_status_TREADY,m_axis_listen_port_status_TDATA[7:0],m_axis_notifications_TVALID,m_axis_notifications_TREADY,m_axis_notifications_TDATA[87:0],m_axis_open_status_TVALID,m_axis_open_status_TREADY,m_axis_open_status_TDATA[23:0],m_axis_rx_data_TVALID,m_axis_rx_data_TREADY,m_axis_rx_data_TDATA[63:0],m_axis_rx_data_TKEEP[7:0],m_axis_rx_data_TLAST,m_axis_rx_metadata_TVALID,m_axis_rx_metadata_TREADY,m_axis_rx_metadata_TDATA[15:0],m_axis_tx_status_TVALID,m_axis_tx_status_TREADY,m_axis_tx_status_TDATA[23:0],s_axis_listen_port_TVALID,s_axis_listen_port_TREADY,s_axis_listen_port_TDATA[15:0],s_axis_close_connection_TVALID,s_axis_close_connection_TREADY,s_axis_close_connection_TDATA[15:0],s_axis_open_connection_TVALID,s_axis_open_connection_TREADY,s_axis_open_connection_TDATA[47:0],s_axis_read_package_TVALID,s_axis_read_package_TREADY,s_axis_read_package_TDATA[31:0],s_axis_tx_data_TVALID,s_axis_tx_data_TREADY,s_axis_tx_data_TDATA[63:0],s_axis_tx_data_TKEEP[7:0],s_axis_tx_data_TLAST,s_axis_tx_metadata_TVALID,s_axis_tx_metadata_TREADY,s_axis_tx_metadata_TDATA[31:0],M00_AXI_AWID[3:0],M00_AXI_AWADDR[31:0],M00_AXI_AWLEN[7:0],M00_AXI_AWSIZE[2:0],M00_AXI_AWBURST[1:0],M00_AXI_AWLOCK,M00_AXI_AWCACHE[3:0],M00_AXI_AWPROT[2:0],M00_AXI_AWQOS[3:0],M00_AXI_AWVALID,M00_AXI_AWREADY,M00_AXI_WDATA[63:0],M00_AXI_WSTRB[7:0],M00_AXI_WLAST,M00_AXI_WVALID,M00_AXI_WREADY,M00_AXI_BID[3:0],M00_AXI_BRESP[1:0],M00_AXI_BVALID,M00_AXI_BREADY,M00_AXI_ARID[3:0],M00_AXI_ARADDR[31:0],M00_AXI_ARLEN[7:0],M00_AXI_ARSIZE[2:0],M00_AXI_ARBURST[1:0],M00_AXI_ARLOCK,M00_AXI_ARCACHE[3:0],M00_AXI_ARPROT[2:0],M00_AXI_ARQOS[3:0],M00_AXI_ARVALID,M00_AXI_ARREADY,M00_AXI_RID[3:0],M00_AXI_RDATA[63:0],M00_AXI_RRESP[1:0],M00_AXI_RLAST,M00_AXI_RVALID,M00_AXI_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tcp_ip_wrapper_wrapper,Vivado 2018.1";
begin
end;
