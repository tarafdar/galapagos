set C_TypeInfoList {{ 
"ethernet_bridge" : [[], { "return": [[], "void"]} , [{"ExternC" : 0}], [ {"to_app": [[], {"reference": "0"}] }, {"from_eth": [[], {"reference": "1"}] }, {"from_app": [[], {"reference": "0"}] }, {"to_eth": [[], {"reference": "1"}] }, {"mac_addr": [["const"],"2"] }],["3"],""],
 "3": [ "mac_table", [[], {"array": ["4", [256]]}],""], 
"0": [ "stream<app_axis>", {"hls_type": {"stream": [[[[],"5"]],"6"]}}], 
"5": [ "app_axis", {"struct": [[],[],[{ "data": [[], "7"]},{ "last": [[], "8"]},{ "tdest": [[], "9"]},{ "tkeep": [[], "9"]}],""]}], 
"7": [ "ap_int<64>", {"hls_type": {"ap_int": [[[[], {"scalar": { "int": 64}}]],""]}}], 
"8": [ "ap_uint<1>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 1}}]],""]}}], 
"9": [ "ap_uint<8>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 8}}]],""]}}], 
"1": [ "stream<eth_axis>", {"hls_type": {"stream": [[[[],"10"]],"6"]}}], 
"10": [ "eth_axis", {"struct": [[],[],[{ "data": [[], "7"]},{ "last": [[], "8"]},{ "tkeep": [[], "9"]}],""]}], 
"2": [ "ap_uint<48>", {"struct": [[{"pack": 0}],[{"_AP_W":[[], {"scalar": { "int": 48}}]}],[],""]}], 
"4": [ "ap_uint<48>", {"hls_type": {"ap_uint": [[[[], {"scalar": { "int": 48}}]],""]}}],
"6": ["hls", ""]
}}
set moduleName ethernet_bridge
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set C_modelName {ethernet_bridge}
set C_modelType { void 0 }
set C_modelArgList {
	{ to_app_V int 81 regular {fifo 1 volatile }  }
	{ from_eth_V int 73 regular {fifo 0 volatile }  }
	{ from_app_V int 81 regular {fifo 0 volatile }  }
	{ to_eth_V int 73 regular {fifo 1 volatile }  }
	{ mac_addr_V int 48 regular  }
	{ mac_table_V int 48 regular {array 256 { 1 3 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "to_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "to_app.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":64,"cElement": [{"cName": "to_app.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":65,"up":72,"cElement": [{"cName": "to_app.V.tdest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "to_app.V.tkeep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "from_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "from_eth.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":64,"cElement": [{"cName": "from_eth.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":65,"up":72,"cElement": [{"cName": "from_eth.V.tkeep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "from_app_V", "interface" : "fifo", "bitwidth" : 81, "direction" : "READONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "from_app.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":64,"cElement": [{"cName": "from_app.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":65,"up":72,"cElement": [{"cName": "from_app.V.tdest.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":73,"up":80,"cElement": [{"cName": "from_app.V.tkeep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "to_eth_V", "interface" : "fifo", "bitwidth" : 73, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":63,"cElement": [{"cName": "to_eth.V.data.V","cData": "int64","bit_use": { "low": 0,"up": 63},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":64,"up":64,"cElement": [{"cName": "to_eth.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]},{"low":65,"up":72,"cElement": [{"cName": "to_eth.V.tkeep.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "mac_addr_V", "interface" : "wire", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_addr.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "mac_table_V", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY", "bitSlice":[{"low":0,"up":47,"cElement": [{"cName": "mac_table.V","cData": "uint48","bit_use": { "low": 0,"up": 47},"cArray": [{"low" : 0,"up" : 255,"step" : 1}]}]}], "extern" : 0} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ to_app_V_din sc_out sc_lv 81 signal 0 } 
	{ to_app_V_full_n sc_in sc_logic 1 signal 0 } 
	{ to_app_V_write sc_out sc_logic 1 signal 0 } 
	{ from_eth_V_dout sc_in sc_lv 73 signal 1 } 
	{ from_eth_V_empty_n sc_in sc_logic 1 signal 1 } 
	{ from_eth_V_read sc_out sc_logic 1 signal 1 } 
	{ from_app_V_dout sc_in sc_lv 81 signal 2 } 
	{ from_app_V_empty_n sc_in sc_logic 1 signal 2 } 
	{ from_app_V_read sc_out sc_logic 1 signal 2 } 
	{ to_eth_V_din sc_out sc_lv 73 signal 3 } 
	{ to_eth_V_full_n sc_in sc_logic 1 signal 3 } 
	{ to_eth_V_write sc_out sc_logic 1 signal 3 } 
	{ mac_addr_V sc_in sc_lv 48 signal 4 } 
	{ mac_table_V_address0 sc_out sc_lv 8 signal 5 } 
	{ mac_table_V_ce0 sc_out sc_logic 1 signal 5 } 
	{ mac_table_V_d0 sc_out sc_lv 48 signal 5 } 
	{ mac_table_V_q0 sc_in sc_lv 48 signal 5 } 
	{ mac_table_V_we0 sc_out sc_logic 1 signal 5 } 
	{ mac_table_V_address1 sc_out sc_lv 8 signal 5 } 
	{ mac_table_V_ce1 sc_out sc_logic 1 signal 5 } 
	{ mac_table_V_d1 sc_out sc_lv 48 signal 5 } 
	{ mac_table_V_q1 sc_in sc_lv 48 signal 5 } 
	{ mac_table_V_we1 sc_out sc_logic 1 signal 5 } 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
}
set NewPortList {[ 
	{ "name": "to_app_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "to_app_V", "role": "din" }} , 
 	{ "name": "to_app_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "full_n" }} , 
 	{ "name": "to_app_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_app_V", "role": "write" }} , 
 	{ "name": "from_eth_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "from_eth_V", "role": "dout" }} , 
 	{ "name": "from_eth_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "empty_n" }} , 
 	{ "name": "from_eth_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_eth_V", "role": "read" }} , 
 	{ "name": "from_app_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":81, "type": "signal", "bundle":{"name": "from_app_V", "role": "dout" }} , 
 	{ "name": "from_app_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "empty_n" }} , 
 	{ "name": "from_app_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "from_app_V", "role": "read" }} , 
 	{ "name": "to_eth_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":73, "type": "signal", "bundle":{"name": "to_eth_V", "role": "din" }} , 
 	{ "name": "to_eth_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "full_n" }} , 
 	{ "name": "to_eth_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "to_eth_V", "role": "write" }} , 
 	{ "name": "mac_addr_V", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_addr_V", "role": "default" }} , 
 	{ "name": "mac_table_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address0" }} , 
 	{ "name": "mac_table_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce0" }} , 
 	{ "name": "mac_table_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "d0" }} , 
 	{ "name": "mac_table_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q0" }} , 
 	{ "name": "mac_table_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "we0" }} , 
 	{ "name": "mac_table_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "mac_table_V", "role": "address1" }} , 
 	{ "name": "mac_table_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "ce1" }} , 
 	{ "name": "mac_table_V_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "d1" }} , 
 	{ "name": "mac_table_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "mac_table_V", "role": "q1" }} , 
 	{ "name": "mac_table_V_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "mac_table_V", "role": "we1" }} , 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "ethernet_bridge",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "2",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"InDataflowNetwork" : "0",
		"InputProcess" : [
			{"ID" : "2", "Name" : "eth_to_app_U0"},
			{"ID" : "3", "Name" : "app_to_eth_U0"},
			{"ID" : "1", "Name" : "ethernet_bridge_entr_U0"}],
		"OutputProcess" : [
			{"ID" : "2", "Name" : "eth_to_app_U0"},
			{"ID" : "3", "Name" : "app_to_eth_U0"}],
		"Port" : [
			{"Name" : "to_app_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "eth_to_app_U0", "Port" : "to_app_V"}]},
			{"Name" : "from_eth_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "eth_to_app_U0", "Port" : "from_eth_V"}]},
			{"Name" : "from_app_V", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "from_app_V"}]},
			{"Name" : "to_eth_V", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "to_eth_V"}]},
			{"Name" : "mac_addr_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "eth_to_app_U0", "Port" : "state_V_1"}]},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "eth_to_app_U0", "Port" : "dest_V"}]},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "eth_to_app_U0", "Port" : "app_packet_out_last_s"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "eth_dst_src_V"}]},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "state_V"}]},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "app_packet_in_data_V"}]},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "app_packet_in_last_V"}]},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "dest_mac_address_V"}]},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "app_packet_in_tkeep_s"}]},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "app_packet_in_tdest_s"}]},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "app_to_eth_U0", "Port" : "mac_table_V"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ethernet_bridge_entr_U0", "Parent" : "0",
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
			{"Name" : "mac_addr_V_out", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "2", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "mac_addr_V_out1", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "3", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "mac_addr_V_out1_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.eth_to_app_U0", "Parent" : "0",
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
			{"Name" : "mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "4",
				"BlockSignal" : [
					{"Name" : "mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "state_V_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_out_last_s", "Type" : "OVld", "Direction" : "IO"}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.app_to_eth_U0", "Parent" : "0",
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
			{"Name" : "src_mac_address_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "1", "DependentChan" : "5",
				"BlockSignal" : [
					{"Name" : "src_mac_address_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "eth_dst_src_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "state_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_data_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_last_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "dest_mac_address_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tkeep_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "app_packet_in_tdest_s", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "mac_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_addr_V_c_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_addr_V_c42_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ethernet_bridge {
		to_app_V {Type O LastRead -1 FirstWrite 1}
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		from_app_V {Type I LastRead 0 FirstWrite -1}
		to_eth_V {Type O LastRead -1 FirstWrite 1}
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}
		eth_dst_src_V {Type IO LastRead -1 FirstWrite -1}
		state_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_data_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_last_V {Type IO LastRead -1 FirstWrite -1}
		dest_mac_address_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tkeep_s {Type IO LastRead -1 FirstWrite -1}
		app_packet_in_tdest_s {Type IO LastRead -1 FirstWrite -1}
		mac_table_V {Type I LastRead 0 FirstWrite -1}}
	ethernet_bridge_entr {
		mac_addr_V {Type I LastRead 0 FirstWrite -1}
		mac_addr_V_out {Type O LastRead -1 FirstWrite 0}
		mac_addr_V_out1 {Type O LastRead -1 FirstWrite 0}}
	eth_to_app {
		from_eth_V {Type I LastRead 0 FirstWrite -1}
		to_app_V {Type O LastRead -1 FirstWrite 1}
		mac_address_V {Type I LastRead 0 FirstWrite -1}
		state_V_1 {Type IO LastRead -1 FirstWrite -1}
		dest_V {Type IO LastRead -1 FirstWrite -1}
		app_packet_out_last_s {Type IO LastRead -1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "2", "Max" : "2"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	to_app_V { ap_fifo {  { to_app_V_din fifo_data 1 81 }  { to_app_V_full_n fifo_status 0 1 }  { to_app_V_write fifo_update 1 1 } } }
	from_eth_V { ap_fifo {  { from_eth_V_dout fifo_data 0 73 }  { from_eth_V_empty_n fifo_status 0 1 }  { from_eth_V_read fifo_update 1 1 } } }
	from_app_V { ap_fifo {  { from_app_V_dout fifo_data 0 81 }  { from_app_V_empty_n fifo_status 0 1 }  { from_app_V_read fifo_update 1 1 } } }
	to_eth_V { ap_fifo {  { to_eth_V_din fifo_data 1 73 }  { to_eth_V_full_n fifo_status 0 1 }  { to_eth_V_write fifo_update 1 1 } } }
	mac_addr_V { ap_none {  { mac_addr_V in_data 0 48 } } }
	mac_table_V { ap_memory {  { mac_table_V_address0 mem_address 1 8 }  { mac_table_V_ce0 mem_ce 1 1 }  { mac_table_V_d0 mem_din 1 48 }  { mac_table_V_q0 mem_dout 0 48 }  { mac_table_V_we0 mem_we 1 1 }  { mac_table_V_address1 mem_address 1 8 }  { mac_table_V_ce1 mem_ce 1 1 }  { mac_table_V_d1 mem_din 1 48 }  { mac_table_V_q1 mem_dout 0 48 }  { mac_table_V_we1 mem_we 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	to_app_V { fifo_write 1 no_conditional }
	from_eth_V { fifo_read 1 no_conditional }
	from_app_V { fifo_read 1 no_conditional }
	to_eth_V { fifo_write 1 no_conditional }
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
