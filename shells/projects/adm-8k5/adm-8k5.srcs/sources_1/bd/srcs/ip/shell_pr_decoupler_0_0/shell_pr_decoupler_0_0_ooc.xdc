
# aclk_CLOCK contains aclk which is a clock with frequency 156250000 Hz and period 6.4ns
create_clock -verbose -period 6.4 -name aclk [get_ports aclk]
#set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports aclk]



# Processing interface pr_axi_mem
#     vlnv        : xilinx.com:interface:aximm_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 0


# Processing interface pr_axi_mem ...done


# Processing interface control
#     vlnv        : xilinx.com:interface:aximm_rtl:1.0
#     intf_mode   : slave
#     static_mode : slave
#     cdc_stages  : 0


# Processing interface control ...done


# Processing interface stream_in
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : master
#     static_mode : master
#     cdc_stages  : 0


# Processing interface stream_in ...done


# Processing interface stream_out
#     vlnv        : xilinx.com:interface:axis_rtl:1.0
#     intf_mode   : slave
#     static_mode : slave
#     cdc_stages  : 0


# Processing interface stream_out ...done


# End of File


