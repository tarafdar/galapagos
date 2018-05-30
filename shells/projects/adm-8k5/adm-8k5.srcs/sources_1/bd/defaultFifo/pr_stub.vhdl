-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Tue May 15 11:56:09 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/defaultFifo/pr_stub.vhdl
-- Design      : pr
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pr is
  Port ( 
    ARESETN : in STD_LOGIC;
    CLK : in STD_LOGIC;
    M_AXIS_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AXIS_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXIS_tlast : out STD_LOGIC;
    M_AXIS_tready : in STD_LOGIC;
    M_AXIS_tvalid : out STD_LOGIC;
    S_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXIS_tlast : in STD_LOGIC;
    S_AXIS_tready : out STD_LOGIC;
    S_AXIS_tvalid : in STD_LOGIC;
    S_AXI_CONTROL_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CONTROL_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CONTROL_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CONTROL_arready : out STD_LOGIC;
    S_AXI_CONTROL_arvalid : in STD_LOGIC;
    S_AXI_CONTROL_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CONTROL_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_CONTROL_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CONTROL_awready : out STD_LOGIC;
    S_AXI_CONTROL_awvalid : in STD_LOGIC;
    S_AXI_CONTROL_bready : in STD_LOGIC;
    S_AXI_CONTROL_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CONTROL_bvalid : out STD_LOGIC;
    S_AXI_CONTROL_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CONTROL_rready : in STD_LOGIC;
    S_AXI_CONTROL_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_CONTROL_rvalid : out STD_LOGIC;
    S_AXI_CONTROL_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_CONTROL_wready : out STD_LOGIC;
    S_AXI_CONTROL_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_CONTROL_wvalid : in STD_LOGIC;
    S_AXI_MEM_araddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_MEM_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_MEM_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_arready : in STD_LOGIC;
    S_AXI_MEM_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_arvalid : out STD_LOGIC;
    S_AXI_MEM_awaddr : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_MEM_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S_AXI_MEM_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_MEM_awready : in STD_LOGIC;
    S_AXI_MEM_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    S_AXI_MEM_awvalid : out STD_LOGIC;
    S_AXI_MEM_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_bready : out STD_LOGIC;
    S_AXI_MEM_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_bvalid : in STD_LOGIC;
    S_AXI_MEM_rdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_MEM_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    S_AXI_MEM_rlast : in STD_LOGIC;
    S_AXI_MEM_rready : out STD_LOGIC;
    S_AXI_MEM_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S_AXI_MEM_rvalid : in STD_LOGIC;
    S_AXI_MEM_wdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    S_AXI_MEM_wlast : out STD_LOGIC;
    S_AXI_MEM_wready : in STD_LOGIC;
    S_AXI_MEM_wstrb : out STD_LOGIC_VECTOR ( 63 downto 0 );
    S_AXI_MEM_wvalid : out STD_LOGIC
  );

end pr;

architecture stub of pr is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ARESETN,CLK,M_AXIS_tdata[63:0],M_AXIS_tkeep[7:0],M_AXIS_tlast,M_AXIS_tready,M_AXIS_tvalid,S_AXIS_tdata[63:0],S_AXIS_tkeep[7:0],S_AXIS_tlast,S_AXIS_tready,S_AXIS_tvalid,S_AXI_CONTROL_araddr[31:0],S_AXI_CONTROL_arprot[2:0],S_AXI_CONTROL_arqos[3:0],S_AXI_CONTROL_arready,S_AXI_CONTROL_arvalid,S_AXI_CONTROL_awaddr[31:0],S_AXI_CONTROL_awprot[2:0],S_AXI_CONTROL_awqos[3:0],S_AXI_CONTROL_awready,S_AXI_CONTROL_awvalid,S_AXI_CONTROL_bready,S_AXI_CONTROL_bresp[1:0],S_AXI_CONTROL_bvalid,S_AXI_CONTROL_rdata[31:0],S_AXI_CONTROL_rready,S_AXI_CONTROL_rresp[1:0],S_AXI_CONTROL_rvalid,S_AXI_CONTROL_wdata[31:0],S_AXI_CONTROL_wready,S_AXI_CONTROL_wstrb[3:0],S_AXI_CONTROL_wvalid,S_AXI_MEM_araddr[63:0],S_AXI_MEM_arburst[1:0],S_AXI_MEM_arcache[3:0],S_AXI_MEM_arid[0:0],S_AXI_MEM_arlen[7:0],S_AXI_MEM_arlock[0:0],S_AXI_MEM_arprot[2:0],S_AXI_MEM_arqos[3:0],S_AXI_MEM_arready,S_AXI_MEM_arsize[2:0],S_AXI_MEM_arvalid,S_AXI_MEM_awaddr[63:0],S_AXI_MEM_awburst[1:0],S_AXI_MEM_awcache[3:0],S_AXI_MEM_awid[0:0],S_AXI_MEM_awlen[7:0],S_AXI_MEM_awlock[0:0],S_AXI_MEM_awprot[2:0],S_AXI_MEM_awqos[3:0],S_AXI_MEM_awready,S_AXI_MEM_awsize[2:0],S_AXI_MEM_awvalid,S_AXI_MEM_bid[0:0],S_AXI_MEM_bready,S_AXI_MEM_bresp[1:0],S_AXI_MEM_bvalid,S_AXI_MEM_rdata[511:0],S_AXI_MEM_rid[0:0],S_AXI_MEM_rlast,S_AXI_MEM_rready,S_AXI_MEM_rresp[1:0],S_AXI_MEM_rvalid,S_AXI_MEM_wdata[511:0],S_AXI_MEM_wlast,S_AXI_MEM_wready,S_AXI_MEM_wstrb[63:0],S_AXI_MEM_wvalid";
begin
end;
