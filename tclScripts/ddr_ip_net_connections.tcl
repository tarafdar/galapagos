set ddr_core_interface_connections {
    sidewinder100 {
        Conn1 {PCIE_AXI mem_interconnect/S00_AXI}
        Conn2 {MEM_AXI_0 mem_interconnect/S01_AXI}
        MEM_AXI_1_1 {MEM_AXI_1 mem_interconnect_1/S00_AXI}
        mem_interconnect_1_M00_AXI {ddr4_1/C0_DDR4_S_AXI mem_interconnect_1/M00_AXI}
        pcie_interconnect_M00_AXI {ddr4_0/C0_DDR4_S_AXI mem_interconnect/M00_AXI}
    }
    adm-8k5-debug {
        Conn1 {PCIE_AXI mem_interconnect/S00_AXI}
        Conn2 {MEM_AXI_0 mem_interconnect/S01_AXI}
        MEM_AXI_1_1 {MEM_AXI_1 mem_interconnect_1/S00_AXI}
        mem_interconnect_1_M00_AXI {ddr4_1/C0_DDR4_S_AXI mem_interconnect_1/M00_AXI}
        pcie_interconnect_M00_AXI {ddr4_0/C0_DDR4_S_AXI mem_interconnect/M00_AXI}
    }
}


