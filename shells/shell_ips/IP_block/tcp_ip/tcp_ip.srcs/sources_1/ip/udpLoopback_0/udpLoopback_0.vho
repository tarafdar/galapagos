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

-- IP VLNV: xilinx.labs:hls:udpLoopback:1.10
-- IP Revision: 1802231035

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT udpLoopback_0
  PORT (
    lbPortOpenReplyIn_TVALID : IN STD_LOGIC;
    lbPortOpenReplyIn_TREADY : OUT STD_LOGIC;
    lbPortOpenReplyIn_TDATA : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    lbRequestPortOpenOut_TVALID : OUT STD_LOGIC;
    lbRequestPortOpenOut_TREADY : IN STD_LOGIC;
    lbRequestPortOpenOut_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    lbRxDataIn_TVALID : IN STD_LOGIC;
    lbRxDataIn_TREADY : OUT STD_LOGIC;
    lbRxDataIn_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    lbRxDataIn_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    lbRxDataIn_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    lbRxMetadataIn_TVALID : IN STD_LOGIC;
    lbRxMetadataIn_TREADY : OUT STD_LOGIC;
    lbRxMetadataIn_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    lbTxDataOut_TVALID : OUT STD_LOGIC;
    lbTxDataOut_TREADY : IN STD_LOGIC;
    lbTxDataOut_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    lbTxDataOut_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    lbTxDataOut_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    lbTxLengthOut_TVALID : OUT STD_LOGIC;
    lbTxLengthOut_TREADY : IN STD_LOGIC;
    lbTxLengthOut_TDATA : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    lbTxMetadataOut_TVALID : OUT STD_LOGIC;
    lbTxMetadataOut_TREADY : IN STD_LOGIC;
    lbTxMetadataOut_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : udpLoopback_0
  PORT MAP (
    lbPortOpenReplyIn_TVALID => lbPortOpenReplyIn_TVALID,
    lbPortOpenReplyIn_TREADY => lbPortOpenReplyIn_TREADY,
    lbPortOpenReplyIn_TDATA => lbPortOpenReplyIn_TDATA,
    lbRequestPortOpenOut_TVALID => lbRequestPortOpenOut_TVALID,
    lbRequestPortOpenOut_TREADY => lbRequestPortOpenOut_TREADY,
    lbRequestPortOpenOut_TDATA => lbRequestPortOpenOut_TDATA,
    lbRxDataIn_TVALID => lbRxDataIn_TVALID,
    lbRxDataIn_TREADY => lbRxDataIn_TREADY,
    lbRxDataIn_TDATA => lbRxDataIn_TDATA,
    lbRxDataIn_TKEEP => lbRxDataIn_TKEEP,
    lbRxDataIn_TLAST => lbRxDataIn_TLAST,
    lbRxMetadataIn_TVALID => lbRxMetadataIn_TVALID,
    lbRxMetadataIn_TREADY => lbRxMetadataIn_TREADY,
    lbRxMetadataIn_TDATA => lbRxMetadataIn_TDATA,
    lbTxDataOut_TVALID => lbTxDataOut_TVALID,
    lbTxDataOut_TREADY => lbTxDataOut_TREADY,
    lbTxDataOut_TDATA => lbTxDataOut_TDATA,
    lbTxDataOut_TKEEP => lbTxDataOut_TKEEP,
    lbTxDataOut_TLAST => lbTxDataOut_TLAST,
    lbTxLengthOut_TVALID => lbTxLengthOut_TVALID,
    lbTxLengthOut_TREADY => lbTxLengthOut_TREADY,
    lbTxLengthOut_TDATA => lbTxLengthOut_TDATA,
    lbTxMetadataOut_TVALID => lbTxMetadataOut_TVALID,
    lbTxMetadataOut_TREADY => lbTxMetadataOut_TREADY,
    lbTxMetadataOut_TDATA => lbTxMetadataOut_TDATA,
    aclk => aclk,
    aresetn => aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

