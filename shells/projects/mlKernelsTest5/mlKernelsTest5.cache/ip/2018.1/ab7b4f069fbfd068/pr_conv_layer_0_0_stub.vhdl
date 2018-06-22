-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Fri Jun 22 12:49:18 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_conv_layer_0_0_stub.vhdl
-- Design      : pr_conv_layer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_CTRL_BUS_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_BUS_AWVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_BUS_WVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_BVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : in STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_CTRL_BUS_ARVALID : in STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : out STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_BUS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BUS_RVALID : out STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_mem_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_AWVALID : out STD_LOGIC;
    m_axi_mem_AWREADY : in STD_LOGIC;
    m_axi_mem_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mem_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_WLAST : out STD_LOGIC;
    m_axi_mem_WVALID : out STD_LOGIC;
    m_axi_mem_WREADY : in STD_LOGIC;
    m_axi_mem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_BVALID : in STD_LOGIC;
    m_axi_mem_BREADY : out STD_LOGIC;
    m_axi_mem_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_mem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mem_ARVALID : out STD_LOGIC;
    m_axi_mem_ARREADY : in STD_LOGIC;
    m_axi_mem_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mem_RLAST : in STD_LOGIC;
    m_axi_mem_RVALID : in STD_LOGIC;
    m_axi_mem_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_CTRL_BUS_AWADDR[6:0],s_axi_CTRL_BUS_AWVALID,s_axi_CTRL_BUS_AWREADY,s_axi_CTRL_BUS_WDATA[31:0],s_axi_CTRL_BUS_WSTRB[3:0],s_axi_CTRL_BUS_WVALID,s_axi_CTRL_BUS_WREADY,s_axi_CTRL_BUS_BRESP[1:0],s_axi_CTRL_BUS_BVALID,s_axi_CTRL_BUS_BREADY,s_axi_CTRL_BUS_ARADDR[6:0],s_axi_CTRL_BUS_ARVALID,s_axi_CTRL_BUS_ARREADY,s_axi_CTRL_BUS_RDATA[31:0],s_axi_CTRL_BUS_RRESP[1:0],s_axi_CTRL_BUS_RVALID,s_axi_CTRL_BUS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_mem_AWADDR[63:0],m_axi_mem_AWLEN[7:0],m_axi_mem_AWSIZE[2:0],m_axi_mem_AWBURST[1:0],m_axi_mem_AWLOCK[1:0],m_axi_mem_AWREGION[3:0],m_axi_mem_AWCACHE[3:0],m_axi_mem_AWPROT[2:0],m_axi_mem_AWQOS[3:0],m_axi_mem_AWVALID,m_axi_mem_AWREADY,m_axi_mem_WDATA[31:0],m_axi_mem_WSTRB[3:0],m_axi_mem_WLAST,m_axi_mem_WVALID,m_axi_mem_WREADY,m_axi_mem_BRESP[1:0],m_axi_mem_BVALID,m_axi_mem_BREADY,m_axi_mem_ARADDR[63:0],m_axi_mem_ARLEN[7:0],m_axi_mem_ARSIZE[2:0],m_axi_mem_ARBURST[1:0],m_axi_mem_ARLOCK[1:0],m_axi_mem_ARREGION[3:0],m_axi_mem_ARCACHE[3:0],m_axi_mem_ARPROT[2:0],m_axi_mem_ARQOS[3:0],m_axi_mem_ARVALID,m_axi_mem_ARREADY,m_axi_mem_RDATA[31:0],m_axi_mem_RRESP[1:0],m_axi_mem_RLAST,m_axi_mem_RVALID,m_axi_mem_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "conv_layer,Vivado 2018.1";
begin
end;