set ddr_core_port_connections {
    sidewinder100 {
            M00_ARESETN_1 {ddr4_0/c0_ddr4_aresetn ddr4_1/c0_ddr4_aresetn mem_interconnect/M00_ARESETN mem_interconnect_1/M00_ARESETN proc_sys_reset_1/peripheral_aresetn}
        Net {c1_ddr4_dqs_t ddr4_1/c0_ddr4_dqs_t}
        Net1 {c1_ddr4_dqs_c ddr4_1/c0_ddr4_dqs_c}
        Net2 {c1_ddr4_dm_dbi_n ddr4_1/c0_ddr4_dm_dbi_n}
        Net3 {c1_ddr4_dq ddr4_1/c0_ddr4_dq}
        Net4 {c0_ddr4_dm_dbi_n ddr4_0/c0_ddr4_dm_dbi_n}
        Net5 {c0_ddr4_dqs_c ddr4_0/c0_ddr4_dqs_c}
        Net6 {c0_ddr4_dqs_t ddr4_0/c0_ddr4_dqs_t}
        Net7 {c0_ddr4_dg ddr4_0/c0_ddr4_dq}
        S00_ACLK_1 {PCIE_ACLK mem_interconnect/S00_ACLK}
        S01_ARESETN_1 {S_ARESETN mem_interconnect/S00_ARESETN mem_interconnect/S01_ARESETN mem_interconnect_1/S00_ARESETN}
        c1_sys_clk_n_1 {c0_sys_clk_n ddr4_0/c0_sys_clk_n}
        c1_sys_clk_n_2 {c1_sys_clk_n ddr4_1/c0_sys_clk_n}
        c1_sys_clk_p_1 {c0_sys_clk_p ddr4_0/c0_sys_clk_p}
        c1_sys_clk_p_2 {c1_sys_clk_p ddr4_1/c0_sys_clk_p}
        ddr4_0_c0_ddr4_ui_clk_sync_rst {ddr4_0/c0_ddr4_ui_clk_sync_rst util_vector_logic_4/Op1}
        ddr4_0_c0_init_calib_complete {ARESETN proc_sys_reset_1/ext_reset_in util_vector_logic_5/Res}
        ddr4_0_c0_init_calib_complete1 {ddr4_0/c0_init_calib_complete util_vector_logic_5/Op1}
        ddr4_1_c0_ddr4_act_n {c0_ddr4_act_n ddr4_0/c0_ddr4_act_n}
        ddr4_1_c0_ddr4_act_n1 {c1_ddr4_act_n ddr4_1/c0_ddr4_act_n}
        ddr4_1_c0_ddr4_adr {c0_ddr4_adr ddr4_0/c0_ddr4_adr}
        ddr4_1_c0_ddr4_adr1 {c1_ddr4_adr ddr4_1/c0_ddr4_adr}
        ddr4_1_c0_ddr4_ba {c0_ddr4_ba ddr4_0/c0_ddr4_ba}
        ddr4_1_c0_ddr4_ba1 {c1_ddr4_ba ddr4_1/c0_ddr4_ba}
        ddr4_1_c0_ddr4_bg {c0_ddr4_bg ddr4_0/c0_ddr4_bg}
        ddr4_1_c0_ddr4_bg1 {c1_ddr4_bg ddr4_1/c0_ddr4_bg}
        ddr4_1_c0_ddr4_ck_c {c0_ddr4_ck_c ddr4_0/c0_ddr4_ck_c}
        ddr4_1_c0_ddr4_ck_c1 {c1_ddr4_ck_c ddr4_1/c0_ddr4_ck_c}
        ddr4_1_c0_ddr4_ck_t {c0_ddr4_ck_t ddr4_0/c0_ddr4_ck_t}
        ddr4_1_c0_ddr4_ck_t1 {c1_ddr4_ck_t ddr4_1/c0_ddr4_ck_t}
        ddr4_1_c0_ddr4_cke {c0_ddr4_cke ddr4_0/c0_ddr4_cke}
        ddr4_1_c0_ddr4_cke1 {c1_ddr4_cke ddr4_1/c0_ddr4_cke}
        ddr4_1_c0_ddr4_cs_n {c0_ddr4_cs_n ddr4_0/c0_ddr4_cs_n}
        ddr4_1_c0_ddr4_cs_n1 {c1_ddr4_cs_n ddr4_1/c0_ddr4_cs_n}
        ddr4_1_c0_ddr4_odt {c0_ddr4_odt ddr4_0/c0_ddr4_odt}
        ddr4_1_c0_ddr4_odt1 {c1_ddr4_odt ddr4_1/c0_ddr4_odt}
        ddr4_1_c0_ddr4_reset_n {c0_ddr4_reset_n ddr4_0/c0_ddr4_reset_n}
        ddr4_1_c0_ddr4_reset_n1 {c1_ddr4_reset_n ddr4_1/c0_ddr4_reset_n}
        ddr4_1_c0_ddr4_ui_clk {ddr4_0/c0_ddr4_ui_clk mem_interconnect/ACLK mem_interconnect/M00_ACLK proc_sys_reset_1/slowest_sync_clk}
        ddr4_1_c0_ddr4_ui_clk1 {ddr4_1/c0_ddr4_ui_clk mem_interconnect_1/ACLK mem_interconnect_1/M00_ACLK}
        ddr4_1_c0_ddr4_ui_clk_sync_rst {ddr4_1/c0_ddr4_ui_clk_sync_rst util_vector_logic_4/Op2}
        ddr4_1_c0_init_calib_complete {ddr4_1/c0_init_calib_complete util_vector_logic_5/Op2}
        m_axi_mm2s_aclk_1 {clk156_25] [get_bd_pins mem_interconnect/S01_ACLK mem_interconnect_1/S00_ACLK}
        proc_sys_reset_1_interconnect_aresetn {mem_interconnect/ARESETN mem_interconnect_1/ARESETN proc_sys_reset_1/interconnect_aresetn}
        sys_rst_1 {sys_rst] [get_bd_pins ddr4_0/sys_rst ddr4_1/sys_rst}
        util_vector_logic_4_Res {proc_sys_reset_1/aux_reset_in util_vector_logic_4/Res}
    }
    adm-8k5-debug {
        M00_ARESETN_1 {ddr4_0/c0_ddr4_aresetn ddr4_1/c0_ddr4_aresetn mem_interconnect/M00_ARESETN mem_interconnect_1/M00_ARESETN proc_sys_reset_1/peripheral_aresetn}
        Net {c1_ddr4_dqs_t ddr4_1/c0_ddr4_dqs_t}
        Net1 {c1_ddr4_dqs_c ddr4_1/c0_ddr4_dqs_c}
        Net2 {c1_ddr4_dm_dbi_n ddr4_1/c0_ddr4_dm_dbi_n}
        Net3 {c1_ddr4_dq ddr4_1/c0_ddr4_dq}
        Net4 {c0_ddr4_dm_dbi_n ddr4_0/c0_ddr4_dm_dbi_n}
        Net5 {c0_ddr4_dqs_c ddr4_0/c0_ddr4_dqs_c}
        Net6 {c0_ddr4_dqs_t ddr4_0/c0_ddr4_dqs_t}
        Net7 {c0_ddr4_dg ddr4_0/c0_ddr4_dq}
        S00_ACLK_1 {PCIE_ACLK mem_interconnect/S00_ACLK}
        S01_ARESETN_1 {S_ARESETN mem_interconnect/S00_ARESETN mem_interconnect/S01_ARESETN mem_interconnect_1/S00_ARESETN}
        c1_sys_clk_n_1 {c0_sys_clk_n ddr4_0/c0_sys_clk_n}
        c1_sys_clk_n_2 {c1_sys_clk_n ddr4_1/c0_sys_clk_n}
        c1_sys_clk_p_1 {c0_sys_clk_p ddr4_0/c0_sys_clk_p}
        c1_sys_clk_p_2 {c1_sys_clk_p ddr4_1/c0_sys_clk_p}
        ddr4_0_c0_ddr4_ui_clk_sync_rst {ddr4_0/c0_ddr4_ui_clk_sync_rst util_vector_logic_4/Op1}
        ddr4_0_c0_init_calib_complete {ARESETN proc_sys_reset_1/ext_reset_in util_vector_logic_5/Res}
        ddr4_0_c0_init_calib_complete1 {ddr4_0/c0_init_calib_complete util_vector_logic_5/Op1}
        ddr4_1_c0_ddr4_act_n {c0_ddr4_act_n ddr4_0/c0_ddr4_act_n}
        ddr4_1_c0_ddr4_act_n1 {c1_ddr4_act_n ddr4_1/c0_ddr4_act_n}
        ddr4_1_c0_ddr4_adr {c0_ddr4_adr ddr4_0/c0_ddr4_adr}
        ddr4_1_c0_ddr4_adr1 {c1_ddr4_adr ddr4_1/c0_ddr4_adr}
        ddr4_1_c0_ddr4_ba {c0_ddr4_ba ddr4_0/c0_ddr4_ba}
        ddr4_1_c0_ddr4_ba1 {c1_ddr4_ba ddr4_1/c0_ddr4_ba}
        ddr4_1_c0_ddr4_bg {c0_ddr4_bg ddr4_0/c0_ddr4_bg}
        ddr4_1_c0_ddr4_bg1 {c1_ddr4_bg ddr4_1/c0_ddr4_bg}
        ddr4_1_c0_ddr4_ck_c {c0_ddr4_ck_c ddr4_0/c0_ddr4_ck_c}
        ddr4_1_c0_ddr4_ck_c1 {c1_ddr4_ck_c ddr4_1/c0_ddr4_ck_c}
        ddr4_1_c0_ddr4_ck_t {c0_ddr4_ck_t ddr4_0/c0_ddr4_ck_t}
        ddr4_1_c0_ddr4_ck_t1 {c1_ddr4_ck_t ddr4_1/c0_ddr4_ck_t}
        ddr4_1_c0_ddr4_cke {c0_ddr4_cke ddr4_0/c0_ddr4_cke}
        ddr4_1_c0_ddr4_cke1 {c1_ddr4_cke ddr4_1/c0_ddr4_cke}
        ddr4_1_c0_ddr4_cs_n {c0_ddr4_cs_n ddr4_0/c0_ddr4_cs_n}
        ddr4_1_c0_ddr4_cs_n1 {c1_ddr4_cs_n ddr4_1/c0_ddr4_cs_n}
        ddr4_1_c0_ddr4_odt {c0_ddr4_odt ddr4_0/c0_ddr4_odt}
        ddr4_1_c0_ddr4_odt1 {c1_ddr4_odt ddr4_1/c0_ddr4_odt}
        ddr4_1_c0_ddr4_reset_n {c0_ddr4_reset_n ddr4_0/c0_ddr4_reset_n}
        ddr4_1_c0_ddr4_reset_n1 {c1_ddr4_reset_n ddr4_1/c0_ddr4_reset_n}
        ddr4_1_c0_ddr4_ui_clk {ddr4_0/c0_ddr4_ui_clk mem_interconnect/ACLK mem_interconnect/M00_ACLK proc_sys_reset_1/slowest_sync_clk}
        ddr4_1_c0_ddr4_ui_clk1 {ddr4_1/c0_ddr4_ui_clk mem_interconnect_1/ACLK mem_interconnect_1/M00_ACLK}
        ddr4_1_c0_ddr4_ui_clk_sync_rst {ddr4_1/c0_ddr4_ui_clk_sync_rst util_vector_logic_4/Op2}
        ddr4_1_c0_init_calib_complete {ddr4_1/c0_init_calib_complete util_vector_logic_5/Op2}
        m_axi_mm2s_aclk_1 {clk156_25] [get_bd_pins mem_interconnect/S01_ACLK mem_interconnect_1/S00_ACLK}
        proc_sys_reset_1_interconnect_aresetn {mem_interconnect/ARESETN mem_interconnect_1/ARESETN proc_sys_reset_1/interconnect_aresetn}
        sys_rst_1 {sys_rst] [get_bd_pins ddr4_0/sys_rst ddr4_1/sys_rst}
        util_vector_logic_4_Res {proc_sys_reset_1/aux_reset_in util_vector_logic_4/Res}
    }
}