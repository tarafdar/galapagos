connect_debug_port dbg_hub/clk [get_nets -of_objects [get_pins {bufg_vio_clk/O}]]

set_false_path -through [get_pins {debounce_user_sw/i_debounced_reg/Q}]

set_false_path -through [get_pins {*vio0_inst/probe_out*}]
set_false_path -through [get_pins {*vio0_inst/probe_in*}]

set_false_path -through [get_pins {*vio1_inst/probe_out*}]
set_false_path -through [get_pins {*vio1_inst/probe_in*}]

# Paths from MIG UI clock domains to LED blink encoding logic are not timing-critical.
set_false_path -through [get_pins {led_vec_reg*/D}]


###############################################################################
# Set bitstream USERID
###############################################################################

set_property BITSTREAM.CONFIG.USERID {ADAD0103} [current_design]
