set moduleName eth_to_app
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eth_to_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ mac_address_V int 48 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 81 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_address_V", "role": "dout" }} , 
 	{ "name": "mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "empty_n" }} , 
 	{ "name": "mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "read" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "eth_to_app",
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
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	mac_address_V { ap_fifo {  { mac_address_V_dout fifo_data 0 48 }  { mac_address_V_empty_n fifo_status 0 1 }  { mac_address_V_read fifo_update 1 1 } } }
}
set moduleName eth_to_app
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eth_to_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ mac_address_V int 48 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 81 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_address_V", "role": "dout" }} , 
 	{ "name": "mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "empty_n" }} , 
 	{ "name": "mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "read" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "eth_to_app",
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
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	mac_address_V { ap_fifo {  { mac_address_V_dout fifo_data 0 48 }  { mac_address_V_empty_n fifo_status 0 1 }  { mac_address_V_read fifo_update 1 1 } } }
}
set moduleName eth_to_app
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eth_to_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ mac_address_V int 48 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 81 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_address_V", "role": "dout" }} , 
 	{ "name": "mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "empty_n" }} , 
 	{ "name": "mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "read" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "eth_to_app",
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
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	mac_address_V { ap_fifo {  { mac_address_V_dout fifo_data 0 48 }  { mac_address_V_empty_n fifo_status 0 1 }  { mac_address_V_read fifo_update 1 1 } } }
}
set moduleName eth_to_app
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eth_to_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ mac_address_V int 48 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 81 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_address_V", "role": "dout" }} , 
 	{ "name": "mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "empty_n" }} , 
 	{ "name": "mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "read" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "eth_to_app",
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
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	mac_address_V { ap_fifo {  { mac_address_V_dout fifo_data 0 48 }  { mac_address_V_empty_n fifo_status 0 1 }  { mac_address_V_read fifo_update 1 1 } } }
}
set moduleName eth_to_app
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eth_to_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ mac_address_V int 48 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 81 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_address_V", "role": "dout" }} , 
 	{ "name": "mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "empty_n" }} , 
 	{ "name": "mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "read" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "eth_to_app",
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
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	mac_address_V { ap_fifo {  { mac_address_V_dout fifo_data 0 48 }  { mac_address_V_empty_n fifo_status 0 1 }  { mac_address_V_read fifo_update 1 1 } } }
}
set moduleName eth_to_app
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {eth_to_app}
set C_modelType { void 0 }
set C_modelArgList {
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ mac_address_V int 48 regular {fifo 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY"} , 
 	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_address_V", "interface" : "fifo", "bitwidth" : 48, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 16
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_address_V_dout sc_in sc_lv 48 signal 2 } 
	{ mac_address_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ mac_address_V_read sc_out sc_logic 1 signal 2 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 0 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 0 } 
	{ to_app_V_din sc_out sc_lv 81 signal 1 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 1 } 
	{ to_app_V_write sc_out sc_logic 1 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_address_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_address_V", "role": "dout" }} , 
 	{ "name": "mac_address_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "empty_n" }} , 
 	{ "name": "mac_address_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_address_V", "role": "read" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "eth_to_app",
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
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "from_eth_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "to_app_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]}]}


set ArgLastReadFirstWriteLatency {
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	mac_address_V { ap_fifo {  { mac_address_V_dout fifo_data 0 48 }  { mac_address_V_empty_n fifo_status 0 1 }  { mac_address_V_read fifo_update 1 1 } } }
}
