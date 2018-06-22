set moduleName app_to_eth
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {app_to_eth}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_address_V int 48 regular {fifo 0}  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY"} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ src_mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ src_mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 1 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 3 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "src_mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "dout" }} , 
 	{ "name": "src_mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "empty_n" }} , 
 	{ "name": "src_mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "app_to_eth",
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
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	app_to_eth {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		src_mac_address_V {Type I LastRead 1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	src_mac_address_V { ap_fifo {  { src_mac_address_V_dout fifo_data 0 48 }  { src_mac_address_V_empty_n fifo_status 0 1 }  { src_mac_address_V_read fifo_update 1 1 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_q0 mem_dout 0 48 } } }
}
set moduleName app_to_eth
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {app_to_eth}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_address_V int 48 regular {fifo 0}  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY"} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ src_mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ src_mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 1 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 3 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "src_mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "dout" }} , 
 	{ "name": "src_mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "empty_n" }} , 
 	{ "name": "src_mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "app_to_eth",
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
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	app_to_eth {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		src_mac_address_V {Type I LastRead 1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	src_mac_address_V { ap_fifo {  { src_mac_address_V_dout fifo_data 0 48 }  { src_mac_address_V_empty_n fifo_status 0 1 }  { src_mac_address_V_read fifo_update 1 1 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_q0 mem_dout 0 48 } } }
}
set moduleName app_to_eth
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {app_to_eth}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_address_V int 48 regular {fifo 0}  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY"} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ src_mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ src_mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 1 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 3 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "src_mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "dout" }} , 
 	{ "name": "src_mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "empty_n" }} , 
 	{ "name": "src_mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "app_to_eth",
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
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	app_to_eth {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		src_mac_address_V {Type I LastRead 1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	src_mac_address_V { ap_fifo {  { src_mac_address_V_dout fifo_data 0 48 }  { src_mac_address_V_empty_n fifo_status 0 1 }  { src_mac_address_V_read fifo_update 1 1 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_q0 mem_dout 0 48 } } }
}
set moduleName app_to_eth
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {app_to_eth}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_address_V int 48 regular {fifo 0}  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY"} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ src_mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ src_mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 1 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 3 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "src_mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "dout" }} , 
 	{ "name": "src_mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "empty_n" }} , 
 	{ "name": "src_mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "app_to_eth",
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
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	app_to_eth {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		src_mac_address_V {Type I LastRead 1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	src_mac_address_V { ap_fifo {  { src_mac_address_V_dout fifo_data 0 48 }  { src_mac_address_V_empty_n fifo_status 0 1 }  { src_mac_address_V_read fifo_update 1 1 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_q0 mem_dout 0 48 } } }
}
set moduleName app_to_eth
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {app_to_eth}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_address_V int 48 regular {fifo 0}  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY"} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ src_mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ src_mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 1 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 3 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "src_mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "dout" }} , 
 	{ "name": "src_mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "empty_n" }} , 
 	{ "name": "src_mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "app_to_eth",
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
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	app_to_eth {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		src_mac_address_V {Type I LastRead 1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	src_mac_address_V { ap_fifo {  { src_mac_address_V_dout fifo_data 0 48 }  { src_mac_address_V_empty_n fifo_status 0 1 }  { src_mac_address_V_read fifo_update 1 1 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_q0 mem_dout 0 48 } } }
}
set moduleName app_to_eth
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {app_to_eth}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ src_mac_address_V int 48 regular {fifo 0}  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY"} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY"} , 
 	{ "Name" : "src_mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 0 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_app_V_read sc_out sc_logic 1 signal 0 } 
	{ src_mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ src_mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ src_mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 1 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 1 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 3 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "src_mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "dout" }} , 
 	{ "name": "src_mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "empty_n" }} , 
 	{ "name": "src_mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_mac_address_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "app_to_eth",
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
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	app_to_eth {
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		src_mac_address_V {Type I LastRead 1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	src_mac_address_V { ap_fifo {  { src_mac_address_V_dout fifo_data 0 48 }  { src_mac_address_V_empty_n fifo_status 0 1 }  { src_mac_address_V_read fifo_update 1 1 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_q0 mem_dout 0 48 } } }
}
