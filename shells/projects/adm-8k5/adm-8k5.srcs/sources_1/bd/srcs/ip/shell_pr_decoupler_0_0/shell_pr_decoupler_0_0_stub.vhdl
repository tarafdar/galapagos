-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (lin64) Build 2188600 Wed Apr  4 18:39:19 MDT 2018
-- Date        : Wed May 16 15:52:52 2018
-- Host        : ug238 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/shells/projects/adm-8k5/adm-8k5.srcs/sources_1/bd/srcs/ip/shell_pr_decoupler_0_0/shell_pr_decoupler_0_0_stub.vhdl
-- Design      : shell_pr_decoupler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xcku115-flva1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shell_pr_decoupler_0_0 is
  Port ( 
    s_pr_axi_mem_ARVALID : out STD_LOGIC;
    rp_pr_axi_mem_ARVALID : in STD_LOGIC;
    s_pr_axi_mem_ARREADY : in STD_LOGIC;
    rp_pr_axi_mem_ARREADY : out STD_LOGIC;
    s_pr_axi_mem_AWVALID : out STD_LOGIC;
    rp_pr_axi_mem_AWVALID : in STD_LOGIC;
    s_pr_axi_mem_AWREADY : in STD_LOGIC;
    rp_pr_axi_mem_AWREADY : out STD_LOGIC;
    s_pr_axi_mem_BVALID : in STD_LOGIC;
    rp_pr_axi_mem_BVALID : out STD_LOGIC;
    s_pr_axi_mem_BREADY : out STD_LOGIC;
    rp_pr_axi_mem_BREADY : in STD_LOGIC;
    s_pr_axi_mem_RVALID : in STD_LOGIC;
    rp_pr_axi_mem_RVALID : out STD_LOGIC;
    s_pr_axi_mem_RREADY : out STD_LOGIC;
    rp_pr_axi_mem_RREADY : in STD_LOGIC;
    s_pr_axi_mem_WVALID : out STD_LOGIC;
    rp_pr_axi_mem_WVALID : in STD_LOGIC;
    s_pr_axi_mem_WREADY : in STD_LOGIC;
    rp_pr_axi_mem_WREADY : out STD_LOGIC;
    s_pr_axi_mem_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_AWID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_pr_axi_mem_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pr_axi_mem_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_pr_axi_mem_AWLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pr_axi_mem_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_AWSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_AWBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_AWLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_AWLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_WID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_WID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_WDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_pr_axi_mem_WDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_pr_axi_mem_WSTRB : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_pr_axi_mem_WSTRB : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_pr_axi_mem_WLAST : out STD_LOGIC;
    rp_pr_axi_mem_WLAST : in STD_LOGIC;
    s_pr_axi_mem_BID : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_BID : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_ARID : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_pr_axi_mem_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_pr_axi_mem_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_pr_axi_mem_ARLEN : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_pr_axi_mem_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_ARSIZE : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_ARBURST : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_ARLOCK : out STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_ARLOCK : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARCACHE : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_pr_axi_mem_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_pr_axi_mem_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_pr_axi_mem_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_pr_axi_mem_RID : in STD_LOGIC_VECTOR ( 0 to 0 );
    rp_pr_axi_mem_RID : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_pr_axi_mem_RDATA : in STD_LOGIC_VECTOR ( 511 downto 0 );
    rp_pr_axi_mem_RDATA : out STD_LOGIC_VECTOR ( 511 downto 0 );
    s_pr_axi_mem_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_pr_axi_mem_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_pr_axi_mem_RLAST : in STD_LOGIC;
    rp_pr_axi_mem_RLAST : out STD_LOGIC;
    s_control_ARVALID : in STD_LOGIC;
    rp_control_ARVALID : out STD_LOGIC;
    s_control_ARREADY : out STD_LOGIC;
    rp_control_ARREADY : in STD_LOGIC;
    s_control_AWVALID : in STD_LOGIC;
    rp_control_AWVALID : out STD_LOGIC;
    s_control_AWREADY : out STD_LOGIC;
    rp_control_AWREADY : in STD_LOGIC;
    s_control_BVALID : out STD_LOGIC;
    rp_control_BVALID : in STD_LOGIC;
    s_control_BREADY : in STD_LOGIC;
    rp_control_BREADY : out STD_LOGIC;
    s_control_RVALID : out STD_LOGIC;
    rp_control_RVALID : in STD_LOGIC;
    s_control_RREADY : in STD_LOGIC;
    rp_control_RREADY : out STD_LOGIC;
    s_control_WVALID : in STD_LOGIC;
    rp_control_WVALID : out STD_LOGIC;
    s_control_WREADY : out STD_LOGIC;
    rp_control_WREADY : in STD_LOGIC;
    s_control_AWADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_AWADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_AWPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_control_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_control_AWREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_AWQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_control_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_control_ARADDR : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_ARADDR : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_ARPROT : in STD_LOGIC_VECTOR ( 2 downto 0 );
    rp_control_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_control_ARREGION : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_ARQOS : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rp_control_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_control_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    rp_control_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_control_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rp_control_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_stream_in_TVALID : out STD_LOGIC;
    rp_stream_in_TVALID : in STD_LOGIC;
    s_stream_in_TREADY : in STD_LOGIC;
    rp_stream_in_TREADY : out STD_LOGIC;
    s_stream_in_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_stream_in_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_stream_in_TLAST : out STD_LOGIC;
    rp_stream_in_TLAST : in STD_LOGIC;
    s_stream_in_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_stream_in_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_stream_out_TVALID : in STD_LOGIC;
    rp_stream_out_TVALID : out STD_LOGIC;
    s_stream_out_TREADY : out STD_LOGIC;
    rp_stream_out_TREADY : in STD_LOGIC;
    s_stream_out_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    rp_stream_out_TDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_stream_out_TLAST : in STD_LOGIC;
    rp_stream_out_TLAST : out STD_LOGIC;
    s_stream_out_TKEEP : in STD_LOGIC_VECTOR ( 7 downto 0 );
    rp_stream_out_TKEEP : out STD_LOGIC_VECTOR ( 7 downto 0 );
    decouple_status : out STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_reg_awaddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_awvalid : in STD_LOGIC;
    s_axi_reg_awready : out STD_LOGIC;
    s_axi_reg_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_wvalid : in STD_LOGIC;
    s_axi_reg_wready : out STD_LOGIC;
    s_axi_reg_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_bvalid : out STD_LOGIC;
    s_axi_reg_bready : in STD_LOGIC;
    s_axi_reg_araddr : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_reg_arvalid : in STD_LOGIC;
    s_axi_reg_arready : out STD_LOGIC;
    s_axi_reg_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_reg_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_reg_rvalid : out STD_LOGIC;
    s_axi_reg_rready : in STD_LOGIC;
    s_axi_reg_aresetn : in STD_LOGIC
  );

