-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:conv_layer:1.0
-- IP Revision: 1805151149

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY pr_conv_layer_0_0 IS
  PORT (
    s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
    s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
    s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
    s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    interrupt : OUT STD_LOGIC;
    m_axi_mem_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_mem_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mem_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_AWVALID : OUT STD_LOGIC;
    m_axi_mem_AWREADY : IN STD_LOGIC;
    m_axi_mem_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mem_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_WLAST : OUT STD_LOGIC;
    m_axi_mem_WVALID : OUT STD_LOGIC;
    m_axi_mem_WREADY : IN STD_LOGIC;
    m_axi_mem_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_BVALID : IN STD_LOGIC;
    m_axi_mem_BREADY : OUT STD_LOGIC;
    m_axi_mem_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    m_axi_mem_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    m_axi_mem_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    m_axi_mem_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    m_axi_mem_ARVALID : OUT STD_LOGIC;
    m_axi_mem_ARREADY : IN STD_LOGIC;
    m_axi_mem_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    m_axi_mem_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    m_axi_mem_RLAST : IN STD_LOGIC;
    m_axi_mem_RVALID : IN STD_LOGIC;
    m_axi_mem_RREADY : OUT STD_LOGIC
  );
END pr_conv_layer_0_0;

ARCHITECTURE pr_conv_layer_0_0_arch OF pr_conv_layer_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF pr_conv_layer_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT conv_layer IS
    GENERIC (
      C_S_AXI_CTRL_BUS_ADDR_WIDTH : INTEGER;
      C_S_AXI_CTRL_BUS_DATA_WIDTH : INTEGER;
      C_M_AXI_MEM_ID_WIDTH : INTEGER;
      C_M_AXI_MEM_ADDR_WIDTH : INTEGER;
      C_M_AXI_MEM_DATA_WIDTH : INTEGER;
      C_M_AXI_MEM_AWUSER_WIDTH : INTEGER;
      C_M_AXI_MEM_ARUSER_WIDTH : INTEGER;
      C_M_AXI_MEM_WUSER_WIDTH : INTEGER;
      C_M_AXI_MEM_RUSER_WIDTH : INTEGER;
      C_M_AXI_MEM_BUSER_WIDTH : INTEGER;
      C_M_AXI_MEM_USER_VALUE : INTEGER;
      C_M_AXI_MEM_PROT_VALUE : INTEGER;
      C_M_AXI_MEM_CACHE_VALUE : INTEGER;
      C_M_AXI_MEM_TARGET_ADDR : INTEGER
    );
    PORT (
      s_axi_CTRL_BUS_AWADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_CTRL_BUS_AWVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_AWREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_BUS_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_CTRL_BUS_WVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_WREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BUS_BVALID : OUT STD_LOGIC;
      s_axi_CTRL_BUS_BREADY : IN STD_LOGIC;
      s_axi_CTRL_BUS_ARADDR : IN STD_LOGIC_VECTOR(6 DOWNTO 0);
      s_axi_CTRL_BUS_ARVALID : IN STD_LOGIC;
      s_axi_CTRL_BUS_ARREADY : OUT STD_LOGIC;
      s_axi_CTRL_BUS_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_CTRL_BUS_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_CTRL_BUS_RVALID : OUT STD_LOGIC;
      s_axi_CTRL_BUS_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      interrupt : OUT STD_LOGIC;
      m_axi_mem_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_AWADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_mem_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_mem_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mem_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_AWLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mem_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_AWUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_AWVALID : OUT STD_LOGIC;
      m_axi_mem_AWREADY : IN STD_LOGIC;
      m_axi_mem_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_mem_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_WLAST : OUT STD_LOGIC;
      m_axi_mem_WUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_WVALID : OUT STD_LOGIC;
      m_axi_mem_WREADY : IN STD_LOGIC;
      m_axi_mem_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_BUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_BVALID : IN STD_LOGIC;
      m_axi_mem_BREADY : OUT STD_LOGIC;
      m_axi_mem_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_ARADDR : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      m_axi_mem_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      m_axi_mem_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mem_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_ARLOCK : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      m_axi_mem_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      m_axi_mem_ARUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_ARVALID : OUT STD_LOGIC;
      m_axi_mem_ARREADY : IN STD_LOGIC;
      m_axi_mem_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      m_axi_mem_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      m_axi_mem_RLAST : IN STD_LOGIC;
      m_axi_mem_RUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      m_axi_mem_RVALID : IN STD_LOGIC;
      m_axi_mem_RREADY : OUT STD_LOGIC
    );
  END COMPONENT conv_layer;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWLEN";
  ATTRIBUTE X_INTERFACE_PARAMETER OF m_axi_mem_AWADDR: SIGNAL IS "XIL_INTERFACENAME m_axi_mem, ADDR_WIDTH 64, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_READ_BURST_LENGTH 16, MAX_WRITE_BURST_LENGTH 16, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, FREQ_HZ 156250000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, PHASE 0.000, CLK_DOMAIN p" & 
