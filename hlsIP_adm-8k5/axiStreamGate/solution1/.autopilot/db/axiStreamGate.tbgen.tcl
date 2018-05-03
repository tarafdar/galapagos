set C_TypeInfoList {{ 
"axiStreamGate" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"packetIn": [[],"0"] }, {"programming": [[],{ "pointer":  {"scalar": "int"}}] }, {"packetOut": [[],"0"] }, {"programSafe": [[],{ "pointer":  {"scalar": "int"}}] }],[],""], 
"0": [ "stream<ap_axis>", {"hls_type": {"stream": [[[[],"1"]],"2"]}}], 
"1": [ "ap_axis", {"struct": [[],[],[{ "data": [[], "3"]},{ "last": [[], "4"]},{ "keep": [[], "5"]}],""]}], 
"4": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"5": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"3": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}],
"2": ["hls", ""]
}}
set moduleName axiStreamGate
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {axiStreamGate}
set C_modelType { void 0 }
set C_modelArgList {
	{ packetIn_V_data_V int 64 regular {axi_s 0 volatile  { packetIn Data } }  }
	{ packetIn_V_last_V int 1 regular {axi_s 0 volatile  { packetIn Last } }  }
	{ packetIn_V_keep_V int 8 regular {axi_s 0 volatile  { packetIn Keep } }  }
	{ programming int 32 regular {axi_slave 0}  }
	{ packetOut_V_data_V int 64 regular {axi_s 1 volatile  { packetOut Data } }  }
	{ packetOut_V_last_V int 1 regular {axi_s 1 volatile  { packetOut Last } }  }
	{ packetOut_V_keep_V int 8 regular {axi_s 1 volatile  { packetOut Keep } }  }
	{ programSafe int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "packetIn_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "packetIn.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetIn_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "packetIn.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetIn_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "packetIn.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "programming", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "programming","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "packetOut_V_data_V", "interface" : "axis", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "packetOut.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "packetOut.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "packetOut_V_keep_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "packetOut.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "programSafe", "interface" : "axi_slave", "bundle":"AXILiteS","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "programSafe","cData": "int","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}], "offset" : {"out":24}, "offset_end" : {"out":31}} ]}
# RTL Port declarations: 
set portNum 29
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ packetIn_TDATA sc_in sc_lv 64 signal 0 } 
	{ packetIn_TVALID sc_in sc_logic 1 invld 2 } 
	{ packetIn_TREADY sc_out sc_logic 1 inacc 2 } 
	{ packetIn_TLAST sc_in sc_lv 1 signal 1 } 
	{ packetIn_TKEEP sc_in sc_lv 8 signal 2 } 
	{ packetOut_TDATA sc_out sc_lv 64 signal 4 } 
	{ packetOut_TVALID sc_out sc_logic 1 outvld 6 } 
	{ packetOut_TREADY sc_in sc_logic 1 outacc 6 } 
	{ packetOut_TLAST sc_out sc_lv 1 signal 5 } 
	{ packetOut_TKEEP sc_out sc_lv 8 signal 6 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"programming","role":"data","value":"16"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"programSafe","role":"data","value":"24"}, {"name":"programSafe","role":"valid","value":"28","valid_bit":"0"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } }, 
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
 	{ "name": "packetOut_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "packetOut_V_keep_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "axiStreamGate",
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
			{"Name" : "packetIn_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "packetIn_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "packetIn_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "packetIn_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "programming", "Type" : "None", "Direction" : "I"},
			{"Name" : "packetOut_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "packetOut_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "packetOut_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "packetOut_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "programSafe", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.axiStreamGate_AXILiteS_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axiStreamGate {
		packetIn_V_data_V {Type I LastRead 2 FirstWrite -1}
		packetIn_V_last_V {Type I LastRead 2 FirstWrite -1}
		packetIn_V_keep_V {Type I LastRead 2 FirstWrite -1}
		programming {Type I LastRead 1 FirstWrite -1}
		packetOut_V_data_V {Type O LastRead -1 FirstWrite 2}
		packetOut_V_last_V {Type O LastRead -1 FirstWrite 2}
		packetOut_V_keep_V {Type O LastRead -1 FirstWrite 2}
		programSafe {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	packetIn_V_data_V { axis {  { packetIn_TDATA in_data 0 64 } } }
	packetIn_V_last_V { axis {  { packetIn_TLAST in_data 0 1 } } }
	packetIn_V_keep_V { axis {  { packetIn_TVALID in_vld 0 1 }  { packetIn_TREADY in_acc 1 1 }  { packetIn_TKEEP in_data 0 8 } } }
	packetOut_V_data_V { axis {  { packetOut_TDATA out_data 1 64 } } }
	packetOut_V_last_V { axis {  { packetOut_TLAST out_data 1 1 } } }
	packetOut_V_keep_V { axis {  { packetOut_TVALID out_vld 1 1 }  { packetOut_TREADY out_acc 0 1 }  { packetOut_TKEEP out_data 1 8 } } }
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
