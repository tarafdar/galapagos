set C_TypeInfoList {{ 
"packetMaker" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"packetOut": [[],"0"] }, {"id": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "stream<ap_axis>", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axis", {"struct": [[],[],[{ "packet": [[], "4"]},{ "last": [[], "5"]},{ "dest": [[], "6"]}],""]}], 
"6": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"1": [ "ap_int<32>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"4": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName packetMaker
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {packetMaker}
set C_modelType { void 0 }
set C_modelArgList {
	{ packetOut_V_packet_V int 64 regular {axi_s 1 volatile  { packetOut Data } }  }
	{ packetOut_V_last_V int 1 regular {axi_s 1 volatile  { packetOut Last } }  }
	{ packetOut_V_dest_V int 8 regular {axi_s 1 volatile  { packetOut Dest } }  }
	{ id_V int 32 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "packetOut_V_packet_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "packetOut.V.packet.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "packetOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "packetOut.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "id_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "id.V","cData": "int32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ packetOut_TDATA sc_out sc_lv 64 signal 0 } 
	{ packetOut_TVALID sc_out sc_logic 1 outvld 2 } 
	{ packetOut_TREADY sc_in sc_logic 1 outacc 2 } 
	{ packetOut_TLAST sc_out sc_lv 1 signal 1 } 
	{ packetOut_TDEST sc_out sc_lv 8 signal 2 } 
	{ id_V sc_in sc_lv 32 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "packetOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "packetOut_V_packet_V", "role": "default" }} , 
 	{ "name": "packetOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "packetOut_V_dest_V", "role": "default" }} , 
 	{ "name": "packetOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "packetOut_V_dest_V", "role": "default" }} , 
 	{ "name": "packetOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packetOut_V_last_V", "role": "default" }} , 
 	{ "name": "packetOut_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packetOut_V_dest_V", "role": "default" }} , 
 	{ "name": "id_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "id_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "packetMaker",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "1",
		"Port" : [
		{"Name" : "packetOut_V_packet_V", "Type" : "Axis", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "packetOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "packetOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "packetOut_V_dest_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "id_V", "Type" : "None", "Direction" : "I"},
		{"Name" : "packet1", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.packet1_U", "Parent" : "0"}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	packetOut_V_packet_V { axis {  { packetOut_TDATA out_data 1 64 } } }
	packetOut_V_last_V { axis {  { packetOut_TLAST out_data 1 1 } } }
	packetOut_V_dest_V { axis {  { packetOut_TVALID out_vld 1 1 }  { packetOut_TREADY out_acc 0 1 }  { packetOut_TDEST out_data 1 8 } } }
	id_V { ap_none {  { id_V in_data 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
