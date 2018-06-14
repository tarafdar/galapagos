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

// IP VLNV: ethz.systems:hls:arp_server:1.0
// IP Revision: 1804061219

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
arp_server_ip your_instance_name (
  .myMacAddress_V(myMacAddress_V),                  // input wire [47 : 0] myMacAddress_V
  .myIpAddress_V(myIpAddress_V),                    // input wire [31 : 0] myIpAddress_V
  .arpDataIn_TVALID(arpDataIn_TVALID),              // input wire arpDataIn_TVALID
  .arpDataIn_TREADY(arpDataIn_TREADY),              // output wire arpDataIn_TREADY
  .arpDataIn_TDATA(arpDataIn_TDATA),                // input wire [63 : 0] arpDataIn_TDATA
  .arpDataIn_TKEEP(arpDataIn_TKEEP),                // input wire [7 : 0] arpDataIn_TKEEP
  .arpDataIn_TLAST(arpDataIn_TLAST),                // input wire [0 : 0] arpDataIn_TLAST
  .arpDataOut_TVALID(arpDataOut_TVALID),            // output wire arpDataOut_TVALID
  .arpDataOut_TREADY(arpDataOut_TREADY),            // input wire arpDataOut_TREADY
  .arpDataOut_TDATA(arpDataOut_TDATA),              // output wire [63 : 0] arpDataOut_TDATA
  .arpDataOut_TKEEP(arpDataOut_TKEEP),              // output wire [7 : 0] arpDataOut_TKEEP
  .arpDataOut_TLAST(arpDataOut_TLAST),              // output wire [0 : 0] arpDataOut_TLAST
  .macIpEncode_req_TVALID(macIpEncode_req_TVALID),  // input wire macIpEncode_req_TVALID
  .macIpEncode_req_TREADY(macIpEncode_req_TREADY),  // output wire macIpEncode_req_TREADY
  .macIpEncode_req_TDATA(macIpEncode_req_TDATA),    // input wire [31 : 0] macIpEncode_req_TDATA
  .macIpEncode_rsp_TVALID(macIpEncode_rsp_TVALID),  // output wire macIpEncode_rsp_TVALID
  .macIpEncode_rsp_TREADY(macIpEncode_rsp_TREADY),  // input wire macIpEncode_rsp_TREADY
  .macIpEncode_rsp_TDATA(macIpEncode_rsp_TDATA),    // output wire [55 : 0] macIpEncode_rsp_TDATA
  .macLookup_req_TVALID(macLookup_req_TVALID),      // output wire macLookup_req_TVALID
  .macLookup_req_TREADY(macLookup_req_TREADY),      // input wire macLookup_req_TREADY
  .macLookup_req_TDATA(macLookup_req_TDATA),        // output wire [39 : 0] macLookup_req_TDATA
  .macLookup_resp_TVALID(macLookup_resp_TVALID),    // input wire macLookup_resp_TVALID
  .macLookup_resp_TREADY(macLookup_resp_TREADY),    // output wire macLookup_resp_TREADY
  .macLookup_resp_TDATA(macLookup_resp_TDATA),      // input wire [55 : 0] macLookup_resp_TDATA
  .macUpdate_req_TVALID(macUpdate_req_TVALID),      // output wire macUpdate_req_TVALID
  .macUpdate_req_TREADY(macUpdate_req_TREADY),      // input wire macUpdate_req_TREADY
  .macUpdate_req_TDATA(macUpdate_req_TDATA),        // output wire [87 : 0] macUpdate_req_TDATA
  .macUpdate_resp_TVALID(macUpdate_resp_TVALID),    // input wire macUpdate_resp_TVALID
  .macUpdate_resp_TREADY(macUpdate_resp_TREADY),    // output wire macUpdate_resp_TREADY
  .macUpdate_resp_TDATA(macUpdate_resp_TDATA),      // input wire [55 : 0] macUpdate_resp_TDATA
  .aclk(aclk),                                      // input wire aclk
  .aresetn(aresetn)                                // input wire aresetn
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

