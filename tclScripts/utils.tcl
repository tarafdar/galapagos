source ./tclScripts/network_ip_net_connections.tcl
source ./tclScripts/ddr_ip_net_connections.tcl

## Treat this file like a header file
## procedure and variable definitions only

proc get_part_name_from_board_name {board_name} {
	if {$board_name eq "sidewinder100"} {
		return xczu19eg-ffvc1760-2-e
	} elseif {$board_name eq "adm-8k5"} {
	    return xcku115-flva1517-2-e
	} elseif {$board_name eq "adm-8k5-debug"} {
	    return xcku115-flva1517-2-e
	} else {
		puts "Unsupported board name: "
		puts $boardName
		exit
	}
}

# ip_names
#   -> component
#      -> board_name
#         -> ip_name_string
set ip_names {
    ethernet {
        sidewinder100 {xilinx.com:ip:xxv_ethernet:2.4}
        adm-8k5-debug {xilinx.com:ip:axi_10g_ethernet:3.1}
        adm-8k5 {xilinx.com:ip:axi_10g_ethernet:3.1}
    }
}





  # Create port connections



proc get_ip_from_component_and_board_name {component board_name} {
    if {![dict exists $ip_names $component $board_name]} {
        puts "IP doesn't exist for component: $component and board_name:$board_name"
        exit
    }
    set ip_name [dict get $ip_names $component $board_name]
    puts "get_ip_from_component_and_board_name ip_name: $ip_name"
    return $ip_name
}

proc make_interface_connections {component_interface_dictionary board_version} {
  foreach {connection nets} [dict get $component_interface_dictionary $board_version] {
      # Store all the nets to an array
      connect_bd_intf_net -intf_net $connection [get_bd_intf_pins $nets]
      #foreach net $nets {
      #    puts "    $net"
      #}
  }
}

proc make_port_connections {component_ports_dictionary board_version} {
  foreach {connection nets} [dict get $component_ports_dictionary $board_version] {
      # Store all the nets to an array
      connect_bd_net -net $connection [get_bd_pins $nets]
      #foreach net $nets {
      #    puts "    $net"
      #}
  }
}


proc instantiate_module {instance_name, ip_string, configuration_properties} {
    set instantiated_module [create_bd_cell -type ip -vlnv $ip_string $instance_name]
    set_property -dict [ list $configuration_properties] $instantiate_module
    return $instantiated_module
}

proc instantiate_module_dependencies {dependence_set board_version} {
    common::send_msg_id "BD_TCL-999" "INFO" "instantiate_module_dependencies for board_version: $board_version"
    if {![dict exists $dependence_set $board_version]} {
        return
    }
    foreach {module parameters} [dict get $dependence_set $board_version] {
        set ip_name [dict get $dependence_set $board_version $module IP]
        set configuration_properties [dict get $dependence_set $board_version $module CONFIGURATION]
        common::send_msg_id "BD_TCL-999" "INFO" "module: $module, ip_name: $ip_name, properties: $configuration_properties"
        instantiate_module $module $ip_name $configuration_properties
    } 
}

proc get_ips_from_board_name {board_name} {
    if {$board_name eq "sidewinder100"} {
		return "\ 
            xilinx.com:ip:axi_bram_ctrl:4.0\
            xilinx.com:ip:axi_gpio:2.0\
            xilinx.com:ip:blk_mem_gen:8.4\
            xilinx.com:ip:clk_wiz:6.0\
            xilinx.com:ip:xlconstant:1.1\
            xilinx.com:ip:system_ila:1.1\
            xilinx.com:ip:util_vector_logic:2.0\
            xilinx.com:ip:vio:3.0\
            xilinx.com:ip:util_ds_buf:2.1\
            xilinx.com:ip:xdma:4.1\
            xilinx.com:ip:mdm:3.2\
            xilinx.com:ip:microblaze:10.0\
            xilinx.com:ip:proc_sys_reset:5.0\
            xilinx.com:ip:ddr4:2.2\
            xilinx.com:ip:xxv_ethernet:2.4\
            dlyma.org:dlyma:network_packet_fifo_rx:1.1\
            dlyma.org:dlyma:network_packet_fifo_tx:1.1\
            xilinx.com:ip:axis_register_slice:1.1\
            xilinx.com:ip:lmb_bram_if_cntlr:4.0\
            xilinx.com:ip:lmb_v10:3.0\
            xilinx.com:ip:axi_dma:7.1\
            xilinx.com:ip:axis_data_fifo:1.1\
            xilinx.com:ip:xlconcat:2.1\
            xilinx.com:ip:zynq_ultra_ps_e:3.1\
            "
	} elseif {$board_name eq "adm-8k5"} {
        return "\ 
            xilinx.com:ip:axi_bram_ctrl:4.0\
            xilinx.com:ip:axi_gpio:2.0\
            xilinx.com:ip:blk_mem_gen:8.4\
            xilinx.com:ip:clk_wiz:6.0\
            xilinx.com:ip:xlconstant:1.1\
            xilinx.com:ip:system_ila:1.1\
            xilinx.com:ip:util_vector_logic:2.0\
            xilinx.com:ip:vio:3.0\
            xilinx.com:ip:util_ds_buf:2.1\
            xilinx.com:ip:xdma:4.1\
            xilinx.com:ip:mdm:3.2\
            xilinx.com:ip:microblaze:10.0\
            xilinx.com:ip:proc_sys_reset:5.0\
            xilinx.com:ip:ddr4:2.2\
            xilinx.com:ip:axi_10g_ethernet:3.1\
            dlyma.org:dlyma:network_packet_fifo_rx:1.1\
            dlyma.org:dlyma:network_packet_fifo_tx:1.1\
            xilinx.com:ip:axis_register_slice:1.1\
            xilinx.com:ip:lmb_bram_if_cntlr:4.0\
            xilinx.com:ip:lmb_v10:3.0\
            "
	} elseif {$board_name eq "adm-8k5-debug"} {
	    return "\ 
            xilinx.com:ip:axi_bram_ctrl:4.0\
            xilinx.com:ip:axi_gpio:2.0\
            xilinx.com:ip:blk_mem_gen:8.4\
            xilinx.com:ip:clk_wiz:6.0\
            xilinx.com:ip:xlconstant:1.1\
            xilinx.com:ip:system_ila:1.1\
            xilinx.com:ip:util_vector_logic:2.0\
            xilinx.com:ip:vio:3.0\
            xilinx.com:ip:util_ds_buf:2.1\
            xilinx.com:ip:xdma:4.1\
            xilinx.com:ip:mdm:3.2\
            xilinx.com:ip:microblaze:10.0\
            xilinx.com:ip:proc_sys_reset:5.0\
            xilinx.com:ip:ddr4:2.2\
            xilinx.com:ip:axi_10g_ethernet:3.1\
            dlyma.org:dlyma:network_packet_fifo_rx:1.1\
            dlyma.org:dlyma:network_packet_fifo_tx:1.1\
            xilinx.com:ip:axis_register_slice:1.1\
            xilinx.com:ip:lmb_bram_if_cntlr:4.0\
            xilinx.com:ip:lmb_v10:3.0\
            "
	} else {
		puts "Unsupported board name: "
		puts $board_name
		exit
	}
   
}