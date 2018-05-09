set C_TypeInfoList {{ 
"fireWall64_2" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"stream_in": [[],"0"] }, {"stream_out": [[],"0"] }, {"stream_garbage": [[],"0"] }, {"match_in": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "stream<ap_axis>", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "ap_axis", {"struct": [[],[],[{ "data": [[], "4"]},{ "dest": [[], "5"]},{ "last": [[], "6"]}],""]}], 
"1": [ "ap_int<1>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"4": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName fireWall64_2
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {fireWall64_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ stream_in_V_data_V int 64 regular {axi_s 0 volatile  { stream_in Data } }  }
	{ stream_in_V_dest_V int 8 regular {axi_s 0 volatile  { stream_in Dest } }  }
	{ stream_in_V_last_V int 1 regular {axi_s 0 volatile  { stream_in Last } }  }
	{ stream_out_V_data_V int 64 regular {axi_s 1 volatile  { stream_out Data } }  }
	{ stream_out_V_dest_V int 8 regular {axi_s 1 volatile  { stream_out Dest } }  }
	{ stream_out_V_last_V int 1 regular {axi_s 1 volatile  { stream_out Last } }  }
	{ stream_garbage_V_data_V int 64 regular {axi_s 1 volatile  { stream_garbage Data } }  }
	{ stream_garbage_V_dest_V int 8 regular {axi_s 1 volatile  { stream_garbage Dest } }  }
	{ stream_garbage_V_last_V int 1 regular {axi_s 1 volatile  { stream_garbage Last } }  }
	{ match_in_V int 1 regular {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "stream_in_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_in.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "stream_in.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_out.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "stream_out.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_garbage_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "stream_garbage.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_garbage_V_dest_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "stream_garbage.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "stream_garbage_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "stream_garbage.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "match_in_V", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "match_in.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ stream_in_TDATA sc_in sc_lv 64 signal 0 } 
	{ stream_in_TVALID sc_in sc_logic 1 invld 2 } 
	{ stream_in_TREADY sc_out sc_logic 1 inacc 2 } 
	{ stream_in_TDEST sc_in sc_lv 8 signal 1 } 
	{ stream_in_TLAST sc_in sc_lv 1 signal 2 } 
	{ stream_out_TDATA sc_out sc_lv 64 signal 3 } 
	{ stream_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ stream_out_TREADY sc_in sc_logic 1 outacc 5 } 
	{ stream_out_TDEST sc_out sc_lv 8 signal 4 } 
	{ stream_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ stream_garbage_TDATA sc_out sc_lv 64 signal 6 } 
	{ stream_garbage_TVALID sc_out sc_logic 1 outvld 8 } 
	{ stream_garbage_TREADY sc_in sc_logic 1 outacc 8 } 
	{ stream_garbage_TDEST sc_out sc_lv 8 signal 7 } 
	{ stream_garbage_TLAST sc_out sc_lv 1 signal 8 } 
	{ match_in_V sc_in sc_lv 1 signal 9 } 
	{ match_in_V_ap_vld sc_in sc_logic 1 invld 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "stream_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stream_in_V_data_V", "role": "default" }} , 
 	{ "name": "stream_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_in_TDEST", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_in_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_in_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stream_out_V_data_V", "role": "default" }} , 
 	{ "name": "stream_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_out_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_out_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_out_V_last_V", "role": "default" }} , 
 	{ "name": "stream_garbage_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "stream_garbage_V_data_V", "role": "default" }} , 
 	{ "name": "stream_garbage_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "stream_garbage_V_last_V", "role": "default" }} , 
 	{ "name": "stream_garbage_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "stream_garbage_V_last_V", "role": "default" }} , 
 	{ "name": "stream_garbage_TDEST", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "stream_garbage_V_dest_V", "role": "default" }} , 
 	{ "name": "stream_garbage_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "stream_garbage_V_last_V", "role": "default" }} , 
 	{ "name": "match_in_V", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "match_in_V", "role": "default" }} , 
 	{ "name": "match_in_V_ap_vld", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "match_in_V", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "fireWall64_2",
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
			{"Name" : "stream_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "stream_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_in_V_dest_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_in_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "stream_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_out_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_garbage_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "stream_garbage_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "stream_garbage_V_dest_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "stream_garbage_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "match_in_V", "Type" : "Vld", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "match_in_V_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	fireWall64_2 {
		stream_in_V_data_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_dest_V {Type I LastRead 1 FirstWrite -1}
		stream_in_V_last_V {Type I LastRead 1 FirstWrite -1}
		stream_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_dest_V {Type O LastRead -1 FirstWrite 2}
		stream_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		stream_garbage_V_data_V {Type O LastRead -1 FirstWrite 2}
		stream_garbage_V_dest_V {Type O LastRead -1 FirstWrite 2}
		stream_garbage_V_last_V {Type O LastRead -1 FirstWrite 2}
		match_in_V {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	stream_in_V_data_V { axis {  { stream_in_TDATA in_data 0 64 } } }
	stream_in_V_dest_V { axis {  { stream_in_TDEST in_data 0 8 } } }
	stream_in_V_last_V { axis {  { stream_in_TVALID in_vld 0 1 }  { stream_in_TREADY in_acc 1 1 }  { stream_in_TLAST in_data 0 1 } } }
	stream_out_V_data_V { axis {  { stream_out_TDATA out_data 1 64 } } }
	stream_out_V_dest_V { axis {  { stream_out_TDEST out_data 1 8 } } }
	stream_out_V_last_V { axis {  { stream_out_TVALID out_vld 1 1 }  { stream_out_TREADY out_acc 0 1 }  { stream_out_TLAST out_data 1 1 } } }
	stream_garbage_V_data_V { axis {  { stream_garbage_TDATA out_data 1 64 } } }
	stream_garbage_V_dest_V { axis {  { stream_garbage_TDEST out_data 1 8 } } }
	stream_garbage_V_last_V { axis {  { stream_garbage_TVALID out_vld 1 1 }  { stream_garbage_TREADY out_acc 0 1 }  { stream_garbage_TLAST out_data 1 1 } } }
	match_in_V { ap_vld {  { match_in_V in_data 0 1 }  { match_in_V_ap_vld in_vld 0 1 } } }
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