end shell_pr_decoupler_0_0;

architecture stub of shell_pr_decoupler_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_pr_axi_mem_ARVALID,rp_pr_axi_mem_ARVALID,s_pr_axi_mem_ARREADY,rp_pr_axi_mem_ARREADY,s_pr_axi_mem_AWVALID,rp_pr_axi_mem_AWVALID,s_pr_axi_mem_AWREADY,rp_pr_axi_mem_AWREADY,s_pr_axi_mem_BVALID,rp_pr_axi_mem_BVALID,s_pr_axi_mem_BREADY,rp_pr_axi_mem_BREADY,s_pr_axi_mem_RVALID,rp_pr_axi_mem_RVALID,s_pr_axi_mem_RREADY,rp_pr_axi_mem_RREADY,s_pr_axi_mem_WVALID,rp_pr_axi_mem_WVALID,s_pr_axi_mem_WREADY,rp_pr_axi_mem_WREADY,s_pr_axi_mem_AWID[0:0],rp_pr_axi_mem_AWID[0:0],s_pr_axi_mem_AWADDR[31:0],rp_pr_axi_mem_AWADDR[31:0],s_pr_axi_mem_AWLEN[7:0],rp_pr_axi_mem_AWLEN[7:0],s_pr_axi_mem_AWSIZE[2:0],rp_pr_axi_mem_AWSIZE[2:0],s_pr_axi_mem_AWBURST[1:0],rp_pr_axi_mem_AWBURST[1:0],s_pr_axi_mem_AWLOCK[0:0],rp_pr_axi_mem_AWLOCK[0:0],s_pr_axi_mem_AWCACHE[3:0],rp_pr_axi_mem_AWCACHE[3:0],s_pr_axi_mem_AWPROT[2:0],rp_pr_axi_mem_AWPROT[2:0],s_pr_axi_mem_AWREGION[3:0],rp_pr_axi_mem_AWREGION[3:0],s_pr_axi_mem_AWQOS[3:0],rp_pr_axi_mem_AWQOS[3:0],s_pr_axi_mem_WID[0:0],rp_pr_axi_mem_WID[0:0],s_pr_axi_mem_WDATA[511:0],rp_pr_axi_mem_WDATA[511:0],s_pr_axi_mem_WSTRB[63:0],rp_pr_axi_mem_WSTRB[63:0],s_pr_axi_mem_WLAST,rp_pr_axi_mem_WLAST,s_pr_axi_mem_BID[0:0],rp_pr_axi_mem_BID[0:0],s_pr_axi_mem_BRESP[1:0],rp_pr_axi_mem_BRESP[1:0],s_pr_axi_mem_ARID[0:0],rp_pr_axi_mem_ARID[0:0],s_pr_axi_mem_ARADDR[31:0],rp_pr_axi_mem_ARADDR[31:0],s_pr_axi_mem_ARLEN[7:0],rp_pr_axi_mem_ARLEN[7:0],s_pr_axi_mem_ARSIZE[2:0],rp_pr_axi_mem_ARSIZE[2:0],s_pr_axi_mem_ARBURST[1:0],rp_pr_axi_mem_ARBURST[1:0],s_pr_axi_mem_ARLOCK[0:0],rp_pr_axi_mem_ARLOCK[0:0],s_pr_axi_mem_ARCACHE[3:0],rp_pr_axi_mem_ARCACHE[3:0],s_pr_axi_mem_ARPROT[2:0],rp_pr_axi_mem_ARPROT[2:0],s_pr_axi_mem_ARREGION[3:0],rp_pr_axi_mem_ARREGION[3:0],s_pr_axi_mem_ARQOS[3:0],rp_pr_axi_mem_ARQOS[3:0],s_pr_axi_mem_RID[0:0],rp_pr_axi_mem_RID[0:0],s_pr_axi_mem_RDATA[511:0],rp_pr_axi_mem_RDATA[511:0],s_pr_axi_mem_RRESP[1:0],rp_pr_axi_mem_RRESP[1:0],s_pr_axi_mem_RLAST,rp_pr_axi_mem_RLAST,s_control_ARVALID,rp_control_ARVALID,s_control_ARREADY,rp_control_ARREADY,s_control_AWVALID,rp_control_AWVALID,s_control_AWREADY,rp_control_AWREADY,s_control_BVALID,rp_control_BVALID,s_control_BREADY,rp_control_BREADY,s_control_RVALID,rp_control_RVALID,s_control_RREADY,rp_control_RREADY,s_control_WVALID,rp_control_WVALID,s_control_WREADY,rp_control_WREADY,s_control_AWADDR[31:0],rp_control_AWADDR[31:0],s_control_AWPROT[2:0],rp_control_AWPROT[2:0],s_control_AWREGION[3:0],rp_control_AWREGION[3:0],s_control_AWQOS[3:0],rp_control_AWQOS[3:0],s_control_WDATA[31:0],rp_control_WDATA[31:0],s_control_WSTRB[3:0],rp_control_WSTRB[3:0],s_control_BRESP[1:0],rp_control_BRESP[1:0],s_control_ARADDR[31:0],rp_control_ARADDR[31:0],s_control_ARPROT[2:0],rp_control_ARPROT[2:0],s_control_ARREGION[3:0],rp_control_ARREGION[3:0],s_control_ARQOS[3:0],rp_control_ARQOS[3:0],s_control_RDATA[31:0],rp_control_RDATA[31:0],s_control_RRESP[1:0],rp_control_RRESP[1:0],s_stream_in_TVALID,rp_stream_in_TVALID,s_stream_in_TREADY,rp_stream_in_TREADY,s_stream_in_TDATA[63:0],rp_stream_in_TDATA[63:0],s_stream_in_TLAST,rp_stream_in_TLAST,s_stream_in_TKEEP[7:0],rp_stream_in_TKEEP[7:0],s_stream_out_TVALID,rp_stream_out_TVALID,s_stream_out_TREADY,rp_stream_out_TREADY,s_stream_out_TDATA[63:0],rp_stream_out_TDATA[63:0],s_stream_out_TLAST,rp_stream_out_TLAST,s_stream_out_TKEEP[7:0],rp_stream_out_TKEEP[7:0],decouple_status,aclk,s_axi_reg_awaddr[0:0],s_axi_reg_awvalid,s_axi_reg_awready,s_axi_reg_wdata[31:0],s_axi_reg_wvalid,s_axi_reg_wready,s_axi_reg_bresp[1:0],s_axi_reg_bvalid,s_axi_reg_bready,s_axi_reg_araddr[0:0],s_axi_reg_arvalid,s_axi_reg_arready,s_axi_reg_rdata[31:0],s_axi_reg_rresp[1:0],s_axi_reg_rvalid,s_axi_reg_rready,s_axi_reg_aresetn";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "prd_shell_pr_decoupler_0_0,Vivado 2018.1";
begin
end;
