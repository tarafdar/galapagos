set C_TypeInfoList {{ 
"application_bridge" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"from_app": [[], {"reference": "0"}] }, {"to_app": [[], {"reference": "0"}] }, {"from_net": [[], {"reference": "1"}] }, {"to_net": [[], {"reference": "1"}] }],[],""], 
"0": [ "stream<app_axis>", {"hls_type": {"stream": [[[[],"2"]],"3"]}}], 
"2": [ "app_axis", {"struct": [[],[],[{ "data": [[], "4"]},{ "dest": [[], "5"]},{ "last": [[], "6"]},{ "keep": [[], "5"]},{ "id": [[], "5"]},{ "user": [[], "7"]}],""]}], 
"1": [ "stream<net_axis>", {"hls_type": {"stream": [[[[],"8"]],"3"]}}], 
"8": [ "net_axis", {"struct": [[],[],[{ "data": [[], "9"]},{ "dest": [[], "5"]},{ "keep": [[], "5"]},{ "last": [[], "6"]}],""]}], 
"5": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"6": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"4": [ "ap_uint<64>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"9": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"7": [ "ap_uint<40>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 40}}]],""]}}],
"3": ["hls", ""]
}}
set moduleName application_bridge
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {application_bridge}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 129 regular {fifo 0 volatile }  }
	{ to_app_V int 129 regular {fifo 1 volatile }  }
	{ from_net_V int 81 regular {fifo 0 volatile }  }
	{ to_net_V int 81 regular {fifo 1 volatile }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 129, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "from_app.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "from_app.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":72,"cElement": [{"cName": "from_app.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "from_app.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":81,"up":88,"cElement": [{"cName": "from_app.V.id.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":89,"up":128,"cElement": [{"cName": "from_app.V.user.V","cData": "uint40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 129, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "to_app.V.data.V","cData": "uint64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "to_app.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":72,"cElement": [{"cName": "to_app.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "to_app.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":81,"up":88,"cElement": [{"cName": "to_app.V.id.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":89,"up":128,"cElement": [{"cName": "to_app.V.user.V","cData": "uint40","bit_use": { "low": 0,"up": 39},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "from_net_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "from_net.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "from_net.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":79,"cElement": [{"cName": "from_net.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":80,"up":80,"cElement": [{"cName": "from_net.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "to_net_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "to_net.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":71,"cElement": [{"cName": "to_net.V.dest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":72,"up":79,"cElement": [{"cName": "to_net.V.keep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":80,"up":80,"cElement": [{"cName": "to_net.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ from_app_V_dout sc_in sc_lv 129 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 129 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
	{ from_net_V_dout sc_in sc_lv 81 signal 2 } 
	{ from_net_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ from_net_V_read sc_out sc_logic 1 signal 2 } 
	{ to_net_V_din sc_out sc_lv 81 signal 3 } 
	{ to_net_V_full_n sc_in sc_logic 1 signal 3 } 
	{ to_net_V_write sc_out sc_logic 1 signal 3 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":129, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":129, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }} , 
 	{ "name": "from_net_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_net_V", "role": "dout" }} , 
 	{ "name": "from_net_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_net_V", "role": "empty_n" }} , 
 	{ "name": "from_net_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_net_V", "role": "read" }} , 
 	{ "name": "to_net_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_net_V", "role": "din" }} , 
 	{ "name": "to_net_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_net_V", "role": "full_n" }} , 
 	{ "name": "to_net_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_net_V", "role": "write" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "application_bridge",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "app_to_net_U0"},
			{"ID" : "1", "Name" : "net_to_app_U0"}],
		"OutputProcess" : [
			{"ID" : "1", "Name" : "net_to_app_U0"},
			{"ID" : "2", "Name" : "app_to_net_U0"}],
		"Port" : [
			{"Name" : "from_app_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "from_app_V"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "to_app_V"}]},
			{"Name" : "from_net_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "from_net_V"}]},
			{"Name" : "to_net_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "to_net_V"}]},
			{"Name" : "nta_state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "nta_state_V"}]},
			{"Name" : "last_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "last_V_1"}]},
			{"Name" : "byte_counter", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "byte_counter"}]},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "dest_V"}]},
			{"Name" : "id_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "id_V"}]},
			{"Name" : "user_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "net_to_app_U0", "Port" : "user_V"}]},
			{"Name" : "atn_state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "atn_state_V"}]},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "app_packet_in_data_V"}]},
			{"Name" : "byte_counter_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "byte_counter_1"}]},
			{"Name" : "last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "last_V"}]},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "app_packet_in_last_V"}]},
			{"Name" : "app_packet_in_dest_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "app_packet_in_dest_V"}]},
			{"Name" : "app_packet_in_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "app_packet_in_keep_V"}]},
			{"Name" : "extraPayload_dest_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "extraPayload_dest_V"}]},
			{"Name" : "seq_num", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "seq_num"}]},
			{"Name" : "extraPayload_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "extraPayload_data_V"}]},
			{"Name" : "extraPayload_keep_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "app_to_net_U0", "Port" : "extraPayload_keep_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.net_to_app_U0", "Parent" : "0",
		"CDFG" : "net_to_app",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "from_net_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_net_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "nta_state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "byte_counter", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "id_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "user_V", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.app_to_net_U0", "Parent" : "0",
		"CDFG" : "app_to_net",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "from_app_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_net_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_net_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "atn_state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "byte_counter_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_keep_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "extraPayload_dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "seq_num", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "extraPayload_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "extraPayload_keep_V", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	application_bridge {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		from_net_V {Type I LastRead 0 FirstWrite -1}
		to_net_V {Type O LastRead -1 FirstWrite 1}
		nta_state_V {Type IO LastRead -1 FirstWrite -1}
		last_V_1 {Type IO LastRead -1 FirstWrite -1}
		byte_counter {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		id_V {Type IO LastRead -1 FirstWrite -1}
		user_V {Type IO LastRead -1 FirstWrite -1}
		atn_state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		byte_counter_1 {Type IO LastRead -1 FirstWrite -1}
		last_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_keep_V {Type IO LastRead -1 FirstWrite -1}
		extraPayload_dest_V {Type IO LastRead -1 FirstWrite -1}
		seq_num {Type IO LastRead -1 FirstWrite -1}
		extraPayload_data_V {Type IO LastRead -1 FirstWrite -1}
		extraPayload_keep_V {Type IO LastRead -1 FirstWrite -1}}
	net_to_app {
		from_net_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		nta_state_V {Type IO LastRead -1 FirstWrite -1}
		last_V_1 {Type IO LastRead -1 FirstWrite -1}
		byte_counter {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		id_V {Type IO LastRead -1 FirstWrite -1}
		user_V {Type IO LastRead -1 FirstWrite -1}}
	app_to_net {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_net_V {Type O LastRead -1 FirstWrite 1}
		atn_state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		byte_counter_1 {Type IO LastRead -1 FirstWrite -1}
		last_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_keep_V {Type IO LastRead -1 FirstWrite -1}
		extraPayload_dest_V {Type IO LastRead -1 FirstWrite -1}
		seq_num {Type IO LastRead -1 FirstWrite -1}
		extraPayload_data_V {Type IO LastRead -1 FirstWrite -1}
		extraPayload_keep_V {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 129 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 129 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	from_net_V { ap_fifo {  { from_net_V_dout fifo_data 0 81 }  { from_net_V_empty_n fifo_status 0 1 }  { from_net_V_read fifo_update 1 1 } } }
	to_net_V { ap_fifo {  { to_net_V_din fifo_data 1 81 }  { to_net_V_full_n fifo_status 0 1 }  { to_net_V_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	from_app_V { fifo_read 1 no_conditional }
	to_app_V { fifo_write 1 no_conditional }
	from_net_V { fifo_read 1 no_conditional }
	to_net_V { fifo_write 1 no_conditional }
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
