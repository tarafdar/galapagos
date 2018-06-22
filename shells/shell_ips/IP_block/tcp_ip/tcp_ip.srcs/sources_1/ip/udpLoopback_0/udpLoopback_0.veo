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

// IP VLNV: xilinx.labs:hls:udpLoopback:1.10
// IP Revision: 1802231035

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
udpLoopback_0 your_instance_name (
  .lbPortOpenReplyIn_TVALID(lbPortOpenReplyIn_TVALID),        // input wire lbPortOpenReplyIn_TVALID
  .lbPortOpenReplyIn_TREADY(lbPortOpenReplyIn_TREADY),        // output wire lbPortOpenReplyIn_TREADY
  .lbPortOpenReplyIn_TDATA(lbPortOpenReplyIn_TDATA),          // input wire [7 : 0] lbPortOpenReplyIn_TDATA
  .lbRequestPortOpenOut_TVALID(lbRequestPortOpenOut_TVALID),  // output wire lbRequestPortOpenOut_TVALID
  .lbRequestPortOpenOut_TREADY(lbRequestPortOpenOut_TREADY),  // input wire lbRequestPortOpenOut_TREADY
  .lbRequestPortOpenOut_TDATA(lbRequestPortOpenOut_TDATA),    // output wire [15 : 0] lbRequestPortOpenOut_TDATA
  .lbRxDataIn_TVALID(lbRxDataIn_TVALID),                      // input wire lbRxDataIn_TVALID
  .lbRxDataIn_TREADY(lbRxDataIn_TREADY),                      // output wire lbRxDataIn_TREADY
  .lbRxDataIn_TDATA(lbRxDataIn_TDATA),                        // input wire [63 : 0] lbRxDataIn_TDATA
  .lbRxDataIn_TKEEP(lbRxDataIn_TKEEP),                        // input wire [7 : 0] lbRxDataIn_TKEEP
  .lbRxDataIn_TLAST(lbRxDataIn_TLAST),                        // input wire [0 : 0] lbRxDataIn_TLAST
  .lbRxMetadataIn_TVALID(lbRxMetadataIn_TVALID),              // input wire lbRxMetadataIn_TVALID
  .lbRxMetadataIn_TREADY(lbRxMetadataIn_TREADY),              // output wire lbRxMetadataIn_TREADY
  .lbRxMetadataIn_TDATA(lbRxMetadataIn_TDATA),                // input wire [95 : 0] lbRxMetadataIn_TDATA
  .lbTxDataOut_TVALID(lbTxDataOut_TVALID),                    // output wire lbTxDataOut_TVALID
  .lbTxDataOut_TREADY(lbTxDataOut_TREADY),                    // input wire lbTxDataOut_TREADY
  .lbTxDataOut_TDATA(lbTxDataOut_TDATA),                      // output wire [63 : 0] lbTxDataOut_TDATA
  .lbTxDataOut_TKEEP(lbTxDataOut_TKEEP),                      // output wire [7 : 0] lbTxDataOut_TKEEP
  .lbTxDataOut_TLAST(lbTxDataOut_TLAST),                      // output wire [0 : 0] lbTxDataOut_TLAST
  .lbTxLengthOut_TVALID(lbTxLengthOut_TVALID),                // output wire lbTxLengthOut_TVALID
  .lbTxLengthOut_TREADY(lbTxLengthOut_TREADY),                // input wire lbTxLengthOut_TREADY
  .lbTxLengthOut_TDATA(lbTxLengthOut_TDATA),                  // output wire [15 : 0] lbTxLengthOut_TDATA
  .lbTxMetadataOut_TVALID(lbTxMetadataOut_TVALID),            // output wire lbTxMetadataOut_TVALID
  .lbTxMetadataOut_TREADY(lbTxMetadataOut_TREADY),            // input wire lbTxMetadataOut_TREADY
  .lbTxMetadataOut_TDATA(lbTxMetadataOut_TDATA),              // output wire [95 : 0] lbTxMetadataOut_TDATA
  .aclk(aclk),                                                // input wire aclk
  .aresetn(aresetn)                                          // input wire aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

