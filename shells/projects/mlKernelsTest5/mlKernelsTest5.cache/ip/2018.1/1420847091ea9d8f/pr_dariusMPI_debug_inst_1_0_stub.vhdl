-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Thu Jun 21 00:04:39 2018
-- Host        : batcomputer running 64-bit Ubuntu 16.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ pr_dariusMPI_debug_inst_1_0_stub.vhdl
-- Design      : pr_dariusMPI_debug_inst_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    ARESETN : in STD_LOGIC;
    CLK : in STD_LOGIC;
    M_AXI_MEM_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_MEM_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_MEM_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MEM_arid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_MEM_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MEM_arready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MEM_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_arvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_MEM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_MEM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MEM_awid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_MEM_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MEM_awready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    M_AXI_MEM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_awvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_bid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_MEM_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_MEM_rid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    M_AXI_MEM_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_rready : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    M_AXI_MEM_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    M_AXI_MEM_wlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_wready : in STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_MEM_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXI_MEM_wvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    id_in_V_0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    stream_in_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_in_tdest : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_tid : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_in_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    stream_in_tready : out STD_LOGIC;
    stream_in_tuser : in STD_LOGIC_VECTOR ( 39 downto 0 );
    stream_in_tvalid : in STD_LOGIC;
    stream_out_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    stream_out_tdest : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_tid : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    stream_out_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    stream_out_tready : in STD_LOGIC;
    stream_out_tuser : out STD_LOGIC_VECTOR ( 39 downto 0 );
    stream_out_tvalid : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ARESETN,CLK,M_AXI_MEM_araddr[63:0],M_AXI_MEM_arburst[1:0],M_AXI_MEM_arcache[3:0],M_AXI_MEM_arid[2:0],M_AXI_MEM_arlen[7:0],M_AXI_MEM_arlock[0:0],M_AXI_MEM_arprot[2:0],M_AXI_MEM_arqos[3:0],M_AXI_MEM_arready[0:0],M_AXI_MEM_arregion[3:0],M_AXI_MEM_arsize[2:0],M_AXI_MEM_arvalid[0:0],M_AXI_MEM_awaddr[63:0],M_AXI_MEM_awburst[1:0],M_AXI_MEM_awcache[3:0],M_AXI_MEM_awid[2:0],M_AXI_MEM_awlen[7:0],M_AXI_MEM_awlock[0:0],M_AXI_MEM_awprot[2:0],M_AXI_MEM_awqos[3:0],M_AXI_MEM_awready[0:0],M_AXI_MEM_awregion[3:0],M_AXI_MEM_awsize[2:0],M_AXI_MEM_awvalid[0:0],M_AXI_MEM_bid[2:0],M_AXI_MEM_bready[0:0],M_AXI_MEM_bresp[1:0],M_AXI_MEM_bvalid[0:0],M_AXI_MEM_rdata[511:0],M_AXI_MEM_rid[2:0],M_AXI_MEM_rlast[0:0],M_AXI_MEM_rready[0:0],M_AXI_MEM_rresp[1:0],M_AXI_MEM_rvalid[0:0],M_AXI_MEM_wdata[511:0],M_AXI_MEM_wlast[0:0],M_AXI_MEM_wready[0:0],M_AXI_MEM_wstrb[63:0],M_AXI_MEM_wvalid[0:0],id_in_V_0[15:0],stream_in_tdata[63:0],stream_in_tdest[7:0],stream_in_tid[7:0],stream_in_tkeep[7:0],stream_in_tlast[0:0],stream_in_tready,stream_in_tuser[39:0],stream_in_tvalid,stream_out_tdata[63:0],stream_out_tdest[7:0],stream_out_tid[7:0],stream_out_tkeep[7:0],stream_out_tlast[0:0],stream_out_tready,stream_out_tuser[39:0],stream_out_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dariusMPI_debug,Vivado 2018.1";
begin
end;
