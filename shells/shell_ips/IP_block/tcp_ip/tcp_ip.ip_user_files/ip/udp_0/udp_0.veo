// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: xilinx.labs:hls:udp:1.41
// IP Revision: 1804061220

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
udp_0 your_instance_name (
  .confirmPortStatus_TVALID(confirmPortStatus_TVALID),                // output wire confirmPortStatus_TVALID
  .confirmPortStatus_TREADY(confirmPortStatus_TREADY),                // input wire confirmPortStatus_TREADY
  .confirmPortStatus_TDATA(confirmPortStatus_TDATA),                  // output wire [7 : 0] confirmPortStatus_TDATA
  .inputPathInData_TVALID(inputPathInData_TVALID),                    // input wire inputPathInData_TVALID
  .inputPathInData_TREADY(inputPathInData_TREADY),                    // output wire inputPathInData_TREADY
  .inputPathInData_TDATA(inputPathInData_TDATA),                      // input wire [63 : 0] inputPathInData_TDATA
  .inputPathInData_TKEEP(inputPathInData_TKEEP),                      // input wire [7 : 0] inputPathInData_TKEEP
  .inputPathInData_TLAST(inputPathInData_TLAST),                      // input wire [0 : 0] inputPathInData_TLAST
  .inputPathOutputMetadata_TVALID(inputPathOutputMetadata_TVALID),    // output wire inputPathOutputMetadata_TVALID
  .inputPathOutputMetadata_TREADY(inputPathOutputMetadata_TREADY),    // input wire inputPathOutputMetadata_TREADY
  .inputPathOutputMetadata_TDATA(inputPathOutputMetadata_TDATA),      // output wire [95 : 0] inputPathOutputMetadata_TDATA
  .inputPathPortUnreachable_TVALID(inputPathPortUnreachable_TVALID),  // output wire inputPathPortUnreachable_TVALID
  .inputPathPortUnreachable_TREADY(inputPathPortUnreachable_TREADY),  // input wire inputPathPortUnreachable_TREADY
  .inputPathPortUnreachable_TDATA(inputPathPortUnreachable_TDATA),    // output wire [63 : 0] inputPathPortUnreachable_TDATA
  .inputPathPortUnreachable_TKEEP(inputPathPortUnreachable_TKEEP),    // output wire [7 : 0] inputPathPortUnreachable_TKEEP
  .inputPathPortUnreachable_TLAST(inputPathPortUnreachable_TLAST),    // output wire [0 : 0] inputPathPortUnreachable_TLAST
  .inputpathOutData_TVALID(inputpathOutData_TVALID),                  // output wire inputpathOutData_TVALID
  .inputpathOutData_TREADY(inputpathOutData_TREADY),                  // input wire inputpathOutData_TREADY
  .inputpathOutData_TDATA(inputpathOutData_TDATA),                    // output wire [63 : 0] inputpathOutData_TDATA
  .inputpathOutData_TKEEP(inputpathOutData_TKEEP),                    // output wire [7 : 0] inputpathOutData_TKEEP
  .inputpathOutData_TLAST(inputpathOutData_TLAST),                    // output wire [0 : 0] inputpathOutData_TLAST
  .openPort_TVALID(openPort_TVALID),                                  // input wire openPort_TVALID
  .openPort_TREADY(openPort_TREADY),                                  // output wire openPort_TREADY
  .openPort_TDATA(openPort_TDATA),                                    // input wire [15 : 0] openPort_TDATA
  .outputPathInData_TVALID(outputPathInData_TVALID),                  // input wire outputPathInData_TVALID
  .outputPathInData_TREADY(outputPathInData_TREADY),                  // output wire outputPathInData_TREADY
  .outputPathInData_TDATA(outputPathInData_TDATA),                    // input wire [63 : 0] outputPathInData_TDATA
  .outputPathInData_TKEEP(outputPathInData_TKEEP),                    // input wire [7 : 0] outputPathInData_TKEEP
  .outputPathInData_TLAST(outputPathInData_TLAST),                    // input wire [0 : 0] outputPathInData_TLAST
  .outputPathInMetadata_TVALID(outputPathInMetadata_TVALID),          // input wire outputPathInMetadata_TVALID
  .outputPathInMetadata_TREADY(outputPathInMetadata_TREADY),          // output wire outputPathInMetadata_TREADY
  .outputPathInMetadata_TDATA(outputPathInMetadata_TDATA),            // input wire [95 : 0] outputPathInMetadata_TDATA
  .outputPathOutData_TVALID(outputPathOutData_TVALID),                // output wire outputPathOutData_TVALID
  .outputPathOutData_TREADY(outputPathOutData_TREADY),                // input wire outputPathOutData_TREADY
  .outputPathOutData_TDATA(outputPathOutData_TDATA),                  // output wire [63 : 0] outputPathOutData_TDATA
  .outputPathOutData_TKEEP(outputPathOutData_TKEEP),                  // output wire [7 : 0] outputPathOutData_TKEEP
  .outputPathOutData_TLAST(outputPathOutData_TLAST),                  // output wire [0 : 0] outputPathOutData_TLAST
  .outputpathInLength_TVALID(outputpathInLength_TVALID),              // input wire outputpathInLength_TVALID
  .outputpathInLength_TREADY(outputpathInLength_TREADY),              // output wire outputpathInLength_TREADY
  .outputpathInLength_TDATA(outputpathInLength_TDATA),                // input wire [15 : 0] outputpathInLength_TDATA
  .portRelease_TVALID(portRelease_TVALID),                            // input wire portRelease_TVALID
  .portRelease_TREADY(portRelease_TREADY),                            // output wire portRelease_TREADY
  .portRelease_TDATA(portRelease_TDATA),                              // input wire [15 : 0] portRelease_TDATA
  .aclk(aclk),                                                        // input wire aclk
  .aresetn(aresetn)                                                  // input wire aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

