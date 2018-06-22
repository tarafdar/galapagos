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

-- IP VLNV: xilinx.labs:hls:udp:1.41
-- IP Revision: 1804061220

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT udp_0
  PORT (
    confirmPortStatus_TVALID : OUT STD_LOGIC;
    confirmPortStatus_TREADY : IN STD_LOGIC;
    confirmPortStatus_TDATA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    inputPathInData_TVALID : IN STD_LOGIC;
    inputPathInData_TREADY : OUT STD_LOGIC;
    inputPathInData_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    inputPathInData_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    inputPathInData_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    inputPathOutputMetadata_TVALID : OUT STD_LOGIC;
    inputPathOutputMetadata_TREADY : IN STD_LOGIC;
    inputPathOutputMetadata_TDATA : OUT STD_LOGIC_VECTOR(95 DOWNTO 0);
    inputPathPortUnreachable_TVALID : OUT STD_LOGIC;
    inputPathPortUnreachable_TREADY : IN STD_LOGIC;
    inputPathPortUnreachable_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    inputPathPortUnreachable_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    inputPathPortUnreachable_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    inputpathOutData_TVALID : OUT STD_LOGIC;
    inputpathOutData_TREADY : IN STD_LOGIC;
    inputpathOutData_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    inputpathOutData_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    inputpathOutData_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    openPort_TVALID : IN STD_LOGIC;
    openPort_TREADY : OUT STD_LOGIC;
    openPort_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    outputPathInData_TVALID : IN STD_LOGIC;
    outputPathInData_TREADY : OUT STD_LOGIC;
    outputPathInData_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    outputPathInData_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    outputPathInData_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    outputPathInMetadata_TVALID : IN STD_LOGIC;
    outputPathInMetadata_TREADY : OUT STD_LOGIC;
    outputPathInMetadata_TDATA : IN STD_LOGIC_VECTOR(95 DOWNTO 0);
    outputPathOutData_TVALID : OUT STD_LOGIC;
    outputPathOutData_TREADY : IN STD_LOGIC;
    outputPathOutData_TDATA : OUT STD_LOGIC_VECTOR(63 DOWNTO 0);
    outputPathOutData_TKEEP : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    outputPathOutData_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    outputpathInLength_TVALID : IN STD_LOGIC;
    outputpathInLength_TREADY : OUT STD_LOGIC;
    outputpathInLength_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    portRelease_TVALID : IN STD_LOGIC;
    portRelease_TREADY : OUT STD_LOGIC;
    portRelease_TDATA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : udp_0
  PORT MAP (
    confirmPortStatus_TVALID => confirmPortStatus_TVALID,
    confirmPortStatus_TREADY => confirmPortStatus_TREADY,
    confirmPortStatus_TDATA => confirmPortStatus_TDATA,
    inputPathInData_TVALID => inputPathInData_TVALID,
    inputPathInData_TREADY => inputPathInData_TREADY,
    inputPathInData_TDATA => inputPathInData_TDATA,
    inputPathInData_TKEEP => inputPathInData_TKEEP,
    inputPathInData_TLAST => inputPathInData_TLAST,
    inputPathOutputMetadata_TVALID => inputPathOutputMetadata_TVALID,
    inputPathOutputMetadata_TREADY => inputPathOutputMetadata_TREADY,
    inputPathOutputMetadata_TDATA => inputPathOutputMetadata_TDATA,
    inputPathPortUnreachable_TVALID => inputPathPortUnreachable_TVALID,
    inputPathPortUnreachable_TREADY => inputPathPortUnreachable_TREADY,
    inputPathPortUnreachable_TDATA => inputPathPortUnreachable_TDATA,
    inputPathPortUnreachable_TKEEP => inputPathPortUnreachable_TKEEP,
    inputPathPortUnreachable_TLAST => inputPathPortUnreachable_TLAST,
    inputpathOutData_TVALID => inputpathOutData_TVALID,
    inputpathOutData_TREADY => inputpathOutData_TREADY,
    inputpathOutData_TDATA => inputpathOutData_TDATA,
    inputpathOutData_TKEEP => inputpathOutData_TKEEP,
    inputpathOutData_TLAST => inputpathOutData_TLAST,
    openPort_TVALID => openPort_TVALID,
    openPort_TREADY => openPort_TREADY,
    openPort_TDATA => openPort_TDATA,
    outputPathInData_TVALID => outputPathInData_TVALID,
    outputPathInData_TREADY => outputPathInData_TREADY,
    outputPathInData_TDATA => outputPathInData_TDATA,
    outputPathInData_TKEEP => outputPathInData_TKEEP,
    outputPathInData_TLAST => outputPathInData_TLAST,
    outputPathInMetadata_TVALID => outputPathInMetadata_TVALID,
    outputPathInMetadata_TREADY => outputPathInMetadata_TREADY,
    outputPathInMetadata_TDATA => outputPathInMetadata_TDATA,
    outputPathOutData_TVALID => outputPathOutData_TVALID,
    outputPathOutData_TREADY => outputPathOutData_TREADY,
    outputPathOutData_TDATA => outputPathOutData_TDATA,
    outputPathOutData_TKEEP => outputPathOutData_TKEEP,
    outputPathOutData_TLAST => outputPathOutData_TLAST,
    outputpathInLength_TVALID => outputpathInLength_TVALID,
    outputpathInLength_TREADY => outputpathInLength_TREADY,
    outputpathInLength_TDATA => outputpathInLength_TDATA,
    portRelease_TVALID => portRelease_TVALID,
    portRelease_TREADY => portRelease_TREADY,
    portRelease_TDATA => portRelease_TDATA,
    aclk => aclk,
    aresetn => aresetn
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

