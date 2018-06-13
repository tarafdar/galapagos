-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Jun 12 20:04:26 2018
-- Host        : agent-2 running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top TCP_bridge_TCP_output_bridge_0_0 -prefix
--               TCP_bridge_TCP_output_bridge_0_0_ TCP_bridge_TCP_output_bridge_0_0_stub.vhdl
-- Design      : TCP_bridge_TCP_output_bridge_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TCP_bridge_TCP_output_bridge_0_0 is
  Port ( 
    ip_table_V_Clk_A : out STD_LOGIC;
    ip_table_V_Rst_A : out STD_LOGIC;
    ip_table_V_EN_A : out STD_LOGIC;
    ip_table_V_WEN_A : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_table_V_Addr_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_Dout_A : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_Din_A : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_Clk_B : out STD_LOGIC;
    ip_table_V_Rst_B : out STD_LOGIC;
    ip_table_V_EN_B : out STD_LOGIC;
    ip_table_V_WEN_B : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_table_V_Addr_B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_Dout_B : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_Din_B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_listen_port_TVALID : out STD_LOGIC;
    m_axis_listen_port_TREADY : in STD_LOGIC;
    m_axis_listen_port_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axis_open_connection_TVALID : out STD_LOGIC;
    m_axis_open_connection_TREADY : in STD_LOGIC;
    m_axis_open_connection_TDATA : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axis_read_package_TVALID : out STD_LOGIC;
    m_axis_read_package_TREADY : in STD_LOGIC;
    m_axis_read_package_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tx_data_TVALID : out STD_LOGIC;
    m_axis_tx_data_TREADY : in STD_LOGIC;
    m_axis_tx_data_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tx_data_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_tx_data_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tx_metadata_TVALID : out STD_LOGIC;
    m_axis_tx_metadata_TREADY : in STD_LOGIC;
    m_axis_tx_metadata_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_listen_port_status_TVALID : in STD_LOGIC;
    s_axis_listen_port_status_TREADY : out STD_LOGIC;
    s_axis_listen_port_status_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_notifications_TVALID : in STD_LOGIC;
    s_axis_notifications_TREADY : out STD_LOGIC;
    s_axis_notifications_TDATA : in STD_LOGIC_VECTOR ( 87 downto 0 );
    s_axis_open_status_TVALID : in STD_LOGIC;
    s_axis_open_status_TREADY : out STD_LOGIC;
    s_axis_open_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_rx_data_TVALID : in STD_LOGIC;
    s_axis_rx_data_TREADY : out STD_LOGIC;
    s_axis_rx_data_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_rx_data_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_rx_data_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_rx_metadata_TVALID : in STD_LOGIC;
    s_axis_rx_metadata_TREADY : out STD_LOGIC;
    s_axis_rx_metadata_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_tx_status_TVALID : in STD_LOGIC;
    s_axis_tx_status_TREADY : out STD_LOGIC;
    s_axis_tx_status_TDATA : in STD_LOGIC_VECTOR ( 23 downto 0 );
    stream_in_V_TVALID : in STD_LOGIC;
    stream_in_V_TREADY : out STD_LOGIC;
    stream_in_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_in_V_TDEST : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stream_in_V_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_V_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_V_TVALID : out STD_LOGIC;
    stream_out_V_TREADY : in STD_LOGIC;
    stream_out_V_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_V_TDEST : out STD_LOGIC_VECTOR ( 15 downto 0 );
    stream_out_V_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_V_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC
  );

end TCP_bridge_TCP_output_bridge_0_0;

architecture stub of TCP_bridge_TCP_output_bridge_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ip_table_V_Clk_A,ip_table_V_Rst_A,ip_table_V_EN_A,ip_table_V_WEN_A[3:0],ip_table_V_Addr_A[31:0],ip_table_V_Dout_A[31:0],ip_table_V_Din_A[31:0],ip_table_V_Clk_B,ip_table_V_Rst_B,ip_table_V_EN_B,ip_table_V_WEN_B[3:0],ip_table_V_Addr_B[31:0],ip_table_V_Dout_B[31:0],ip_table_V_Din_B[31:0],m_axis_listen_port_TVALID,m_axis_listen_port_TREADY,m_axis_listen_port_TDATA[15:0],m_axis_open_connection_TVALID,m_axis_open_connection_TREADY,m_axis_open_connection_TDATA[47:0],m_axis_read_package_TVALID,m_axis_read_package_TREADY,m_axis_read_package_TDATA[31:0],m_axis_tx_data_TVALID,m_axis_tx_data_TREADY,m_axis_tx_data_TDATA[63:0],m_axis_tx_data_TKEEP[7:0],m_axis_tx_data_TLAST[0:0],m_axis_tx_metadata_TVALID,m_axis_tx_metadata_TREADY,m_axis_tx_metadata_TDATA[31:0],s_axis_listen_port_status_TVALID,s_axis_listen_port_status_TREADY,s_axis_listen_port_status_TDATA[7:0],s_axis_notifications_TVALID,s_axis_notifications_TREADY,s_axis_notifications_TDATA[87:0],s_axis_open_status_TVALID,s_axis_open_status_TREADY,s_axis_open_status_TDATA[23:0],s_axis_rx_data_TVALID,s_axis_rx_data_TREADY,s_axis_rx_data_TDATA[63:0],s_axis_rx_data_TKEEP[7:0],s_axis_rx_data_TLAST[0:0],s_axis_rx_metadata_TVALID,s_axis_rx_metadata_TREADY,s_axis_rx_metadata_TDATA[15:0],s_axis_tx_status_TVALID,s_axis_tx_status_TREADY,s_axis_tx_status_TDATA[23:0],stream_in_V_TVALID,stream_in_V_TREADY,stream_in_V_TDATA[63:0],stream_in_V_TDEST[15:0],stream_in_V_TLAST[0:0],stream_in_V_TKEEP[7:0],stream_out_V_TVALID,stream_out_V_TREADY,stream_out_V_TDATA[63:0],stream_out_V_TDEST[15:0],stream_out_V_TLAST[0:0],stream_out_V_TKEEP[7:0],aclk,aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "tcp_output_bridge_top,Vivado 2018.1";
begin
end;
