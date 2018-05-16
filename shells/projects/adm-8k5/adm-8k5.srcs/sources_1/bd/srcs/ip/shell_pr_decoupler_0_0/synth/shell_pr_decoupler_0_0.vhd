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

-- IP VLNV: xilinx.com:ip:pr_decoupler:1.0
-- IP Revision: 5

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY shell_pr_decoupler_0_0 IS
  PORT (
    s_pr_axi_mem_ARVALID : OUT STD_LOGIC;
    rp_pr_axi_mem_ARVALID : IN STD_LOGIC;
    s_pr_axi_mem_ARREADY : IN STD_LOGIC;
    rp_pr_axi_mem_ARREADY : OUT STD_LOGIC;
    s_pr_axi_mem_AWVALID : OUT STD_LOGIC;
    rp_pr_axi_mem_AWVALID : IN STD_LOGIC;
    s_pr_axi_mem_AWREADY : IN STD_LOGIC;
    rp_pr_axi_mem_AWREADY : OUT STD_LOGIC;
    s_pr_axi_mem_BVALID : IN STD_LOGIC;
    rp_pr_axi_mem_BVALID : OUT STD_LOGIC;
    s_pr_axi_mem_BREADY : OUT STD_LOGIC;
    rp_pr_axi_mem_BREADY : IN STD_LOGIC;
    s_pr_axi_mem_RVALID : IN STD_LOGIC;
    rp_pr_axi_mem_RVALID : OUT STD_LOGIC;
    s_pr_axi_mem_RREADY : OUT STD_LOGIC;
    rp_pr_axi_mem_RREADY : IN STD_LOGIC;
    s_pr_axi_mem_WVALID : OUT STD_LOGIC;
    rp_pr_axi_mem_WVALID : IN STD_LOGIC;
    s_pr_axi_mem_WREADY : IN STD_LOGIC;
    rp_pr_axi_mem_WREADY : OUT STD_LOGIC;
    s_pr_axi_mem_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_AWID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_pr_axi_mem_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_pr_axi_mem_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_pr_axi_mem_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_pr_axi_mem_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_pr_axi_mem_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_pr_axi_mem_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_pr_axi_mem_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_pr_axi_mem_AWLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_AWLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_pr_axi_mem_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_pr_axi_mem_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_pr_axi_mem_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_pr_axi_mem_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_pr_axi_mem_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_pr_axi_mem_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_pr_axi_mem_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_pr_axi_mem_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_WID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_WDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    rp_pr_axi_mem_WDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    s_pr_axi_mem_WSTRB : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rp_pr_axi_mem_WSTRB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_pr_axi_mem_WLAST : OUT STD_LOGIC;
    rp_pr_axi_mem_WLAST : IN STD_LOGIC;
    s_pr_axi_mem_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_BID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_pr_axi_mem_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_pr_axi_mem_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_ARID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_pr_axi_mem_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_pr_axi_mem_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_pr_axi_mem_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_pr_axi_mem_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_pr_axi_mem_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_pr_axi_mem_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_pr_axi_mem_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_pr_axi_mem_ARLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_ARLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_pr_axi_mem_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_pr_axi_mem_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_pr_axi_mem_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_pr_axi_mem_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_pr_axi_mem_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_pr_axi_mem_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_pr_axi_mem_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_pr_axi_mem_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rp_pr_axi_mem_RID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_pr_axi_mem_RDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
    rp_pr_axi_mem_RDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
    s_pr_axi_mem_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_pr_axi_mem_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_pr_axi_mem_RLAST : IN STD_LOGIC;
    rp_pr_axi_mem_RLAST : OUT STD_LOGIC;
    s_control_ARVALID : IN STD_LOGIC;
    rp_control_ARVALID : OUT STD_LOGIC;
    s_control_ARREADY : OUT STD_LOGIC;
    rp_control_ARREADY : IN STD_LOGIC;
    s_control_AWVALID : IN STD_LOGIC;
    rp_control_AWVALID : OUT STD_LOGIC;
    s_control_AWREADY : OUT STD_LOGIC;
    rp_control_AWREADY : IN STD_LOGIC;
    s_control_BVALID : OUT STD_LOGIC;
    rp_control_BVALID : IN STD_LOGIC;
    s_control_BREADY : IN STD_LOGIC;
    rp_control_BREADY : OUT STD_LOGIC;
    s_control_RVALID : OUT STD_LOGIC;
    rp_control_RVALID : IN STD_LOGIC;
    s_control_RREADY : IN STD_LOGIC;
    rp_control_RREADY : OUT STD_LOGIC;
    s_control_WVALID : IN STD_LOGIC;
    rp_control_WVALID : OUT STD_LOGIC;
    s_control_WREADY : OUT STD_LOGIC;
    rp_control_WREADY : IN STD_LOGIC;
    s_control_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_control_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_control_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_control_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_control_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_control_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_control_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_control_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_control_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_control_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_control_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_control_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_control_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_control_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    rp_control_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    s_control_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_control_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_control_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rp_control_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rp_control_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rp_control_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_stream_in_TVALID : OUT STD_LOGIC;
    rp_stream_in_TVALID : IN STD_LOGIC;
    s_stream_in_TREADY : IN STD_LOGIC;
    rp_stream_in_TREADY : OUT STD_LOGIC;
    s_stream_in_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rp_stream_in_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_stream_in_TLAST : OUT STD_LOGIC;
    rp_stream_in_TLAST : IN STD_LOGIC;
    s_stream_in_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_stream_in_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s_stream_out_TVALID : IN STD_LOGIC;
    rp_stream_out_TVALID : OUT STD_LOGIC;
    s_stream_out_TREADY : OUT STD_LOGIC;
    rp_stream_out_TREADY : IN STD_LOGIC;
    s_stream_out_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rp_stream_out_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    s_stream_out_TLAST : IN STD_LOGIC;
    rp_stream_out_TLAST : OUT STD_LOGIC;
    s_stream_out_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rp_stream_out_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    decouple_status : OUT STD_LOGIC;
    aclk : IN STD_LOGIC;
    s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_reg_awvalid : IN STD_LOGIC;
    s_axi_reg_awready : OUT STD_LOGIC;
    s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_wvalid : IN STD_LOGIC;
    s_axi_reg_wready : OUT STD_LOGIC;
    s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_bvalid : OUT STD_LOGIC;
    s_axi_reg_bready : IN STD_LOGIC;
    s_axi_reg_araddr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s_axi_reg_arvalid : IN STD_LOGIC;
    s_axi_reg_arready : OUT STD_LOGIC;
    s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_reg_rvalid : OUT STD_LOGIC;
    s_axi_reg_rready : IN STD_LOGIC;
    s_axi_reg_aresetn : IN STD_LOGIC
  );