"r_CLK_DATA, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF m_axi_mem_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 m_axi_mem AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF interrupt: SIGNAL IS "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {INTERRUPT {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, PortWidth 1";
  ATTRIBUTE X_INTERFACE_INFO OF interrupt: SIGNAL IS "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {RST {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_CTRL_BUS:m_axi_mem, ASSOCIATED_RESET ap_rst_n, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 156250000, PHASE 0.000, " & 
"CLK_DOMAIN pr_CLK_DATA";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_CTRL_BUS_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_CTRL_BUS, ADDR_WIDTH 7, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}}}, FREQ_HZ 156250000," & 
" ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN pr_CLK_DATA, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_CTRL_BUS_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_CTRL_BUS AWADDR";
BEGIN
  U0 : conv_layer
    GENERIC MAP (
      C_S_AXI_CTRL_BUS_ADDR_WIDTH => 7,
      C_S_AXI_CTRL_BUS_DATA_WIDTH => 32,
      C_M_AXI_MEM_ID_WIDTH => 1,
      C_M_AXI_MEM_ADDR_WIDTH => 64,
      C_M_AXI_MEM_DATA_WIDTH => 32,
      C_M_AXI_MEM_AWUSER_WIDTH => 1,
      C_M_AXI_MEM_ARUSER_WIDTH => 1,
      C_M_AXI_MEM_WUSER_WIDTH => 1,
      C_M_AXI_MEM_RUSER_WIDTH => 1,
      C_M_AXI_MEM_BUSER_WIDTH => 1,
      C_M_AXI_MEM_USER_VALUE => 0,
      C_M_AXI_MEM_PROT_VALUE => 0,
      C_M_AXI_MEM_CACHE_VALUE => 3,
      C_M_AXI_MEM_TARGET_ADDR => 0
    )
    PORT MAP (
      s_axi_CTRL_BUS_AWADDR => s_axi_CTRL_BUS_AWADDR,
      s_axi_CTRL_BUS_AWVALID => s_axi_CTRL_BUS_AWVALID,
      s_axi_CTRL_BUS_AWREADY => s_axi_CTRL_BUS_AWREADY,
      s_axi_CTRL_BUS_WDATA => s_axi_CTRL_BUS_WDATA,
      s_axi_CTRL_BUS_WSTRB => s_axi_CTRL_BUS_WSTRB,
      s_axi_CTRL_BUS_WVALID => s_axi_CTRL_BUS_WVALID,
      s_axi_CTRL_BUS_WREADY => s_axi_CTRL_BUS_WREADY,
      s_axi_CTRL_BUS_BRESP => s_axi_CTRL_BUS_BRESP,
      s_axi_CTRL_BUS_BVALID => s_axi_CTRL_BUS_BVALID,
      s_axi_CTRL_BUS_BREADY => s_axi_CTRL_BUS_BREADY,
      s_axi_CTRL_BUS_ARADDR => s_axi_CTRL_BUS_ARADDR,
      s_axi_CTRL_BUS_ARVALID => s_axi_CTRL_BUS_ARVALID,
      s_axi_CTRL_BUS_ARREADY => s_axi_CTRL_BUS_ARREADY,
      s_axi_CTRL_BUS_RDATA => s_axi_CTRL_BUS_RDATA,
      s_axi_CTRL_BUS_RRESP => s_axi_CTRL_BUS_RRESP,
      s_axi_CTRL_BUS_RVALID => s_axi_CTRL_BUS_RVALID,
      s_axi_CTRL_BUS_RREADY => s_axi_CTRL_BUS_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      interrupt => interrupt,
      m_axi_mem_AWADDR => m_axi_mem_AWADDR,
      m_axi_mem_AWLEN => m_axi_mem_AWLEN,
      m_axi_mem_AWSIZE => m_axi_mem_AWSIZE,
      m_axi_mem_AWBURST => m_axi_mem_AWBURST,
      m_axi_mem_AWLOCK => m_axi_mem_AWLOCK,
      m_axi_mem_AWREGION => m_axi_mem_AWREGION,
      m_axi_mem_AWCACHE => m_axi_mem_AWCACHE,
      m_axi_mem_AWPROT => m_axi_mem_AWPROT,
      m_axi_mem_AWQOS => m_axi_mem_AWQOS,
      m_axi_mem_AWVALID => m_axi_mem_AWVALID,
      m_axi_mem_AWREADY => m_axi_mem_AWREADY,
      m_axi_mem_WDATA => m_axi_mem_WDATA,
      m_axi_mem_WSTRB => m_axi_mem_WSTRB,
      m_axi_mem_WLAST => m_axi_mem_WLAST,
      m_axi_mem_WVALID => m_axi_mem_WVALID,
      m_axi_mem_WREADY => m_axi_mem_WREADY,
      m_axi_mem_BID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_mem_BRESP => m_axi_mem_BRESP,
      m_axi_mem_BUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_mem_BVALID => m_axi_mem_BVALID,
      m_axi_mem_BREADY => m_axi_mem_BREADY,
      m_axi_mem_ARADDR => m_axi_mem_ARADDR,
      m_axi_mem_ARLEN => m_axi_mem_ARLEN,
      m_axi_mem_ARSIZE => m_axi_mem_ARSIZE,
      m_axi_mem_ARBURST => m_axi_mem_ARBURST,
      m_axi_mem_ARLOCK => m_axi_mem_ARLOCK,
      m_axi_mem_ARREGION => m_axi_mem_ARREGION,
      m_axi_mem_ARCACHE => m_axi_mem_ARCACHE,
      m_axi_mem_ARPROT => m_axi_mem_ARPROT,
      m_axi_mem_ARQOS => m_axi_mem_ARQOS,
      m_axi_mem_ARVALID => m_axi_mem_ARVALID,
      m_axi_mem_ARREADY => m_axi_mem_ARREADY,
      m_axi_mem_RID => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_mem_RDATA => m_axi_mem_RDATA,
      m_axi_mem_RRESP => m_axi_mem_RRESP,
      m_axi_mem_RLAST => m_axi_mem_RLAST,
      m_axi_mem_RUSER => STD_LOGIC_VECTOR(TO_UNSIGNED(0, 1)),
      m_axi_mem_RVALID => m_axi_mem_RVALID,
      m_axi_mem_RREADY => m_axi_mem_RREADY
    );
END pr_conv_layer_0_0_arch;
