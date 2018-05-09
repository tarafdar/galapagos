-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Thu May  3 12:03:20 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/thesis/thesis0/pc/Graham/galapagos/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_axi_10g_ethernet_0_0/shell_axi_10g_ethernet_0_0_stub.vhdl
-- Design      : shell_axi_10g_ethernet_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shell_axi_10g_ethernet_0_0 is
  Port ( 
    tx_axis_aresetn : in STD_LOGIC;
    rx_axis_aresetn : in STD_LOGIC;
    tx_ifg_delay : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dclk : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    tx_fault : in STD_LOGIC;
    tx_disable : out STD_LOGIC;
    pcspma_status : out STD_LOGIC_VECTOR ( 7 downto 0 );
    sim_speedup_control : in STD_LOGIC;
    rxrecclk_out : out STD_LOGIC;
    mac_tx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_rx_configuration_vector : in STD_LOGIC_VECTOR ( 79 downto 0 );
    mac_status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    pcs_pma_configuration_vector : in STD_LOGIC_VECTOR ( 535 downto 0 );
    pcs_pma_status_vector : out STD_LOGIC_VECTOR ( 447 downto 0 );
    areset_datapathclk_out : out STD_LOGIC;
    txusrclk_out : out STD_LOGIC;
    txusrclk2_out : out STD_LOGIC;
    gttxreset_out : out STD_LOGIC;
    gtrxreset_out : out STD_LOGIC;
    txuserrdy_out : out STD_LOGIC;
    coreclk_out : out STD_LOGIC;
    resetdone_out : out STD_LOGIC;
    reset_counter_done_out : out STD_LOGIC;
    qpll0lock_out : out STD_LOGIC;
    qpll0outclk_out : out STD_LOGIC;
    qpll0outrefclk_out : out STD_LOGIC;
    areset_coreclk_out : out STD_LOGIC;
    refclk_p : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    reset : in STD_LOGIC;
    s_axis_tx_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tx_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tx_tlast : in STD_LOGIC;
    s_axis_tx_tready : out STD_LOGIC;
    s_axis_tx_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tx_tvalid : in STD_LOGIC;
    s_axis_pause_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_pause_tvalid : in STD_LOGIC;
    m_axis_rx_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_rx_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_rx_tlast : out STD_LOGIC;
    m_axis_rx_tuser : out STD_LOGIC;
    m_axis_rx_tvalid : out STD_LOGIC;
    tx_statistics_valid : out STD_LOGIC;
    tx_statistics_vector : out STD_LOGIC_VECTOR ( 25 downto 0 );
    rx_statistics_valid : out STD_LOGIC;
    rx_statistics_vector : out STD_LOGIC_VECTOR ( 29 downto 0 )
  );

end shell_axi_10g_ethernet_0_0;

architecture stub of shell_axi_10g_ethernet_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tx_axis_aresetn,rx_axis_aresetn,tx_ifg_delay[7:0],dclk,txp,txn,rxp,rxn,signal_detect,tx_fault,tx_disable,pcspma_status[7:0],sim_speedup_control,rxrecclk_out,mac_tx_configuration_vector[79:0],mac_rx_configuration_vector[79:0],mac_status_vector[2:0],pcs_pma_configuration_vector[535:0],pcs_pma_status_vector[447:0],areset_datapathclk_out,txusrclk_out,txusrclk2_out,gttxreset_out,gtrxreset_out,txuserrdy_out,coreclk_out,resetdone_out,reset_counter_done_out,qpll0lock_out,qpll0outclk_out,qpll0outrefclk_out,areset_coreclk_out,refclk_p,refclk_n,reset,s_axis_tx_tdata[63:0],s_axis_tx_tkeep[7:0],s_axis_tx_tlast,s_axis_tx_tready,s_axis_tx_tuser[0:0],s_axis_tx_tvalid,s_axis_pause_tdata[15:0],s_axis_pause_tvalid,m_axis_rx_tdata[63:0],m_axis_rx_tkeep[7:0],m_axis_rx_tlast,m_axis_rx_tuser,m_axis_rx_tvalid,tx_statistics_valid,tx_statistics_vector[25:0],rx_statistics_valid,rx_statistics_vector[29:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_01e2,Vivado 2018.1";
begin
end;
