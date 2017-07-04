set C_TypeInfoList {{ 
"packetMask" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"packetIn": [[],"0"] }, {"packetOut": [[],"0"] }, {"id": [[],{ "pointer": "1"}] }],[],""], 
"0": [ "stream<ap_axis>", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"1": [ "ap_uint<32>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 32}}]],""]}}], 
"2": [ "ap_axis", {"struct": [[],[],[{ "data": [[], "4"]},{ "last": [[], "5"]},{ "keep": [[], "6"]}],""]}], 
"4": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"5": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"6": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName packetMask
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {packetMask}
set C_modelType { void 0 }
set C_modelArgList {
	{ packetIn_V_data_V int 64 regular {axi_s 0 volatile  { packetIn Data } }  }
	{ packetIn_V_last_V int 1 regular {axi_s 0 volatile  { packetIn Last } }  }
	{ packetIn_V_keep_V int 8 regular {axi_s 0 volatile  { packetIn Keep } }  }
	{ packetOut_V_data_V int 64 regular {axi_s 1 volatile  { packetOut Data } }  }
	{ packetOut_V_last_V int 1 regular {axi_s 1 volatile  { packetOut Last } }  }
	{ packetOut_V_keep_V int 8 regular {axi_s 1 volatile  { packetOut Keep } }  }
	{ id_V int 32 unused {pointer 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "packetIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "packetIn.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "packetIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "packetIn.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "packetOut.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "packetOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "packetOut.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "id_V", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "id.V","cData": "uint32","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ packetIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ packetIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ packetIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ packetIn_TLAST sc_in sc_lv 1 signal 1 } 
	{ packetIn_TKEEP sc_in sc_lv 8 signal 2 } 
	{ packetOut_TDATA sc_out sc_lv 64 signal 3 } 
	{ packetOut_TVALID sc_out sc_logic 1 outvld 5 } 
	{ packetOut_TREADY sc_in sc_logic 1 outacc 5 } 
	{ packetOut_TLAST sc_out sc_lv 1 signal 4 } 
	{ packetOut_TKEEP sc_out sc_lv 8 signal 5 } 
	{ id_V sc_in sc_lv 32 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "packetIn_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "packetIn_V_data_V", "role": "default" }} , 
 	{ "name": "packetIn_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "packetIn_V_keep_V", "role": "default" }} , 
 	{ "name": "packetIn_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "packetIn_V_keep_V", "role": "default" }} , 
 	{ "name": "packetIn_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packetIn_V_last_V", "role": "default" }} , 
 	{ "name": "packetIn_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packetIn_V_keep_V", "role": "default" }} , 
 	{ "name": "packetOut_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "packetOut_V_data_V", "role": "default" }} , 
 	{ "name": "packetOut_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "packetOut_V_keep_V", "role": "default" }} , 
 	{ "name": "packetOut_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "packetOut_V_keep_V", "role": "default" }} , 
 	{ "name": "packetOut_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "packetOut_V_last_V", "role": "default" }} , 
 	{ "name": "packetOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packetOut_V_keep_V", "role": "default" }} , 
 	{ "name": "id_V", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "id_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "packetMask",
		"VariableLatency" : "1",
		"AlignedPipeline" : "0",
		"UnalignedPipeline" : "0",
		"ProcessNetwork" : "0",
		"Combinational" : "0",
		"ControlExist" : "0",
		"Port" : [
		{"Name" : "packetIn_V_data_V", "Type" : "Axis", "Direction" : "I",
			"BlockSignal" : [
			{"Name" : "packetIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "packetIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "packetIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
		{"Name" : "packetOut_V_data_V", "Type" : "Axis", "Direction" : "O",
			"BlockSignal" : [
			{"Name" : "packetOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
		{"Name" : "packetOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "packetOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
		{"Name" : "id_V", "Type" : "None", "Direction" : "I"}]}]}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set Spec2ImplPortList { 
	packetIn_V_data_V { axis {  { packetIn_TDATA in_data 0 64 } } }
	packetIn_V_last_V { axis {  { packetIn_TLAST in_data 0 1 } } }
	packetIn_V_keep_V { axis {  { packetIn_TVALID in_vld 0 1 }  { packetIn_TREADY in_acc 1 1 }  { packetIn_TKEEP in_data 0 8 } } }
	packetOut_V_data_V { axis {  { packetOut_TDATA out_data 1 64 } } }
	packetOut_V_last_V { axis {  { packetOut_TLAST out_data 1 1 } } }
	packetOut_V_keep_V { axis {  { packetOut_TVALID out_vld 1 1 }  { packetOut_TREADY out_acc 0 1 }  { packetOut_TKEEP out_data 1 8 } } }
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