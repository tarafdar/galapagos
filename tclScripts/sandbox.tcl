#!/usr/bin/tclsh
set interfaces {
    interface_type1 {
        connection1 {net1 net2}
        connection2 {net3 net4 net6}
        connection2 {net3_other net4_other net6_other}
        connection3[15:0] {net6[15:0] net7[15:0]}
        connection4[15:8] {net8[31:16] net9[15:0]}
        connection4[7:0] {net10[7:0] net11[7:0] net12[7:0]}
    }

    interface_type2 {
        connection1 {a b}
        connection1 {a b}
        connection1 {a b}
        connection2 {c d}
        connection3 {e f}
        connection4 {g h}
        connection5 {l m}
    }

}

set dependences {
    interface_type1 {
        module1 {
            IP {a.b.c}
            CONFIGURATION {config_option1{0} config_option2{1}}
        }
        module2 {
            IP {a_new_IP}
            CONFIGURATION {cfg{0} cfg2{1} cfg3{"DFSF"}}
        }
    }
    interface_type2 {
        # none
    }
}
set dependence_set $dependences
set board_version interface_type1
foreach {module parameters} [dict get $dependence_set $board_version] {
    # Store all the nets to an array
    set ip_name [dict get $dependence_set $board_version $module IP]
    set configuration_properties [dict get $dependence_set $board_version $module CONFIGURATION]
    puts ""
    puts "MODULE: $module"
    puts "IP NAME: $ip_name"
    puts "CONFIGURATION: $configuration_properties"
    
} 

#puts "printing interfaces:"
#set interface_to_pick interface_type1
##dict for {interface_type interface_connections} $interfaces $interface_to_pick{
#    #puts $interface_type
#    puts [dict get $interfaces $interface_to_pick]
#    foreach {connection nets} [dict get $interfaces $interface_to_pick] {
#        puts "  $connection:"
#        foreach net $nets {
#            puts "    $net"
#        }
#    }
##}