END shell_pr_decoupler_0_0;

ARCHITECTURE shell_pr_decoupler_0_0_arch OF shell_pr_decoupler_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF shell_pr_decoupler_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT prd_shell_pr_decoupler_0_0 IS
    GENERIC (
      C_XDEVICEFAMILY : STRING
    );
    PORT (
      s_pr_axi_mem_ARVALID : OUT STD_LOGIC;
      rp_pr_axi_mem_ARVALID : IN STD_LOGIC;
      s_pr_axi_mem_ARREADY : IN STD_LOGIC;
      rp_pr_axi_mem_ARREADY : OUT STD_LOGIC;
      s_pr_axi_mem_AWVALID : OUT STD_LOGIC;
      rp_pr_axi_mem_AWVALID : IN STD_LOGIC;
      s_pr_axi_mem_AWREADY : IN STD_LOGIC;
      rp_pr_axi_mem_AWREADY : OUT STD_LOGIC;
      s_pr_axi_mem_BVALID : IN STD_LOGIC;
      rp_pr_axi_mem_BVALID : OUT STD_LOGIC;
      s_pr_axi_mem_BREADY : OUT STD_LOGIC;
      rp_pr_axi_mem_BREADY : IN STD_LOGIC;
      s_pr_axi_mem_RVALID : IN STD_LOGIC;
      rp_pr_axi_mem_RVALID : OUT STD_LOGIC;
      s_pr_axi_mem_RREADY : OUT STD_LOGIC;
      rp_pr_axi_mem_RREADY : IN STD_LOGIC;
      s_pr_axi_mem_WVALID : OUT STD_LOGIC;
      rp_pr_axi_mem_WVALID : IN STD_LOGIC;
      s_pr_axi_mem_WREADY : IN STD_LOGIC;
      rp_pr_axi_mem_WREADY : OUT STD_LOGIC;
      s_pr_axi_mem_AWID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_AWID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_pr_axi_mem_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_pr_axi_mem_AWLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_pr_axi_mem_AWLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_pr_axi_mem_AWSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_pr_axi_mem_AWSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_pr_axi_mem_AWBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_pr_axi_mem_AWBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_pr_axi_mem_AWLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_AWLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_AWCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_pr_axi_mem_AWCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_pr_axi_mem_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_pr_axi_mem_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_pr_axi_mem_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_pr_axi_mem_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_pr_axi_mem_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_pr_axi_mem_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_pr_axi_mem_WID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_WID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_WDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      rp_pr_axi_mem_WDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      s_pr_axi_mem_WSTRB : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      rp_pr_axi_mem_WSTRB : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_pr_axi_mem_WLAST : OUT STD_LOGIC;
      rp_pr_axi_mem_WLAST : IN STD_LOGIC;
      s_pr_axi_mem_BID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_BID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_pr_axi_mem_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_pr_axi_mem_ARID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_ARID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_pr_axi_mem_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_pr_axi_mem_ARLEN : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_pr_axi_mem_ARLEN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_pr_axi_mem_ARSIZE : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_pr_axi_mem_ARSIZE : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_pr_axi_mem_ARBURST : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_pr_axi_mem_ARBURST : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_pr_axi_mem_ARLOCK : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_ARLOCK : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_ARCACHE : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_pr_axi_mem_ARCACHE : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_pr_axi_mem_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_pr_axi_mem_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_pr_axi_mem_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_pr_axi_mem_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_pr_axi_mem_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_pr_axi_mem_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_pr_axi_mem_RID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      rp_pr_axi_mem_RID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_pr_axi_mem_RDATA : IN STD_LOGIC_VECTOR(511 DOWNTO 0);
      rp_pr_axi_mem_RDATA : OUT STD_LOGIC_VECTOR(511 DOWNTO 0);
      s_pr_axi_mem_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_pr_axi_mem_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_pr_axi_mem_RLAST : IN STD_LOGIC;
      rp_pr_axi_mem_RLAST : OUT STD_LOGIC;
      s_control_ARVALID : IN STD_LOGIC;
      rp_control_ARVALID : OUT STD_LOGIC;
      s_control_ARREADY : OUT STD_LOGIC;
      rp_control_ARREADY : IN STD_LOGIC;
      s_control_AWVALID : IN STD_LOGIC;
      rp_control_AWVALID : OUT STD_LOGIC;
      s_control_AWREADY : OUT STD_LOGIC;
      rp_control_AWREADY : IN STD_LOGIC;
      s_control_BVALID : OUT STD_LOGIC;
      rp_control_BVALID : IN STD_LOGIC;
      s_control_BREADY : IN STD_LOGIC;
      rp_control_BREADY : OUT STD_LOGIC;
      s_control_RVALID : OUT STD_LOGIC;
      rp_control_RVALID : IN STD_LOGIC;
      s_control_RREADY : IN STD_LOGIC;
      rp_control_RREADY : OUT STD_LOGIC;
      s_control_WVALID : IN STD_LOGIC;
      rp_control_WVALID : OUT STD_LOGIC;
      s_control_WREADY : OUT STD_LOGIC;
      rp_control_WREADY : IN STD_LOGIC;
      s_control_AWADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_control_AWADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_control_AWPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_control_AWPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_control_AWREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_control_AWREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_control_AWQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_control_AWQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_control_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_control_WDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_control_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_control_WSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_control_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_control_BRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_control_ARADDR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_control_ARADDR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_control_ARPROT : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
      rp_control_ARPROT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      s_control_ARREGION : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_control_ARREGION : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_control_ARQOS : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      rp_control_ARQOS : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_control_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      rp_control_RDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_control_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      rp_control_RRESP : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_stream_in_TVALID : OUT STD_LOGIC;
      rp_stream_in_TVALID : IN STD_LOGIC;
      s_stream_in_TREADY : IN STD_LOGIC;
      rp_stream_in_TREADY : OUT STD_LOGIC;
      s_stream_in_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      rp_stream_in_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_stream_in_TLAST : OUT STD_LOGIC;
      rp_stream_in_TLAST : IN STD_LOGIC;
      s_stream_in_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_stream_in_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      s_stream_out_TVALID : IN STD_LOGIC;
      rp_stream_out_TVALID : OUT STD_LOGIC;
      s_stream_out_TREADY : OUT STD_LOGIC;
      rp_stream_out_TREADY : IN STD_LOGIC;
      s_stream_out_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      rp_stream_out_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
      s_stream_out_TLAST : IN STD_LOGIC;
      rp_stream_out_TLAST : OUT STD_LOGIC;
      s_stream_out_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      rp_stream_out_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      decouple_status : OUT STD_LOGIC;
      aclk : IN STD_LOGIC;
      s_axi_reg_awaddr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_reg_awvalid : IN STD_LOGIC;
      s_axi_reg_awready : OUT STD_LOGIC;
      s_axi_reg_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_reg_wvalid : IN STD_LOGIC;
      s_axi_reg_wready : OUT STD_LOGIC;
      s_axi_reg_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_reg_bvalid : OUT STD_LOGIC;
      s_axi_reg_bready : IN STD_LOGIC;
      s_axi_reg_araddr : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      s_axi_reg_arvalid : IN STD_LOGIC;
      s_axi_reg_arready : OUT STD_LOGIC;
      s_axi_reg_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_reg_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_reg_rvalid : OUT STD_LOGIC;
      s_axi_reg_rready : IN STD_LOGIC;
      s_axi_reg_aresetn : IN STD_LOGIC
    );
  END COMPONENT prd_shell_pr_decoupler_0_0;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF shell_pr_decoupler_0_0_arch: ARCHITECTURE IS "prd_shell_pr_decoupler_0_0,Vivado 2018.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF shell_pr_decoupler_0_0_arch : ARCHITECTURE IS "shell_pr_decoupler_0_0,prd_shell_pr_decoupler_0_0,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF shell_pr_decoupler_0_0_arch: ARCHITECTURE IS "shell_pr_decoupler_0_0,prd_shell_pr_decoupler_0_0,{x_ipProduct=Vivado 2018.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=pr_decoupler,x_ipVersion=1.0,x_ipCoreRevision=5,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_XDEVICEFAMILY=kintexu}";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_reg_aresetn: SIGNAL IS "XIL_INTERFACENAME AXI_RESET, POLARITY ACTIVE_LOW";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_aresetn: SIGNAL IS "xilinx.com:signal:reset:1.0 AXI_RESET RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_rdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_arready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_arvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_araddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_bresp: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_wdata: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awready: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awvalid: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_reg_awaddr: SIGNAL IS "XIL_INTERFACENAME s_axi_reg, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 1, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_W" & 
"RITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_reg_awaddr: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_reg AWADDR";
  ATTRIBUTE X_INTERFACE_PARAMETER OF aclk: SIGNAL IS "XIL_INTERFACENAME aclk_CLOCK, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, ASSOCIATED_BUSIF s_axi_reg";
  ATTRIBUTE X_INTERFACE_INFO OF aclk: SIGNAL IS "xilinx.com:signal:clock:1.0 aclk_CLOCK CLK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_out_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_out TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_out_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_out TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_out_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_out_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_out_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_out_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_out_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_out_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_out TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_stream_out_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {a" & 
"ttribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maxim" & 
"um {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_out_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_out TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_stream_out_TVALID: SIGNAL IS "XIL_INTERFACENAME s_stream_out, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {at" & 
"tribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximu" & 
"m {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_out_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_out TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_in_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_in TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_in_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_in TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_in_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_in_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_in_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_in_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_in_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_in_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_in TREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_stream_in_TVALID: SIGNAL IS "XIL_INTERFACENAME rp_stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {at" & 
"tribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximu" & 
"m {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_stream_in_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 rp_stream_in TVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_stream_in_TVALID: SIGNAL IS "XIL_INTERFACENAME s_stream_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 156250000, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {CLK {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {att" & 
"ribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum" & 
" {}} value true}}}} TDATA_WIDTH 64}, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_stream_in_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 s_stream_in TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control ARREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_control_ARVALID: SIGNAL IS "XIL_INTERFACENAME rp_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM" & 
"_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_control_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_control ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_control_ARVALID: SIGNAL IS "XIL_INTERFACENAME s_control, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 156250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NUM_" & 
"WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_control_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_control ARVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_RLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_RID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_RID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARQOS";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARREGION";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARPROT";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARBURST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARLEN";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_BID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_BID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_WLAST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WLAST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_WID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_WID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWQOS: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWQOS";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWREGION: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWREGION";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWPROT: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWPROT";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWCACHE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWCACHE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWLOCK: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWLOCK";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWBURST: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWBURST";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWSIZE: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWSIZE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWLEN: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWLEN";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARREADY";
  ATTRIBUTE X_INTERFACE_PARAMETER OF rp_pr_axi_mem_ARVALID: SIGNAL IS "XIL_INTERFACENAME rp_pr_axi_mem, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 156250000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, N" & 
"UM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF rp_pr_axi_mem_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 rp_pr_axi_mem ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_pr_axi_mem_ARVALID: SIGNAL IS "XIL_INTERFACENAME s_pr_axi_mem, DATA_WIDTH 512, PROTOCOL AXI4, FREQ_HZ 156250000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN bd_01e2_xpcs_0_txusrclk2_out, NUM_READ_THREADS 1, NU" & 
"M_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, MISC.CLK_REQUIRED FALSE";
  ATTRIBUTE X_INTERFACE_INFO OF s_pr_axi_mem_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_pr_axi_mem ARVALID";
BEGIN
  U0 : prd_shell_pr_decoupler_0_0
    GENERIC MAP (
      C_XDEVICEFAMILY => "kintexu"
    )
    PORT MAP (
      s_pr_axi_mem_ARVALID => s_pr_axi_mem_ARVALID,
      rp_pr_axi_mem_ARVALID => rp_pr_axi_mem_ARVALID,
      s_pr_axi_mem_ARREADY => s_pr_axi_mem_ARREADY,
      rp_pr_axi_mem_ARREADY => rp_pr_axi_mem_ARREADY,
      s_pr_axi_mem_AWVALID => s_pr_axi_mem_AWVALID,
      rp_pr_axi_mem_AWVALID => rp_pr_axi_mem_AWVALID,
      s_pr_axi_mem_AWREADY => s_pr_axi_mem_AWREADY,
      rp_pr_axi_mem_AWREADY => rp_pr_axi_mem_AWREADY,
      s_pr_axi_mem_BVALID => s_pr_axi_mem_BVALID,
      rp_pr_axi_mem_BVALID => rp_pr_axi_mem_BVALID,
      s_pr_axi_mem_BREADY => s_pr_axi_mem_BREADY,
      rp_pr_axi_mem_BREADY => rp_pr_axi_mem_BREADY,
      s_pr_axi_mem_RVALID => s_pr_axi_mem_RVALID,
      rp_pr_axi_mem_RVALID => rp_pr_axi_mem_RVALID,
      s_pr_axi_mem_RREADY => s_pr_axi_mem_RREADY,
      rp_pr_axi_mem_RREADY => rp_pr_axi_mem_RREADY,
      s_pr_axi_mem_WVALID => s_pr_axi_mem_WVALID,
      rp_pr_axi_mem_WVALID => rp_pr_axi_mem_WVALID,
      s_pr_axi_mem_WREADY => s_pr_axi_mem_WREADY,
      rp_pr_axi_mem_WREADY => rp_pr_axi_mem_WREADY,
      s_pr_axi_mem_AWID => s_pr_axi_mem_AWID,
      rp_pr_axi_mem_AWID => rp_pr_axi_mem_AWID,
      s_pr_axi_mem_AWADDR => s_pr_axi_mem_AWADDR,
      rp_pr_axi_mem_AWADDR => rp_pr_axi_mem_AWADDR,
      s_pr_axi_mem_AWLEN => s_pr_axi_mem_AWLEN,
      rp_pr_axi_mem_AWLEN => rp_pr_axi_mem_AWLEN,
      s_pr_axi_mem_AWSIZE => s_pr_axi_mem_AWSIZE,
      rp_pr_axi_mem_AWSIZE => rp_pr_axi_mem_AWSIZE,
      s_pr_axi_mem_AWBURST => s_pr_axi_mem_AWBURST,
      rp_pr_axi_mem_AWBURST => rp_pr_axi_mem_AWBURST,
      s_pr_axi_mem_AWLOCK => s_pr_axi_mem_AWLOCK,
      rp_pr_axi_mem_AWLOCK => rp_pr_axi_mem_AWLOCK,
      s_pr_axi_mem_AWCACHE => s_pr_axi_mem_AWCACHE,
      rp_pr_axi_mem_AWCACHE => rp_pr_axi_mem_AWCACHE,
      s_pr_axi_mem_AWPROT => s_pr_axi_mem_AWPROT,
      rp_pr_axi_mem_AWPROT => rp_pr_axi_mem_AWPROT,
      s_pr_axi_mem_AWREGION => s_pr_axi_mem_AWREGION,
      rp_pr_axi_mem_AWREGION => rp_pr_axi_mem_AWREGION,
      s_pr_axi_mem_AWQOS => s_pr_axi_mem_AWQOS,
      rp_pr_axi_mem_AWQOS => rp_pr_axi_mem_AWQOS,
      s_pr_axi_mem_WID => s_pr_axi_mem_WID,
      rp_pr_axi_mem_WID => rp_pr_axi_mem_WID,
      s_pr_axi_mem_WDATA => s_pr_axi_mem_WDATA,
      rp_pr_axi_mem_WDATA => rp_pr_axi_mem_WDATA,
      s_pr_axi_mem_WSTRB => s_pr_axi_mem_WSTRB,
      rp_pr_axi_mem_WSTRB => rp_pr_axi_mem_WSTRB,
      s_pr_axi_mem_WLAST => s_pr_axi_mem_WLAST,
      rp_pr_axi_mem_WLAST => rp_pr_axi_mem_WLAST,
      s_pr_axi_mem_BID => s_pr_axi_mem_BID,
      rp_pr_axi_mem_BID => rp_pr_axi_mem_BID,
      s_pr_axi_mem_BRESP => s_pr_axi_mem_BRESP,
      rp_pr_axi_mem_BRESP => rp_pr_axi_mem_BRESP,
      s_pr_axi_mem_ARID => s_pr_axi_mem_ARID,
      rp_pr_axi_mem_ARID => rp_pr_axi_mem_ARID,
      s_pr_axi_mem_ARADDR => s_pr_axi_mem_ARADDR,
      rp_pr_axi_mem_ARADDR => rp_pr_axi_mem_ARADDR,
      s_pr_axi_mem_ARLEN => s_pr_axi_mem_ARLEN,
      rp_pr_axi_mem_ARLEN => rp_pr_axi_mem_ARLEN,
      s_pr_axi_mem_ARSIZE => s_pr_axi_mem_ARSIZE,
      rp_pr_axi_mem_ARSIZE => rp_pr_axi_mem_ARSIZE,
      s_pr_axi_mem_ARBURST => s_pr_axi_mem_ARBURST,
      rp_pr_axi_mem_ARBURST => rp_pr_axi_mem_ARBURST,
      s_pr_axi_mem_ARLOCK => s_pr_axi_mem_ARLOCK,
      rp_pr_axi_mem_ARLOCK => rp_pr_axi_mem_ARLOCK,
      s_pr_axi_mem_ARCACHE => s_pr_axi_mem_ARCACHE,
      rp_pr_axi_mem_ARCACHE => rp_pr_axi_mem_ARCACHE,
      s_pr_axi_mem_ARPROT => s_pr_axi_mem_ARPROT,
      rp_pr_axi_mem_ARPROT => rp_pr_axi_mem_ARPROT,
      s_pr_axi_mem_ARREGION => s_pr_axi_mem_ARREGION,
      rp_pr_axi_mem_ARREGION => rp_pr_axi_mem_ARREGION,
      s_pr_axi_mem_ARQOS => s_pr_axi_mem_ARQOS,
      rp_pr_axi_mem_ARQOS => rp_pr_axi_mem_ARQOS,
      s_pr_axi_mem_RID => s_pr_axi_mem_RID,
      rp_pr_axi_mem_RID => rp_pr_axi_mem_RID,
      s_pr_axi_mem_RDATA => s_pr_axi_mem_RDATA,
      rp_pr_axi_mem_RDATA => rp_pr_axi_mem_RDATA,
      s_pr_axi_mem_RRESP => s_pr_axi_mem_RRESP,
      rp_pr_axi_mem_RRESP => rp_pr_axi_mem_RRESP,
      s_pr_axi_mem_RLAST => s_pr_axi_mem_RLAST,
      rp_pr_axi_mem_RLAST => rp_pr_axi_mem_RLAST,
      s_control_ARVALID => s_control_ARVALID,
      rp_control_ARVALID => rp_control_ARVALID,
      s_control_ARREADY => s_control_ARREADY,
      rp_control_ARREADY => rp_control_ARREADY,
      s_control_AWVALID => s_control_AWVALID,
      rp_control_AWVALID => rp_control_AWVALID,
      s_control_AWREADY => s_control_AWREADY,
      rp_control_AWREADY => rp_control_AWREADY,
      s_control_BVALID => s_control_BVALID,
      rp_control_BVALID => rp_control_BVALID,
      s_control_BREADY => s_control_BREADY,
      rp_control_BREADY => rp_control_BREADY,
      s_control_RVALID => s_control_RVALID,
      rp_control_RVALID => rp_control_RVALID,
      s_control_RREADY => s_control_RREADY,
      rp_control_RREADY => rp_control_RREADY,
      s_control_WVALID => s_control_WVALID,
      rp_control_WVALID => rp_control_WVALID,
      s_control_WREADY => s_control_WREADY,
      rp_control_WREADY => rp_control_WREADY,
      s_control_AWADDR => s_control_AWADDR,
      rp_control_AWADDR => rp_control_AWADDR,
      s_control_AWPROT => s_control_AWPROT,
      rp_control_AWPROT => rp_control_AWPROT,
      s_control_AWREGION => s_control_AWREGION,
      rp_control_AWREGION => rp_control_AWREGION,
      s_control_AWQOS => s_control_AWQOS,
      rp_control_AWQOS => rp_control_AWQOS,
      s_control_WDATA => s_control_WDATA,
      rp_control_WDATA => rp_control_WDATA,
      s_control_WSTRB => s_control_WSTRB,
      rp_control_WSTRB => rp_control_WSTRB,
      s_control_BRESP => s_control_BRESP,
      rp_control_BRESP => rp_control_BRESP,
      s_control_ARADDR => s_control_ARADDR,
      rp_control_ARADDR => rp_control_ARADDR,
      s_control_ARPROT => s_control_ARPROT,
      rp_control_ARPROT => rp_control_ARPROT,
      s_control_ARREGION => s_control_ARREGION,
      rp_control_ARREGION => rp_control_ARREGION,
      s_control_ARQOS => s_control_ARQOS,
      rp_control_ARQOS => rp_control_ARQOS,
      s_control_RDATA => s_control_RDATA,
      rp_control_RDATA => rp_control_RDATA,
      s_control_RRESP => s_control_RRESP,
      rp_control_RRESP => rp_control_RRESP,
      s_stream_in_TVALID => s_stream_in_TVALID,
      rp_stream_in_TVALID => rp_stream_in_TVALID,
      s_stream_in_TREADY => s_stream_in_TREADY,
      rp_stream_in_TREADY => rp_stream_in_TREADY,
      s_stream_in_TDATA => s_stream_in_TDATA,
      rp_stream_in_TDATA => rp_stream_in_TDATA,
      s_stream_in_TLAST => s_stream_in_TLAST,
      rp_stream_in_TLAST => rp_stream_in_TLAST,
      s_stream_in_TKEEP => s_stream_in_TKEEP,
      rp_stream_in_TKEEP => rp_stream_in_TKEEP,
      s_stream_out_TVALID => s_stream_out_TVALID,
      rp_stream_out_TVALID => rp_stream_out_TVALID,
      s_stream_out_TREADY => s_stream_out_TREADY,
      rp_stream_out_TREADY => rp_stream_out_TREADY,
      s_stream_out_TDATA => s_stream_out_TDATA,
      rp_stream_out_TDATA => rp_stream_out_TDATA,
      s_stream_out_TLAST => s_stream_out_TLAST,
      rp_stream_out_TLAST => rp_stream_out_TLAST,
      s_stream_out_TKEEP => s_stream_out_TKEEP,
      rp_stream_out_TKEEP => rp_stream_out_TKEEP,
      decouple_status => decouple_status,
      aclk => aclk,
      s_axi_reg_awaddr => s_axi_reg_awaddr,
      s_axi_reg_awvalid => s_axi_reg_awvalid,
      s_axi_reg_awready => s_axi_reg_awready,
      s_axi_reg_wdata => s_axi_reg_wdata,
      s_axi_reg_wvalid => s_axi_reg_wvalid,
      s_axi_reg_wready => s_axi_reg_wready,
      s_axi_reg_bresp => s_axi_reg_bresp,
      s_axi_reg_bvalid => s_axi_reg_bvalid,
      s_axi_reg_bready => s_axi_reg_bready,
      s_axi_reg_araddr => s_axi_reg_araddr,
      s_axi_reg_arvalid => s_axi_reg_arvalid,
      s_axi_reg_arready => s_axi_reg_arready,
      s_axi_reg_rdata => s_axi_reg_rdata,
      s_axi_reg_rresp => s_axi_reg_rresp,
      s_axi_reg_rvalid => s_axi_reg_rvalid,
      s_axi_reg_rready => s_axi_reg_rready,
      s_axi_reg_aresetn => s_axi_reg_aresetn
    );
END shell_pr_decoupler_0_0_arch;
