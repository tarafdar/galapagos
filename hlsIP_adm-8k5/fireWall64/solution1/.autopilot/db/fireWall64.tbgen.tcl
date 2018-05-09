set C_TypeInfoList {{ 
"fireWall64" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"eth_address": [[],{ "pointer": "0"}] }, {"stream_in": [[],"1"] }, {"stream_out": [[],"2"] }, {"observedAddress_out": [[],{ "pointer": "0"}] }, {"dest_out": [[],{ "pointer": "3"}] }, {"match_out": [[],{ "pointer": "4"}] }],[],""], 
"0": [ "ap_uint<48>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 48}}]],""]}}], 
"1": [ "stream<ap_axis_in>", {"hls_type": {"stream": [[[[],"5"]],"6"]}}], 
"5": [ "ap_axis_in", {"struct": [[],[],[{ "data": [[], "7"]},{ "last": [[], "8"]}],""]}], 
"7": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"3": [ "ap_uint<16>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 16}}]],""]}}], 
"4": [ "ap_int<1>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"8": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"2": [ "stream<ap_axis_out>", {"hls_type": {"stream": [[[[],"9"]],"6"]}}], 
"9": [ "ap_axis_out", {"struct": [[],[],[{ "data": [[], "7"]},{ "dest": [[], "10"]},{ "last": [[], "8"]}],""]}], 
"10": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}],
"6": ["hls", ""]
}}
set moduleName fireWall64
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fireWall64}
set C_modelType { void 0 }
set C_modelArgList {
	{ eth_address_V int 48 regular {pointer 0}  }
	{ stream_in_V_data_V int 64 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ stream_out_V_data_V int 64 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_dest_V int 8 regular {axi_s 1 volatile  { stream_out Dest } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
	{ observedAddress_out_V int 48 unused {pointer 0}  }
	{ dest_out_V int 16 regular {pointer 1}  }
	{ match_out_V int 1 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "eth_address_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "eth_address.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_in.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_out.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "stream_out.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "observedAddress_out_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "observedAddress_out.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dest_out_V", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":15,"cElement": [{"cName": "dest_out.V","cData": "uint16","bit_use": { "low": 0,"up": 15},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "match_out_V", "interface" : "wire", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "match_out.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ eth_address_V sc_in sc_lv 48 signal 0 } 
	{ stream_in_TDATA sc_in sc_lv 64 signal 1 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ stream_out_TDATA sc_out sc_lv 64 signal 3 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 5 } 
	{ stream_out_TDEST sc_out sc_lv 8 signal 4 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ observedAddress_out_V sc_in sc_lv 48 signal 6 } 
	{ dest_out_V sc_out sc_lv 16 signal 7 } 
	{ dest_out_V_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ match_out_V sc_out sc_lv 1 signal 8 } 
	{ match_out_V_ap_vld sc_out sc_logic 1 outvld 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "eth_address_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "eth_address_V", "role": "default" }} , 
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "observedAddress_out_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "observedAddress_out_V", "role": "default" }} , 
 	{ "name": "dest_out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "dest_out_V", "role": "default" }} , 
 	{ "name": "dest_out_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dest_out_V", "role": "ap_vld" }} , 
 	{ "name": "match_out_V", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "match_out_V", "role": "default" }} , 
 	{ "name": "match_out_V_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "match_out_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "fireWall64",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"Port" : [
			{"Name" : "eth_address_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "observedAddress_out_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "dest_out_V", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "match_out_V", "Type" : "Vld", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	fireWall64 {
		eth_address_V {Type I LastRead 2 FirstWrite -1}
		stream_in_V_data_V {Type I LastRead 3 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 3 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 3}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		observedAddress_out_V {Type I LastRead -1 FirstWrite -1}
		dest_out_V {Type O LastRead -1 FirstWrite 2}
		match_out_V {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	eth_address_V { ap_none {  { eth_address_V in_data 0 48 } } }
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 64 } } }
	stream_in_V_last_V { axis {  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 }  { stream_in_TLAST in_data 0 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TDATA out_data 1 64 } } }
	stream_out_V_dest_V { axis {  { stream_out_TDEST out_data 1 8 } } }
	stream_out_V_last_V { axis {  { stream_out_TVALID out_vld 1 1 }  { stream_out_TREADY out_acc 0 1 }  { stream_out_TLAST out_data 1 1 } } }
	observedAddress_out_V { ap_none {  { observedAddress_out_V in_data 0 48 } } }
	dest_out_V { ap_vld {  { dest_out_V out_data 1 16 }  { dest_out_V_ap_vld out_vld 1 1 } } }
	match_out_V { ap_vld {  { match_out_V out_data 1 1 }  { match_out_V_ap_vld out_vld 1 1 } } }
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
