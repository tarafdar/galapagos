-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue Jun 12 17:49:46 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_TCP_bridge_inst_0_stub.vhdl
-- Design      : pr_TCP_bridge_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    DDR_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR_arlock : out STD_LOGIC;
    DDR_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_arready : in STD_LOGIC;
    DDR_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_arvalid : out STD_LOGIC;
    DDR_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR_awlock : out STD_LOGIC;
    DDR_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_awready : in STD_LOGIC;
    DDR_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_awvalid : out STD_LOGIC;
    DDR_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_bready : out STD_LOGIC;
    DDR_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_bvalid : in STD_LOGIC;
    DDR_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_rlast : in STD_LOGIC;
    DDR_rready : out STD_LOGIC;
    DDR_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    DDR_rvalid : in STD_LOGIC;
    DDR_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    DDR_wlast : out STD_LOGIC;
    DDR_wready : in STD_LOGIC;
    DDR_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    DDR_wvalid : out STD_LOGIC;
    Eth_M_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    Eth_M_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Eth_M_tlast : out STD_LOGIC;
    Eth_M_tready : in STD_LOGIC;
    Eth_M_tvalid : out STD_LOGIC;
    Eth_S_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    Eth_S_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Eth_S_tlast : in STD_LOGIC;
    Eth_S_tready : out STD_LOGIC;
    Eth_S_tvalid : in STD_LOGIC;
    M_AXIS_0_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_0_tdest : out STD_LOGIC_VECTOR ( 15 downto 0 );
    M_AXIS_0_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_0_tlast : out STD_LOGIC;
    M_AXIS_0_tready : in STD_LOGIC;
    M_AXIS_0_tvalid : out STD_LOGIC;
    S_AXIS_0_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_0_tdest : in STD_LOGIC_VECTOR ( 15 downto 0 );
    S_AXIS_0_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_0_tlast : in STD_LOGIC;
    S_AXIS_0_tready : out STD_LOGIC;
    S_AXIS_0_tvalid : in STD_LOGIC;
    aclk_0 : in STD_LOGIC;
    aresetn_0 : in STD_LOGIC;
    ip_table_V_PORTA_0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_PORTA_0_clk : out STD_LOGIC;
    ip_table_V_PORTA_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_PORTA_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_PORTA_0_en : out STD_LOGIC;
    ip_table_V_PORTA_0_rst : out STD_LOGIC;
    ip_table_V_PORTA_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    ip_table_V_PORTB_0_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_PORTB_0_clk : out STD_LOGIC;
    ip_table_V_PORTB_0_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_PORTB_0_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ip_table_V_PORTB_0_en : out STD_LOGIC;
    ip_table_V_PORTB_0_rst : out STD_LOGIC;
    ip_table_V_PORTB_0_we : out STD_LOGIC_VECTOR ( 3 downto 0 );
    myGateway_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    myIpAddress_0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    myMacAddress_0 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    mySubnet_0 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "DDR_araddr[31:0],DDR_arburst[1:0],DDR_arcache[3:0],DDR_arid[3:0],DDR_arlen[7:0],DDR_arlock,DDR_arprot[2:0],DDR_arqos[3:0],DDR_arready,DDR_arsize[2:0],DDR_arvalid,DDR_awaddr[31:0],DDR_awburst[1:0],DDR_awcache[3:0],DDR_awid[3:0],DDR_awlen[7:0],DDR_awlock,DDR_awprot[2:0],DDR_awqos[3:0],DDR_awready,DDR_awsize[2:0],DDR_awvalid,DDR_bid[3:0],DDR_bready,DDR_bresp[1:0],DDR_bvalid,DDR_rdata[63:0],DDR_rid[3:0],DDR_rlast,DDR_rready,DDR_rresp[1:0],DDR_rvalid,DDR_wdata[63:0],DDR_wlast,DDR_wready,DDR_wstrb[7:0],DDR_wvalid,Eth_M_tdata[63:0],Eth_M_tkeep[7:0],Eth_M_tlast,Eth_M_tready,Eth_M_tvalid,Eth_S_tdata[63:0],Eth_S_tkeep[7:0],Eth_S_tlast,Eth_S_tready,Eth_S_tvalid,M_AXIS_0_tdata[63:0],M_AXIS_0_tdest[15:0],M_AXIS_0_tkeep[7:0],M_AXIS_0_tlast,M_AXIS_0_tready,M_AXIS_0_tvalid,S_AXIS_0_tdata[63:0],S_AXIS_0_tdest[15:0],S_AXIS_0_tkeep[7:0],S_AXIS_0_tlast,S_AXIS_0_tready,S_AXIS_0_tvalid,aclk_0,aresetn_0,ip_table_V_PORTA_0_addr[31:0],ip_table_V_PORTA_0_clk,ip_table_V_PORTA_0_din[31:0],ip_table_V_PORTA_0_dout[31:0],ip_table_V_PORTA_0_en,ip_table_V_PORTA_0_rst,ip_table_V_PORTA_0_we[3:0],ip_table_V_PORTB_0_addr[31:0],ip_table_V_PORTB_0_clk,ip_table_V_PORTB_0_din[31:0],ip_table_V_PORTB_0_dout[31:0],ip_table_V_PORTB_0_en,ip_table_V_PORTB_0_rst,ip_table_V_PORTB_0_we[3:0],myGateway_0[31:0],myIpAddress_0[31:0],myMacAddress_0[47:0],mySubnet_0[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TCP_bridge,Vivado 2018.1";
begin
end;
