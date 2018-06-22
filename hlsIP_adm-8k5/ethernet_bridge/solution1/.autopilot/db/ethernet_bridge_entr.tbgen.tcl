set moduleName ethernet_bridge_entr
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_addr_V int 48 regular  }
	{ mac_addr_V_out int 48 regular {fifo 1}  }
	{ mac_addr_V_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_addr_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_addr_V_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_addr_V sc_in sc_lv 48 signal 0 } 
	{ mac_addr_V_out_din sc_out sc_lv 48 signal 1 } 
	{ mac_addr_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mac_addr_V_out_write sc_out sc_logic 1 signal 1 } 
	{ mac_addr_V_out1_din sc_out sc_lv 48 signal 2 } 
	{ mac_addr_V_out1_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_addr_V_out1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_addr_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "din" }} , 
 	{ "name": "mac_addr_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "write" }} , 
 	{ "name": "mac_addr_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "din" }} , 
 	{ "name": "mac_addr_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_bridge_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_addr_V_out { ap_fifo {  { mac_addr_V_out_din fifo_data 1 48 }  { mac_addr_V_out_full_n fifo_status 0 1 }  { mac_addr_V_out_write fifo_update 1 1 } } }
	mac_addr_V_out1 { ap_fifo {  { mac_addr_V_out1_din fifo_data 1 48 }  { mac_addr_V_out1_full_n fifo_status 0 1 }  { mac_addr_V_out1_write fifo_update 1 1 } } }
}
set moduleName ethernet_bridge_entr
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_addr_V int 48 regular  }
	{ mac_addr_V_out int 48 regular {fifo 1}  }
	{ mac_addr_V_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_addr_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_addr_V_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_addr_V sc_in sc_lv 48 signal 0 } 
	{ mac_addr_V_out_din sc_out sc_lv 48 signal 1 } 
	{ mac_addr_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mac_addr_V_out_write sc_out sc_logic 1 signal 1 } 
	{ mac_addr_V_out1_din sc_out sc_lv 48 signal 2 } 
	{ mac_addr_V_out1_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_addr_V_out1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_addr_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "din" }} , 
 	{ "name": "mac_addr_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "write" }} , 
 	{ "name": "mac_addr_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "din" }} , 
 	{ "name": "mac_addr_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_bridge_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_addr_V_out { ap_fifo {  { mac_addr_V_out_din fifo_data 1 48 }  { mac_addr_V_out_full_n fifo_status 0 1 }  { mac_addr_V_out_write fifo_update 1 1 } } }
	mac_addr_V_out1 { ap_fifo {  { mac_addr_V_out1_din fifo_data 1 48 }  { mac_addr_V_out1_full_n fifo_status 0 1 }  { mac_addr_V_out1_write fifo_update 1 1 } } }
}
set moduleName ethernet_bridge_entr
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_addr_V int 48 regular  }
	{ mac_addr_V_out int 48 regular {fifo 1}  }
	{ mac_addr_V_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_addr_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_addr_V_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_addr_V sc_in sc_lv 48 signal 0 } 
	{ mac_addr_V_out_din sc_out sc_lv 48 signal 1 } 
	{ mac_addr_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mac_addr_V_out_write sc_out sc_logic 1 signal 1 } 
	{ mac_addr_V_out1_din sc_out sc_lv 48 signal 2 } 
	{ mac_addr_V_out1_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_addr_V_out1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_addr_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "din" }} , 
 	{ "name": "mac_addr_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "write" }} , 
 	{ "name": "mac_addr_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "din" }} , 
 	{ "name": "mac_addr_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_bridge_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_addr_V_out { ap_fifo {  { mac_addr_V_out_din fifo_data 1 48 }  { mac_addr_V_out_full_n fifo_status 0 1 }  { mac_addr_V_out_write fifo_update 1 1 } } }
	mac_addr_V_out1 { ap_fifo {  { mac_addr_V_out1_din fifo_data 1 48 }  { mac_addr_V_out1_full_n fifo_status 0 1 }  { mac_addr_V_out1_write fifo_update 1 1 } } }
}
set moduleName ethernet_bridge_entr
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_addr_V int 48 regular  }
	{ mac_addr_V_out int 48 regular {fifo 1}  }
	{ mac_addr_V_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_addr_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_addr_V_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_addr_V sc_in sc_lv 48 signal 0 } 
	{ mac_addr_V_out_din sc_out sc_lv 48 signal 1 } 
	{ mac_addr_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mac_addr_V_out_write sc_out sc_logic 1 signal 1 } 
	{ mac_addr_V_out1_din sc_out sc_lv 48 signal 2 } 
	{ mac_addr_V_out1_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_addr_V_out1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_addr_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "din" }} , 
 	{ "name": "mac_addr_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "write" }} , 
 	{ "name": "mac_addr_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "din" }} , 
 	{ "name": "mac_addr_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_bridge_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_addr_V_out { ap_fifo {  { mac_addr_V_out_din fifo_data 1 48 }  { mac_addr_V_out_full_n fifo_status 0 1 }  { mac_addr_V_out_write fifo_update 1 1 } } }
	mac_addr_V_out1 { ap_fifo {  { mac_addr_V_out1_din fifo_data 1 48 }  { mac_addr_V_out1_full_n fifo_status 0 1 }  { mac_addr_V_out1_write fifo_update 1 1 } } }
}
set moduleName ethernet_bridge_entr
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_addr_V int 48 regular  }
	{ mac_addr_V_out int 48 regular {fifo 1}  }
	{ mac_addr_V_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_addr_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_addr_V_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_addr_V sc_in sc_lv 48 signal 0 } 
	{ mac_addr_V_out_din sc_out sc_lv 48 signal 1 } 
	{ mac_addr_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mac_addr_V_out_write sc_out sc_logic 1 signal 1 } 
	{ mac_addr_V_out1_din sc_out sc_lv 48 signal 2 } 
	{ mac_addr_V_out1_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_addr_V_out1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_addr_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "din" }} , 
 	{ "name": "mac_addr_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "write" }} , 
 	{ "name": "mac_addr_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "din" }} , 
 	{ "name": "mac_addr_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_bridge_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_addr_V_out { ap_fifo {  { mac_addr_V_out_din fifo_data 1 48 }  { mac_addr_V_out_full_n fifo_status 0 1 }  { mac_addr_V_out_write fifo_update 1 1 } } }
	mac_addr_V_out1 { ap_fifo {  { mac_addr_V_out1_din fifo_data 1 48 }  { mac_addr_V_out1_full_n fifo_status 0 1 }  { mac_addr_V_out1_write fifo_update 1 1 } } }
}
set moduleName ethernet_bridge_entr
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge.entr}
set C_modelType { void 0 }
set C_modelArgList {
	{ mac_addr_V int 48 regular  }
	{ mac_addr_V_out int 48 regular {fifo 1}  }
	{ mac_addr_V_out1 int 48 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "mac_addr_V_out", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} , 
 	{ "Name" : "mac_addr_V_out1", "interface" : "fifo", "bitwidth" : 48, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ mac_addr_V sc_in sc_lv 48 signal 0 } 
	{ mac_addr_V_out_din sc_out sc_lv 48 signal 1 } 
	{ mac_addr_V_out_full_n sc_in sc_logic 1 signal 1 } 
	{ mac_addr_V_out_write sc_out sc_logic 1 signal 1 } 
	{ mac_addr_V_out1_din sc_out sc_lv 48 signal 2 } 
	{ mac_addr_V_out1_full_n sc_in sc_logic 1 signal 2 } 
	{ mac_addr_V_out1_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_addr_V_out_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "din" }} , 
 	{ "name": "mac_addr_V_out_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out", "role": "write" }} , 
 	{ "name": "mac_addr_V_out1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "din" }} , 
 	{ "name": "mac_addr_V_out1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "full_n" }} , 
 	{ "name": "mac_addr_V_out1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_addr_V_out1", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ethernet_bridge_entr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "1",
		"Port" : [
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "0", "DependentChan" : "0",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_addr_V_out { ap_fifo {  { mac_addr_V_out_din fifo_data 1 48 }  { mac_addr_V_out_full_n fifo_status 0 1 }  { mac_addr_V_out_write fifo_update 1 1 } } }
	mac_addr_V_out1 { ap_fifo {  { mac_addr_V_out1_din fifo_data 1 48 }  { mac_addr_V_out1_full_n fifo_status 0 1 }  { mac_addr_V_out1_write fifo_update 1 1 } } }
}
