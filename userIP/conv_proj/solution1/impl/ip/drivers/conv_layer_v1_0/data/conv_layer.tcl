# ==============================================================
# File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
# Version: 2018.1
# Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
# 
# ==============================================================

proc generate {drv_handle} {
    xdefine_include_file $drv_handle "xparameters.h" "XConv_layer" \
        "NUM_INSTANCES" \
        "DEVICE_ID" \
        "C_S_AXI_CTRL_BUS_BASEADDR" \
        "C_S_AXI_CTRL_BUS_HIGHADDR"

    xdefine_config_file $drv_handle "xconv_layer_g.c" "XConv_layer" \
        "DEVICE_ID" \
        "C_S_AXI_CTRL_BUS_BASEADDR"

    xdefine_canonical_xpars $drv_handle "xparameters.h" "XConv_layer" \
        "DEVICE_ID" \
        "C_S_AXI_CTRL_BUS_BASEADDR" \
        "C_S_AXI_CTRL_BUS_HIGHADDR"
}

