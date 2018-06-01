-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Fri Jun  1 14:55:46 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/tarafdar/workDir/galapagos/projects/dariusFlatten/0/0.srcs/sources_1/bd/srcs/shell_stub.vhdl
-- Design      : shell
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shell is
  Port ( 
    ARESETN : out STD_LOGIC_VECTOR ( 0 to 0 );
    CLK_DATA : out STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    M_AXI_CONTROL_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_CONTROL_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_CONTROL_arready : in STD_LOGIC;
    M_AXI_CONTROL_arvalid : out STD_LOGIC;
    M_AXI_CONTROL_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_CONTROL_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_CONTROL_awready : in STD_LOGIC;
    M_AXI_CONTROL_awvalid : out STD_LOGIC;
    M_AXI_CONTROL_bready : out STD_LOGIC;
    M_AXI_CONTROL_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_CONTROL_bvalid : in STD_LOGIC;
    M_AXI_CONTROL_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_CONTROL_rready : out STD_LOGIC;
    M_AXI_CONTROL_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_CONTROL_rvalid : in STD_LOGIC;
    M_AXI_CONTROL_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXI_CONTROL_wready : in STD_LOGIC;
    M_AXI_CONTROL_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_CONTROL_wvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_MEM_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_MEM_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_MEM_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_arready : out STD_LOGIC;
    S_AXI_MEM_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_arvalid : in STD_LOGIC;
    S_AXI_MEM_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_MEM_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_MEM_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_awready : out STD_LOGIC;
    S_AXI_MEM_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_awvalid : in STD_LOGIC;
    S_AXI_MEM_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_bready : in STD_LOGIC;
    S_AXI_MEM_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_bvalid : out STD_LOGIC;
    S_AXI_MEM_rdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_MEM_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_rlast : out STD_LOGIC;
    S_AXI_MEM_rready : in STD_LOGIC;
    S_AXI_MEM_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_rvalid : out STD_LOGIC;
    S_AXI_MEM_wdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_MEM_wlast : in STD_LOGIC;
    S_AXI_MEM_wready : out STD_LOGIC;
    S_AXI_MEM_wstrb : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_MEM_wvalid : in STD_LOGIC;
    c0_ddr4_act_n_0 : out STD_LOGIC;
    c0_ddr4_adr_0 : out STD_LOGIC_VECTOR ( 16 downto 0 );
    c0_ddr4_ba_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_bg_0 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    c0_ddr4_ck_c_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_ck_t_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cke_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_cs_n_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_dg_0 : inout STD_LOGIC_VECTOR ( 63 downto 0 );
    c0_ddr4_dm_dbi_n_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_dqs_c_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_dqs_t_0 : inout STD_LOGIC_VECTOR ( 7 downto 0 );
    c0_ddr4_odt_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    c0_ddr4_reset_n_0 : out STD_LOGIC;
    c0_sys_clk_n_0 : in STD_LOGIC;
    c0_sys_clk_p_0 : in STD_LOGIC;
    diff_clock_rtl_clk_n : in STD_LOGIC_VECTOR ( 0 to 0 );
    diff_clock_rtl_clk_p : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_rtl_rxn : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_7x_mgt_rtl_rxp : in STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_7x_mgt_rtl_txn : out STD_LOGIC_VECTOR ( 7 downto 0 );
    pcie_7x_mgt_rtl_txp : out STD_LOGIC_VECTOR ( 7 downto 0 );
    perst_n : in STD_LOGIC;
    refclk200 : in STD_LOGIC;
    refclk_n : in STD_LOGIC;
    refclk_p : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    sfp_tx_disable : out STD_LOGIC_VECTOR ( 1 downto 0 );
    txn : out STD_LOGIC;
    txp : out STD_LOGIC
  );

end shell;

