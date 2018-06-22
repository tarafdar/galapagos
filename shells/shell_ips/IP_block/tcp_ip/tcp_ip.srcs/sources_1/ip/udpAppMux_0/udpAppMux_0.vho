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

-- IP VLNV: xilinx.labs:hls:udpAppMux:1.05
-- IP Revision: 1802231037

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT udpAppMux_0
  PORT (
    portOpenReplyIn_TVALID : IN STD_LOGIC;
    portOpenReplyIn_TREADY : OUT STD_LOGIC;
    portOpenReplyIn_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    portOpenReplyOutApp_TVALID : OUT STD_LOGIC;
    portOpenReplyOutApp_TREADY : IN STD_LOGIC;
    portOpenReplyOutApp_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    portOpenReplyOutDhcp_TVALID : OUT STD_LOGIC;
    portOpenReplyOutDhcp_TREADY : IN STD_LOGIC;
    portOpenReplyOutDhcp_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    requestPortOpenInApp_TVALID : IN STD_LOGIC;
    requestPortOpenInApp_TREADY : OUT STD_LOGIC;
    requestPortOpenInApp_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    requestPortOpenInDhcp_TVALID : IN STD_LOGIC;
    requestPortOpenInDhcp_TREADY : OUT STD_LOGIC;
    requestPortOpenInDhcp_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    requestPortOpenOut_TVALID : OUT STD_LOGIC;
    requestPortOpenOut_TREADY : IN STD_LOGIC;
    requestPortOpenOut_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    rxDataIn_TVALID : IN STD_LOGIC;
    rxDataIn_TREADY : OUT STD_LOGIC;
    rxDataIn_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    rxDataIn_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    rxDataIn_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    rxDataOutApp_TVALID : OUT STD_LOGIC;
    rxDataOutApp_TREADY : IN STD_LOGIC;
    rxDataOutApp_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rxDataOutApp_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rxDataOutApp_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rxDataOutDhcp_TVALID : OUT STD_LOGIC;
    rxDataOutDhcp_TREADY : IN STD_LOGIC;
    rxDataOutDhcp_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    rxDataOutDhcp_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    rxDataOutDhcp_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    rxMetadataIn_TVALID : IN STD_LOGIC;
    rxMetadataIn_TREADY : OUT STD_LOGIC;
    rxMetadataIn_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    rxMetadataOutApp_TVALID : OUT STD_LOGIC;
    rxMetadataOutApp_TREADY : IN STD_LOGIC;
    rxMetadataOutApp_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    rxMetadataOutDhcp_TVALID : OUT STD_LOGIC;
    rxMetadataOutDhcp_TREADY : IN STD_LOGIC;
    rxMetadataOutDhcp_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    txDataInApp_TVALID : IN STD_LOGIC;
    txDataInApp_TREADY : OUT STD_LOGIC;
    txDataInApp_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    txDataInApp_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    txDataInApp_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    txDataInDhcp_TVALID : IN STD_LOGIC;
    txDataInDhcp_TREADY : OUT STD_LOGIC;
    txDataInDhcp_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    txDataInDhcp_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    txDataInDhcp_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    txDataOut_TVALID : OUT STD_LOGIC;
    txDataOut_TREADY : IN STD_LOGIC;
    txDataOut_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    txDataOut_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    txDataOut_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    txLengthInApp_TVALID : IN STD_LOGIC;
    txLengthInApp_TREADY : OUT STD_LOGIC;
    txLengthInApp_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    txLengthInDhcp_TVALID : IN STD_LOGIC;
    txLengthInDhcp_TREADY : OUT STD_LOGIC;
    txLengthInDhcp_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    txLengthOut_TVALID : OUT STD_LOGIC;
    txLengthOut_TREADY : IN STD_LOGIC;
    txLengthOut_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    txMetadataInApp_TVALID : IN STD_LOGIC;
    txMetadataInApp_TREADY : OUT STD_LOGIC;
    txMetadataInApp_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    txMetadataInDhcp_TVALID : IN STD_LOGIC;
    txMetadataInDhcp_TREADY : OUT STD_LOGIC;
    txMetadataInDhcp_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    txMetadataOut_TVALID : OUT STD_LOGIC;
    txMetadataOut_TREADY : IN STD_LOGIC;
    txMetadataOut_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : udpAppMux_0
  PORT MAP (
    portOpenReplyIn_TVALID => portOpenReplyIn_TVALID,
    portOpenReplyIn_TREADY => portOpenReplyIn_TREADY,
    portOpenReplyIn_TDATA => portOpenReplyIn_TDATA,
    portOpenReplyOutApp_TVALID => portOpenReplyOutApp_TVALID,
    portOpenReplyOutApp_TREADY => portOpenReplyOutApp_TREADY,
    portOpenReplyOutApp_TDATA => portOpenReplyOutApp_TDATA,
    portOpenReplyOutDhcp_TVALID => portOpenReplyOutDhcp_TVALID,
    portOpenReplyOutDhcp_TREADY => portOpenReplyOutDhcp_TREADY,
    portOpenReplyOutDhcp_TDATA => portOpenReplyOutDhcp_TDATA,
    requestPortOpenInApp_TVALID => requestPortOpenInApp_TVALID,
    requestPortOpenInApp_TREADY => requestPortOpenInApp_TREADY,
    requestPortOpenInApp_TDATA => requestPortOpenInApp_TDATA,
    requestPortOpenInDhcp_TVALID => requestPortOpenInDhcp_TVALID,
    requestPortOpenInDhcp_TREADY => requestPortOpenInDhcp_TREADY,
    requestPortOpenInDhcp_TDATA => requestPortOpenInDhcp_TDATA,
    requestPortOpenOut_TVALID => requestPortOpenOut_TVALID,
    requestPortOpenOut_TREADY => requestPortOpenOut_TREADY,
    requestPortOpenOut_TDATA => requestPortOpenOut_TDATA,
    rxDataIn_TVALID => rxDataIn_TVALID,
    rxDataIn_TREADY => rxDataIn_TREADY,
    rxDataIn_TDATA => rxDataIn_TDATA,
    rxDataIn_TKEEP => rxDataIn_TKEEP,
    rxDataIn_TLAST => rxDataIn_TLAST,
    rxDataOutApp_TVALID => rxDataOutApp_TVALID,
    rxDataOutApp_TREADY => rxDataOutApp_TREADY,
    rxDataOutApp_TDATA => rxDataOutApp_TDATA,
    rxDataOutApp_TKEEP => rxDataOutApp_TKEEP,
    rxDataOutApp_TLAST => rxDataOutApp_TLAST,
    rxDataOutDhcp_TVALID => rxDataOutDhcp_TVALID,
    rxDataOutDhcp_TREADY => rxDataOutDhcp_TREADY,
    rxDataOutDhcp_TDATA => rxDataOutDhcp_TDATA,
    rxDataOutDhcp_TKEEP => rxDataOutDhcp_TKEEP,
    rxDataOutDhcp_TLAST => rxDataOutDhcp_TLAST,
    rxMetadataIn_TVALID => rxMetadataIn_TVALID,
    rxMetadataIn_TREADY => rxMetadataIn_TREADY,
    rxMetadataIn_TDATA => rxMetadataIn_TDATA,
    rxMetadataOutApp_TVALID => rxMetadataOutApp_TVALID,
    rxMetadataOutApp_TREADY => rxMetadataOutApp_TREADY,
    rxMetadataOutApp_TDATA => rxMetadataOutApp_TDATA,
    rxMetadataOutDhcp_TVALID => rxMetadataOutDhcp_TVALID,
    rxMetadataOutDhcp_TREADY => rxMetadataOutDhcp_TREADY,
    rxMetadataOutDhcp_TDATA => rxMetadataOutDhcp_TDATA,
    txDataInApp_TVALID => txDataInApp_TVALID,
    txDataInApp_TREADY => txDataInApp_TREADY,
    txDataInApp_TDATA => txDataInApp_TDATA,
    txDataInApp_TKEEP => txDataInApp_TKEEP,
    txDataInApp_TLAST => txDataInApp_TLAST,
    txDataInDhcp_TVALID => txDataInDhcp_TVALID,
    txDataInDhcp_TREADY => txDataInDhcp_TREADY,
    txDataInDhcp_TDATA => txDataInDhcp_TDATA,
    txDataInDhcp_TKEEP => txDataInDhcp_TKEEP,
    txDataInDhcp_TLAST => txDataInDhcp_TLAST,
    txDataOut_TVALID => txDataOut_TVALID,
    txDataOut_TREADY => txDataOut_TREADY,
    txDataOut_TDATA => txDataOut_TDATA,
    txDataOut_TKEEP => txDataOut_TKEEP,
    txDataOut_TLAST => txDataOut_TLAST,
    txLengthInApp_TVALID => txLengthInApp_TVALID,
    txLengthInApp_TREADY => txLengthInApp_TREADY,
    txLengthInApp_TDATA => txLengthInApp_TDATA,
    txLengthInDhcp_TVALID => txLengthInDhcp_TVALID,
    txLengthInDhcp_TREADY => txLengthInDhcp_TREADY,
    txLengthInDhcp_TDATA => txLengthInDhcp_TDATA,
    txLengthOut_TVALID => txLengthOut_TVALID,
    txLengthOut_TREADY => txLengthOut_TREADY,
    txLengthOut_TDATA => txLengthOut_TDATA,
    txMetadataInApp_TVALID => txMetadataInApp_TVALID,
    txMetadataInApp_TREADY => txMetadataInApp_TREADY,
    txMetadataInApp_TDATA => txMetadataInApp_TDATA,
    txMetadataInDhcp_TVALID => txMetadataInDhcp_TVALID,
    txMetadataInDhcp_TREADY => txMetadataInDhcp_TREADY,
    txMetadataInDhcp_TDATA => txMetadataInDhcp_TDATA,
    txMetadataOut_TVALID => txMetadataOut_TVALID,
    txMetadataOut_TREADY => txMetadataOut_TREADY,
    txMetadataOut_TDATA => txMetadataOut_TDATA,
    aclk => aclk,
    aresetn => aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

