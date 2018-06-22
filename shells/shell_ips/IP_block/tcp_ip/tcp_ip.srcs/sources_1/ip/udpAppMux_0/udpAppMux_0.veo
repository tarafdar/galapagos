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

// IP VLNV: xilinx.labs:hls:udpAppMux:1.05
// IP Revision: 1802231037

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
udpAppMux_0 your_instance_name (
  .portOpenReplyIn_TVALID(portOpenReplyIn_TVALID),              // input wire portOpenReplyIn_TVALID
  .portOpenReplyIn_TREADY(portOpenReplyIn_TREADY),              // output wire portOpenReplyIn_TREADY
  .portOpenReplyIn_TDATA(portOpenReplyIn_TDATA),                // input wire [7 : 0] portOpenReplyIn_TDATA
  .portOpenReplyOutApp_TVALID(portOpenReplyOutApp_TVALID),      // output wire portOpenReplyOutApp_TVALID
  .portOpenReplyOutApp_TREADY(portOpenReplyOutApp_TREADY),      // input wire portOpenReplyOutApp_TREADY
  .portOpenReplyOutApp_TDATA(portOpenReplyOutApp_TDATA),        // output wire [7 : 0] portOpenReplyOutApp_TDATA
  .portOpenReplyOutDhcp_TVALID(portOpenReplyOutDhcp_TVALID),    // output wire portOpenReplyOutDhcp_TVALID
  .portOpenReplyOutDhcp_TREADY(portOpenReplyOutDhcp_TREADY),    // input wire portOpenReplyOutDhcp_TREADY
  .portOpenReplyOutDhcp_TDATA(portOpenReplyOutDhcp_TDATA),      // output wire [7 : 0] portOpenReplyOutDhcp_TDATA
  .requestPortOpenInApp_TVALID(requestPortOpenInApp_TVALID),    // input wire requestPortOpenInApp_TVALID
  .requestPortOpenInApp_TREADY(requestPortOpenInApp_TREADY),    // output wire requestPortOpenInApp_TREADY
  .requestPortOpenInApp_TDATA(requestPortOpenInApp_TDATA),      // input wire [15 : 0] requestPortOpenInApp_TDATA
  .requestPortOpenInDhcp_TVALID(requestPortOpenInDhcp_TVALID),  // input wire requestPortOpenInDhcp_TVALID
  .requestPortOpenInDhcp_TREADY(requestPortOpenInDhcp_TREADY),  // output wire requestPortOpenInDhcp_TREADY
  .requestPortOpenInDhcp_TDATA(requestPortOpenInDhcp_TDATA),    // input wire [15 : 0] requestPortOpenInDhcp_TDATA
  .requestPortOpenOut_TVALID(requestPortOpenOut_TVALID),        // output wire requestPortOpenOut_TVALID
  .requestPortOpenOut_TREADY(requestPortOpenOut_TREADY),        // input wire requestPortOpenOut_TREADY
  .requestPortOpenOut_TDATA(requestPortOpenOut_TDATA),          // output wire [15 : 0] requestPortOpenOut_TDATA
  .rxDataIn_TVALID(rxDataIn_TVALID),                            // input wire rxDataIn_TVALID
  .rxDataIn_TREADY(rxDataIn_TREADY),                            // output wire rxDataIn_TREADY
  .rxDataIn_TDATA(rxDataIn_TDATA),                              // input wire [63 : 0] rxDataIn_TDATA
  .rxDataIn_TKEEP(rxDataIn_TKEEP),                              // input wire [7 : 0] rxDataIn_TKEEP
  .rxDataIn_TLAST(rxDataIn_TLAST),                              // input wire [0 : 0] rxDataIn_TLAST
  .rxDataOutApp_TVALID(rxDataOutApp_TVALID),                    // output wire rxDataOutApp_TVALID
  .rxDataOutApp_TREADY(rxDataOutApp_TREADY),                    // input wire rxDataOutApp_TREADY
  .rxDataOutApp_TDATA(rxDataOutApp_TDATA),                      // output wire [63 : 0] rxDataOutApp_TDATA
  .rxDataOutApp_TKEEP(rxDataOutApp_TKEEP),                      // output wire [7 : 0] rxDataOutApp_TKEEP
  .rxDataOutApp_TLAST(rxDataOutApp_TLAST),                      // output wire [0 : 0] rxDataOutApp_TLAST
  .rxDataOutDhcp_TVALID(rxDataOutDhcp_TVALID),                  // output wire rxDataOutDhcp_TVALID
  .rxDataOutDhcp_TREADY(rxDataOutDhcp_TREADY),                  // input wire rxDataOutDhcp_TREADY
  .rxDataOutDhcp_TDATA(rxDataOutDhcp_TDATA),                    // output wire [63 : 0] rxDataOutDhcp_TDATA
  .rxDataOutDhcp_TKEEP(rxDataOutDhcp_TKEEP),                    // output wire [7 : 0] rxDataOutDhcp_TKEEP
  .rxDataOutDhcp_TLAST(rxDataOutDhcp_TLAST),                    // output wire [0 : 0] rxDataOutDhcp_TLAST
  .rxMetadataIn_TVALID(rxMetadataIn_TVALID),                    // input wire rxMetadataIn_TVALID
  .rxMetadataIn_TREADY(rxMetadataIn_TREADY),                    // output wire rxMetadataIn_TREADY
  .rxMetadataIn_TDATA(rxMetadataIn_TDATA),                      // input wire [95 : 0] rxMetadataIn_TDATA
  .rxMetadataOutApp_TVALID(rxMetadataOutApp_TVALID),            // output wire rxMetadataOutApp_TVALID
  .rxMetadataOutApp_TREADY(rxMetadataOutApp_TREADY),            // input wire rxMetadataOutApp_TREADY
  .rxMetadataOutApp_TDATA(rxMetadataOutApp_TDATA),              // output wire [95 : 0] rxMetadataOutApp_TDATA
  .rxMetadataOutDhcp_TVALID(rxMetadataOutDhcp_TVALID),          // output wire rxMetadataOutDhcp_TVALID
  .rxMetadataOutDhcp_TREADY(rxMetadataOutDhcp_TREADY),          // input wire rxMetadataOutDhcp_TREADY
  .rxMetadataOutDhcp_TDATA(rxMetadataOutDhcp_TDATA),            // output wire [95 : 0] rxMetadataOutDhcp_TDATA
  .txDataInApp_TVALID(txDataInApp_TVALID),                      // input wire txDataInApp_TVALID
  .txDataInApp_TREADY(txDataInApp_TREADY),                      // output wire txDataInApp_TREADY
  .txDataInApp_TDATA(txDataInApp_TDATA),                        // input wire [63 : 0] txDataInApp_TDATA
  .txDataInApp_TKEEP(txDataInApp_TKEEP),                        // input wire [7 : 0] txDataInApp_TKEEP
  .txDataInApp_TLAST(txDataInApp_TLAST),                        // input wire [0 : 0] txDataInApp_TLAST
  .txDataInDhcp_TVALID(txDataInDhcp_TVALID),                    // input wire txDataInDhcp_TVALID
  .txDataInDhcp_TREADY(txDataInDhcp_TREADY),                    // output wire txDataInDhcp_TREADY
  .txDataInDhcp_TDATA(txDataInDhcp_TDATA),                      // input wire [63 : 0] txDataInDhcp_TDATA
  .txDataInDhcp_TKEEP(txDataInDhcp_TKEEP),                      // input wire [7 : 0] txDataInDhcp_TKEEP
  .txDataInDhcp_TLAST(txDataInDhcp_TLAST),                      // input wire [0 : 0] txDataInDhcp_TLAST
  .txDataOut_TVALID(txDataOut_TVALID),                          // output wire txDataOut_TVALID
  .txDataOut_TREADY(txDataOut_TREADY),                          // input wire txDataOut_TREADY
  .txDataOut_TDATA(txDataOut_TDATA),                            // output wire [63 : 0] txDataOut_TDATA
  .txDataOut_TKEEP(txDataOut_TKEEP),                            // output wire [7 : 0] txDataOut_TKEEP
  .txDataOut_TLAST(txDataOut_TLAST),                            // output wire [0 : 0] txDataOut_TLAST
  .txLengthInApp_TVALID(txLengthInApp_TVALID),                  // input wire txLengthInApp_TVALID
  .txLengthInApp_TREADY(txLengthInApp_TREADY),                  // output wire txLengthInApp_TREADY
  .txLengthInApp_TDATA(txLengthInApp_TDATA),                    // input wire [15 : 0] txLengthInApp_TDATA
  .txLengthInDhcp_TVALID(txLengthInDhcp_TVALID),                // input wire txLengthInDhcp_TVALID
  .txLengthInDhcp_TREADY(txLengthInDhcp_TREADY),                // output wire txLengthInDhcp_TREADY
  .txLengthInDhcp_TDATA(txLengthInDhcp_TDATA),                  // input wire [15 : 0] txLengthInDhcp_TDATA
  .txLengthOut_TVALID(txLengthOut_TVALID),                      // output wire txLengthOut_TVALID
  .txLengthOut_TREADY(txLengthOut_TREADY),                      // input wire txLengthOut_TREADY
  .txLengthOut_TDATA(txLengthOut_TDATA),                        // output wire [15 : 0] txLengthOut_TDATA
  .txMetadataInApp_TVALID(txMetadataInApp_TVALID),              // input wire txMetadataInApp_TVALID
  .txMetadataInApp_TREADY(txMetadataInApp_TREADY),              // output wire txMetadataInApp_TREADY
  .txMetadataInApp_TDATA(txMetadataInApp_TDATA),                // input wire [95 : 0] txMetadataInApp_TDATA
  .txMetadataInDhcp_TVALID(txMetadataInDhcp_TVALID),            // input wire txMetadataInDhcp_TVALID
  .txMetadataInDhcp_TREADY(txMetadataInDhcp_TREADY),            // output wire txMetadataInDhcp_TREADY
  .txMetadataInDhcp_TDATA(txMetadataInDhcp_TDATA),              // input wire [95 : 0] txMetadataInDhcp_TDATA
  .txMetadataOut_TVALID(txMetadataOut_TVALID),                  // output wire txMetadataOut_TVALID
  .txMetadataOut_TREADY(txMetadataOut_TREADY),                  // input wire txMetadataOut_TREADY
  .txMetadataOut_TDATA(txMetadataOut_TDATA),                    // output wire [95 : 0] txMetadataOut_TDATA
  .aclk(aclk),                                                  // input wire aclk
  .aresetn(aresetn)                                            // input wire aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