architecture stub of shell is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ARESETN[0:0],CLK_DATA,M_AXIS_tdata[63:0],M_AXIS_tkeep[7:0],M_AXIS_tlast[0:0],M_AXIS_tready,M_AXIS_tvalid,M_AXI_CONTROL_araddr[31:0],M_AXI_CONTROL_arprot[2:0],M_AXI_CONTROL_arready,M_AXI_CONTROL_arvalid,M_AXI_CONTROL_awaddr[31:0],M_AXI_CONTROL_awprot[2:0],M_AXI_CONTROL_awready,M_AXI_CONTROL_awvalid,M_AXI_CONTROL_bready,M_AXI_CONTROL_bresp[1:0],M_AXI_CONTROL_bvalid,M_AXI_CONTROL_rdata[31:0],M_AXI_CONTROL_rready,M_AXI_CONTROL_rresp[1:0],M_AXI_CONTROL_rvalid,M_AXI_CONTROL_wdata[31:0],M_AXI_CONTROL_wready,M_AXI_CONTROL_wstrb[3:0],M_AXI_CONTROL_wvalid,S_AXIS_tdata[63:0],S_AXIS_tkeep[7:0],S_AXIS_tlast[0:0],S_AXIS_tready,S_AXIS_tvalid,S_AXI_MEM_araddr[31:0],S_AXI_MEM_arburst[1:0],S_AXI_MEM_arcache[3:0],S_AXI_MEM_arid[0:0],S_AXI_MEM_arlen[7:0],S_AXI_MEM_arlock[0:0],S_AXI_MEM_arprot[2:0],S_AXI_MEM_arqos[3:0],S_AXI_MEM_arready,S_AXI_MEM_arregion[3:0],S_AXI_MEM_arsize[2:0],S_AXI_MEM_arvalid,S_AXI_MEM_awaddr[31:0],S_AXI_MEM_awburst[1:0],S_AXI_MEM_awcache[3:0],S_AXI_MEM_awid[0:0],S_AXI_MEM_awlen[7:0],S_AXI_MEM_awlock[0:0],S_AXI_MEM_awprot[2:0],S_AXI_MEM_awqos[3:0],S_AXI_MEM_awready,S_AXI_MEM_awregion[3:0],S_AXI_MEM_awsize[2:0],S_AXI_MEM_awvalid,S_AXI_MEM_bid[0:0],S_AXI_MEM_bready,S_AXI_MEM_bresp[1:0],S_AXI_MEM_bvalid,S_AXI_MEM_rdata[511:0],S_AXI_MEM_rid[0:0],S_AXI_MEM_rlast,S_AXI_MEM_rready,S_AXI_MEM_rresp[1:0],S_AXI_MEM_rvalid,S_AXI_MEM_wdata[511:0],S_AXI_MEM_wlast,S_AXI_MEM_wready,S_AXI_MEM_wstrb[63:0],S_AXI_MEM_wvalid,c0_ddr4_act_n_0,c0_ddr4_adr_0[16:0],c0_ddr4_ba_0[1:0],c0_ddr4_bg_0[1:0],c0_ddr4_ck_c_0[0:0],c0_ddr4_ck_t_0[0:0],c0_ddr4_cke_0[0:0],c0_ddr4_cs_n_0[0:0],c0_ddr4_dg_0[63:0],c0_ddr4_dm_dbi_n_0[7:0],c0_ddr4_dqs_c_0[7:0],c0_ddr4_dqs_t_0[7:0],c0_ddr4_odt_0[0:0],c0_ddr4_reset_n_0,c0_sys_clk_n_0,c0_sys_clk_p_0,diff_clock_rtl_clk_n[0:0],diff_clock_rtl_clk_p[0:0],pcie_7x_mgt_rtl_rxn[7:0],pcie_7x_mgt_rtl_rxp[7:0],pcie_7x_mgt_rtl_txn[7:0],pcie_7x_mgt_rtl_txp[7:0],perst_n,refclk200,refclk_n,refclk_p,rxn,rxp,sfp_tx_disable[1:0],txn,txp";
begin
end;
