-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.4
-- Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axiStreamGate is
generic (
    C_S_AXI_AXILITES_ADDR_WIDTH : INTEGER := 5;
    C_S_AXI_AXILITES_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    packetIn_TDATA : IN STD_LOGIC_VECTOR (63 downto 0);
    packetIn_TVALID : IN STD_LOGIC;
    packetIn_TREADY : OUT STD_LOGIC;
    packetIn_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    packetIn_TKEEP : IN STD_LOGIC_VECTOR (7 downto 0);
    packetOut_TDATA : OUT STD_LOGIC_VECTOR (63 downto 0);
    packetOut_TVALID : OUT STD_LOGIC;
    packetOut_TREADY : IN STD_LOGIC;
    packetOut_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    packetOut_TKEEP : OUT STD_LOGIC_VECTOR (7 downto 0);
    s_axi_AXILiteS_AWVALID : IN STD_LOGIC;
    s_axi_AXILiteS_AWREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_WVALID : IN STD_LOGIC;
    s_axi_AXILiteS_WREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH/8-1 downto 0);
    s_axi_AXILiteS_ARVALID : IN STD_LOGIC;
    s_axi_AXILiteS_ARREADY : OUT STD_LOGIC;
    s_axi_AXILiteS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_AXILITES_ADDR_WIDTH-1 downto 0);
    s_axi_AXILiteS_RVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_RREADY : IN STD_LOGIC;
    s_axi_AXILiteS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_AXILITES_DATA_WIDTH-1 downto 0);
    s_axi_AXILiteS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_AXILiteS_BVALID : OUT STD_LOGIC;
    s_axi_AXILiteS_BREADY : IN STD_LOGIC;
    s_axi_AXILiteS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0) );
end;


architecture behav of axiStreamGate is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "axiStreamGate,hls_ip_2016_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcku115-flva1517-2-e,HLS_INPUT_CLOCK=5.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=2.500000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=273,HLS_SYN_LUT=303}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (4 downto 0) := "00100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (4 downto 0) := "01000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv2_2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";

    signal ap_rst_n_inv : STD_LOGIC;
    signal programming : STD_LOGIC_VECTOR (31 downto 0);
    signal packetOut_V_data_V_1_data_out : STD_LOGIC_VECTOR (63 downto 0);
    signal packetOut_V_data_V_1_vld_in : STD_LOGIC;
    signal packetOut_V_data_V_1_vld_out : STD_LOGIC;
    signal packetOut_V_data_V_1_ack_in : STD_LOGIC;
    signal packetOut_V_data_V_1_ack_out : STD_LOGIC;
    signal packetOut_V_data_V_1_payload_A : STD_LOGIC_VECTOR (63 downto 0);
    signal packetOut_V_data_V_1_payload_B : STD_LOGIC_VECTOR (63 downto 0);
    signal packetOut_V_data_V_1_sel_rd : STD_LOGIC := '0';
    signal packetOut_V_data_V_1_sel_wr : STD_LOGIC := '0';
    signal packetOut_V_data_V_1_sel : STD_LOGIC;
    signal packetOut_V_data_V_1_load_A : STD_LOGIC;
    signal packetOut_V_data_V_1_load_B : STD_LOGIC;
    signal packetOut_V_data_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_data_V_1_state_cmp_full : STD_LOGIC;
    signal packetOut_V_last_V_1_data_out : STD_LOGIC_VECTOR (0 downto 0);
    signal packetOut_V_last_V_1_vld_in : STD_LOGIC;
    signal packetOut_V_last_V_1_vld_out : STD_LOGIC;
    signal packetOut_V_last_V_1_ack_in : STD_LOGIC;
    signal packetOut_V_last_V_1_ack_out : STD_LOGIC;
    signal packetOut_V_last_V_1_payload_A : STD_LOGIC_VECTOR (0 downto 0);
    signal packetOut_V_last_V_1_payload_B : STD_LOGIC_VECTOR (0 downto 0);
    signal packetOut_V_last_V_1_sel_rd : STD_LOGIC := '0';
    signal packetOut_V_last_V_1_sel_wr : STD_LOGIC := '0';
    signal packetOut_V_last_V_1_sel : STD_LOGIC;
    signal packetOut_V_last_V_1_load_A : STD_LOGIC;
    signal packetOut_V_last_V_1_load_B : STD_LOGIC;
    signal packetOut_V_last_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_last_V_1_state_cmp_full : STD_LOGIC;
    signal packetOut_V_keep_V_1_data_out : STD_LOGIC_VECTOR (7 downto 0);
    signal packetOut_V_keep_V_1_vld_in : STD_LOGIC;
    signal packetOut_V_keep_V_1_vld_out : STD_LOGIC;
    signal packetOut_V_keep_V_1_ack_in : STD_LOGIC;
    signal packetOut_V_keep_V_1_ack_out : STD_LOGIC;
    signal packetOut_V_keep_V_1_payload_A : STD_LOGIC_VECTOR (7 downto 0);
    signal packetOut_V_keep_V_1_payload_B : STD_LOGIC_VECTOR (7 downto 0);
    signal packetOut_V_keep_V_1_sel_rd : STD_LOGIC := '0';
    signal packetOut_V_keep_V_1_sel_wr : STD_LOGIC := '0';
    signal packetOut_V_keep_V_1_sel : STD_LOGIC;
    signal packetOut_V_keep_V_1_load_A : STD_LOGIC;
    signal packetOut_V_keep_V_1_load_B : STD_LOGIC;
    signal packetOut_V_keep_V_1_state : STD_LOGIC_VECTOR (1 downto 0) := "00";
    signal packetOut_V_keep_V_1_state_cmp_full : STD_LOGIC;
    signal programSafe : STD_LOGIC_VECTOR (31 downto 0);
    signal programSafe_ap_vld : STD_LOGIC;
    signal packetIn_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal packetOut_TDATA_blk_n : STD_LOGIC;
    signal ap_CS_fsm_state4 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal tmp_reg_123 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_1_reg_127 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_fu_102_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC_VECTOR (0 downto 0);
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal tmp_1_nbreadreq_fu_66_p5 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_last_V_reg_136 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_reg_ioackin_programSafe_dummy_ack : STD_LOGIC := '0';
    signal ap_NS_fsm : STD_LOGIC_VECTOR (4 downto 0);

    component axiStreamGate_AXILiteS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        programming : OUT STD_LOGIC_VECTOR (31 downto 0);
        programSafe : IN STD_LOGIC_VECTOR (31 downto 0);
        programSafe_ap_vld : IN STD_LOGIC );
    end component;



begin
    axiStreamGate_AXILiteS_s_axi_U : component axiStreamGate_AXILiteS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_AXILITES_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_AXILITES_DATA_WIDTH)
    port map (
        AWVALID => s_axi_AXILiteS_AWVALID,
        AWREADY => s_axi_AXILiteS_AWREADY,
        AWADDR => s_axi_AXILiteS_AWADDR,
        WVALID => s_axi_AXILiteS_WVALID,
        WREADY => s_axi_AXILiteS_WREADY,
        WDATA => s_axi_AXILiteS_WDATA,
        WSTRB => s_axi_AXILiteS_WSTRB,
        ARVALID => s_axi_AXILiteS_ARVALID,
        ARREADY => s_axi_AXILiteS_ARREADY,
        ARADDR => s_axi_AXILiteS_ARADDR,
        RVALID => s_axi_AXILiteS_RVALID,
        RREADY => s_axi_AXILiteS_RREADY,
        RDATA => s_axi_AXILiteS_RDATA,
        RRESP => s_axi_AXILiteS_RRESP,
        BVALID => s_axi_AXILiteS_BVALID,
        BREADY => s_axi_AXILiteS_BREADY,
        BRESP => s_axi_AXILiteS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        programming => programming,
        programSafe => programSafe,
        programSafe_ap_vld => programSafe_ap_vld);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_reg_ioackin_programSafe_dummy_ack_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_reg_ioackin_programSafe_dummy_ack <= ap_const_logic_0;
            else
                if (((ap_const_lv1_1 = ap_CS_fsm_state4) and ((ap_const_lv1_0 = tmp_reg_123) or (ap_const_lv1_0 = tmp_1_reg_127) or not((ap_const_lv1_0 = tmp_last_V_reg_136))) and not((not((ap_const_lv1_0 = tmp_reg_123)) and not((ap_const_lv1_0 = tmp_1_reg_127)) and (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then 
                    ap_reg_ioackin_programSafe_dummy_ack <= ap_const_logic_0;
                elsif (((ap_const_lv1_1 = ap_CS_fsm_state4) and ((ap_const_lv1_0 = tmp_reg_123) or (ap_const_lv1_0 = tmp_1_reg_127) or not((ap_const_lv1_0 = tmp_last_V_reg_136))) and ap_const_boolean_1)) then 
                    ap_reg_ioackin_programSafe_dummy_ack <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_data_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_data_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_data_V_1_ack_out) and (ap_const_logic_1 = packetOut_V_data_V_1_vld_out))) then 
                                        packetOut_V_data_V_1_sel_rd <= not(packetOut_V_data_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_data_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_data_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_data_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_data_V_1_ack_in))) then 
                                        packetOut_V_data_V_1_sel_wr <= not(packetOut_V_data_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_data_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_data_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetOut_V_data_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_data_V_1_ack_out) and (packetOut_V_data_V_1_state = ap_const_lv2_3)) or ((ap_const_logic_0 = packetOut_V_data_V_1_vld_in) and (packetOut_V_data_V_1_state = ap_const_lv2_2)))) then 
                    packetOut_V_data_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetOut_V_data_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_data_V_1_ack_out) and (packetOut_V_data_V_1_state = ap_const_lv2_3)) or ((ap_const_logic_0 = packetOut_V_data_V_1_ack_out) and (packetOut_V_data_V_1_state = ap_const_lv2_1)))) then 
                    packetOut_V_data_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetOut_V_data_V_1_vld_in) and (packetOut_V_data_V_1_state = ap_const_lv2_2)) or ((ap_const_logic_1 = packetOut_V_data_V_1_ack_out) and (packetOut_V_data_V_1_state = ap_const_lv2_1)) or ((packetOut_V_data_V_1_state = ap_const_lv2_3) and not(((ap_const_logic_1 = packetOut_V_data_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_data_V_1_ack_out))) and not(((ap_const_logic_0 = packetOut_V_data_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_data_V_1_ack_out)))))) then 
                    packetOut_V_data_V_1_state <= ap_const_lv2_3;
                else 
                    packetOut_V_data_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_keep_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_keep_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_keep_V_1_ack_out) and (ap_const_logic_1 = packetOut_V_keep_V_1_vld_out))) then 
                                        packetOut_V_keep_V_1_sel_rd <= not(packetOut_V_keep_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_keep_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_keep_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_keep_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_keep_V_1_ack_in))) then 
                                        packetOut_V_keep_V_1_sel_wr <= not(packetOut_V_keep_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_keep_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_keep_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetOut_V_keep_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_keep_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_keep_V_1_state)) or ((ap_const_logic_0 = packetOut_V_keep_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_keep_V_1_state)))) then 
                    packetOut_V_keep_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetOut_V_keep_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_keep_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_keep_V_1_state)) or ((ap_const_logic_0 = packetOut_V_keep_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_keep_V_1_state)))) then 
                    packetOut_V_keep_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetOut_V_keep_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_keep_V_1_state)) or ((ap_const_logic_1 = packetOut_V_keep_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_keep_V_1_state)) or ((ap_const_lv2_3 = packetOut_V_keep_V_1_state) and not(((ap_const_logic_1 = packetOut_V_keep_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_keep_V_1_ack_out))) and not(((ap_const_logic_0 = packetOut_V_keep_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_keep_V_1_ack_out)))))) then 
                    packetOut_V_keep_V_1_state <= ap_const_lv2_3;
                else 
                    packetOut_V_keep_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_last_V_1_sel_rd_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_last_V_1_sel_rd <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_last_V_1_ack_out) and (ap_const_logic_1 = packetOut_V_last_V_1_vld_out))) then 
                                        packetOut_V_last_V_1_sel_rd <= not(packetOut_V_last_V_1_sel_rd);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_last_V_1_sel_wr_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_last_V_1_sel_wr <= ap_const_logic_0;
            else
                if (((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_last_V_1_ack_in))) then 
                                        packetOut_V_last_V_1_sel_wr <= not(packetOut_V_last_V_1_sel_wr);
                end if; 
            end if;
        end if;
    end process;


    packetOut_V_last_V_1_state_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                packetOut_V_last_V_1_state <= ap_const_lv2_0;
            else
                if ((((ap_const_logic_0 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_last_V_1_state)) or ((ap_const_logic_0 = packetOut_V_last_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_last_V_1_state)))) then 
                    packetOut_V_last_V_1_state <= ap_const_lv2_2;
                elsif ((((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_3 = packetOut_V_last_V_1_state)) or ((ap_const_logic_0 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_last_V_1_state)))) then 
                    packetOut_V_last_V_1_state <= ap_const_lv2_1;
                elsif ((((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_lv2_2 = packetOut_V_last_V_1_state)) or ((ap_const_logic_1 = packetOut_V_last_V_1_ack_out) and (ap_const_lv2_1 = packetOut_V_last_V_1_state)) or ((ap_const_lv2_3 = packetOut_V_last_V_1_state) and not(((ap_const_logic_1 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_0 = packetOut_V_last_V_1_ack_out))) and not(((ap_const_logic_0 = packetOut_V_last_V_1_vld_in) and (ap_const_logic_1 = packetOut_V_last_V_1_ack_out)))))) then 
                    packetOut_V_last_V_1_state <= ap_const_lv2_3;
                else 
                    packetOut_V_last_V_1_state <= ap_const_lv2_2;
                end if; 
            end if;
        end if;
    end process;

    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_data_V_1_load_A)) then
                packetOut_V_data_V_1_payload_A <= packetIn_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_data_V_1_load_B)) then
                packetOut_V_data_V_1_payload_B <= packetIn_TDATA;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_keep_V_1_load_A)) then
                packetOut_V_keep_V_1_payload_A <= packetIn_TKEEP;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_keep_V_1_load_B)) then
                packetOut_V_keep_V_1_payload_B <= packetIn_TKEEP;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_last_V_1_load_A)) then
                packetOut_V_last_V_1_payload_A <= packetIn_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = packetOut_V_last_V_1_load_B)) then
                packetOut_V_last_V_1_payload_B <= packetIn_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state2) and not((ap_const_lv1_0 = tmp_fu_102_p2)))) then
                tmp_1_reg_127 <= tmp_1_nbreadreq_fu_66_p5;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_TVALID = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then
                tmp_last_V_reg_136 <= packetIn_TLAST;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_lv1_1 = ap_CS_fsm_state2))) then
                tmp_reg_123 <= tmp_fu_102_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (packetIn_TVALID, packetOut_V_data_V_1_ack_in, ap_CS_fsm, tmp_reg_123, tmp_1_reg_127, tmp_fu_102_p2, tmp_1_nbreadreq_fu_66_p5, tmp_last_V_reg_136)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                if ((not((ap_const_lv1_0 = tmp_fu_102_p2)) and not((ap_const_lv1_0 = tmp_1_nbreadreq_fu_66_p5)))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state3 => 
                if (not(((packetIn_TVALID = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_data_V_1_ack_in)))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                if ((((ap_const_lv1_0 = tmp_reg_123) or (ap_const_lv1_0 = tmp_1_reg_127) or not((ap_const_lv1_0 = tmp_last_V_reg_136))) and not((not((ap_const_lv1_0 = tmp_reg_123)) and not((ap_const_lv1_0 = tmp_1_reg_127)) and (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                elsif ((not((ap_const_lv1_0 = tmp_reg_123)) and not((ap_const_lv1_0 = tmp_1_reg_127)) and (ap_const_lv1_0 = tmp_last_V_reg_136) and not((not((ap_const_lv1_0 = tmp_reg_123)) and not((ap_const_lv1_0 = tmp_1_reg_127)) and (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then
                    ap_NS_fsm <= ap_ST_fsm_state3;
                else
                    ap_NS_fsm <= ap_ST_fsm_state4;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1 downto 1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2 downto 2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3 downto 3);

    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    packetIn_TDATA_blk_n_assign_proc : process(packetIn_TVALID, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3))) then 
            packetIn_TDATA_blk_n <= packetIn_TVALID;
        else 
            packetIn_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    packetIn_TREADY_assign_proc : process(packetIn_TVALID, packetOut_V_data_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_TVALID = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_data_V_1_ack_in)))))) then 
            packetIn_TREADY <= ap_const_logic_1;
        else 
            packetIn_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_TDATA <= packetOut_V_data_V_1_data_out;

    packetOut_TDATA_blk_n_assign_proc : process(packetOut_V_data_V_1_state, ap_CS_fsm_state3, ap_CS_fsm_state4, tmp_reg_123, tmp_1_reg_127)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_state3)) or ((ap_const_lv1_1 = ap_CS_fsm_state4) and not((ap_const_lv1_0 = tmp_reg_123)) and not((ap_const_lv1_0 = tmp_1_reg_127))))) then 
            packetOut_TDATA_blk_n <= packetOut_V_data_V_1_state(1);
        else 
            packetOut_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    packetOut_TKEEP <= packetOut_V_keep_V_1_data_out;
    packetOut_TLAST <= packetOut_V_last_V_1_data_out;
    packetOut_TVALID <= packetOut_V_keep_V_1_state(0);
    packetOut_V_data_V_1_ack_in <= packetOut_V_data_V_1_state(1);
    packetOut_V_data_V_1_ack_out <= packetOut_TREADY;

    packetOut_V_data_V_1_data_out_assign_proc : process(packetOut_V_data_V_1_payload_A, packetOut_V_data_V_1_payload_B, packetOut_V_data_V_1_sel)
    begin
        if ((ap_const_logic_1 = packetOut_V_data_V_1_sel)) then 
            packetOut_V_data_V_1_data_out <= packetOut_V_data_V_1_payload_B;
        else 
            packetOut_V_data_V_1_data_out <= packetOut_V_data_V_1_payload_A;
        end if; 
    end process;

    packetOut_V_data_V_1_load_A <= (packetOut_V_data_V_1_state_cmp_full and not(packetOut_V_data_V_1_sel_wr));
    packetOut_V_data_V_1_load_B <= (packetOut_V_data_V_1_sel_wr and packetOut_V_data_V_1_state_cmp_full);
    packetOut_V_data_V_1_sel <= packetOut_V_data_V_1_sel_rd;
    packetOut_V_data_V_1_state_cmp_full <= '0' when (packetOut_V_data_V_1_state = ap_const_lv2_1) else '1';

    packetOut_V_data_V_1_vld_in_assign_proc : process(packetIn_TVALID, packetOut_V_data_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_TVALID = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then 
            packetOut_V_data_V_1_vld_in <= ap_const_logic_1;
        else 
            packetOut_V_data_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_V_data_V_1_vld_out <= packetOut_V_data_V_1_state(0);
    packetOut_V_keep_V_1_ack_in <= packetOut_V_keep_V_1_state(1);
    packetOut_V_keep_V_1_ack_out <= packetOut_TREADY;

    packetOut_V_keep_V_1_data_out_assign_proc : process(packetOut_V_keep_V_1_payload_A, packetOut_V_keep_V_1_payload_B, packetOut_V_keep_V_1_sel)
    begin
        if ((ap_const_logic_1 = packetOut_V_keep_V_1_sel)) then 
            packetOut_V_keep_V_1_data_out <= packetOut_V_keep_V_1_payload_B;
        else 
            packetOut_V_keep_V_1_data_out <= packetOut_V_keep_V_1_payload_A;
        end if; 
    end process;

    packetOut_V_keep_V_1_load_A <= (packetOut_V_keep_V_1_state_cmp_full and not(packetOut_V_keep_V_1_sel_wr));
    packetOut_V_keep_V_1_load_B <= (packetOut_V_keep_V_1_sel_wr and packetOut_V_keep_V_1_state_cmp_full);
    packetOut_V_keep_V_1_sel <= packetOut_V_keep_V_1_sel_rd;
    packetOut_V_keep_V_1_state_cmp_full <= '0' when (packetOut_V_keep_V_1_state = ap_const_lv2_1) else '1';

    packetOut_V_keep_V_1_vld_in_assign_proc : process(packetIn_TVALID, packetOut_V_data_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_TVALID = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then 
            packetOut_V_keep_V_1_vld_in <= ap_const_logic_1;
        else 
            packetOut_V_keep_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_V_keep_V_1_vld_out <= packetOut_V_keep_V_1_state(0);
    packetOut_V_last_V_1_ack_in <= packetOut_V_last_V_1_state(1);
    packetOut_V_last_V_1_ack_out <= packetOut_TREADY;

    packetOut_V_last_V_1_data_out_assign_proc : process(packetOut_V_last_V_1_payload_A, packetOut_V_last_V_1_payload_B, packetOut_V_last_V_1_sel)
    begin
        if ((ap_const_logic_1 = packetOut_V_last_V_1_sel)) then 
            packetOut_V_last_V_1_data_out <= packetOut_V_last_V_1_payload_B;
        else 
            packetOut_V_last_V_1_data_out <= packetOut_V_last_V_1_payload_A;
        end if; 
    end process;

    packetOut_V_last_V_1_load_A <= (packetOut_V_last_V_1_state_cmp_full and not(packetOut_V_last_V_1_sel_wr));
    packetOut_V_last_V_1_load_B <= (packetOut_V_last_V_1_sel_wr and packetOut_V_last_V_1_state_cmp_full);
    packetOut_V_last_V_1_sel <= packetOut_V_last_V_1_sel_rd;
    packetOut_V_last_V_1_state_cmp_full <= '0' when (packetOut_V_last_V_1_state = ap_const_lv2_1) else '1';

    packetOut_V_last_V_1_vld_in_assign_proc : process(packetIn_TVALID, packetOut_V_data_V_1_ack_in, ap_CS_fsm_state3)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state3) and not(((packetIn_TVALID = ap_const_logic_0) or (ap_const_logic_0 = packetOut_V_data_V_1_ack_in))))) then 
            packetOut_V_last_V_1_vld_in <= ap_const_logic_1;
        else 
            packetOut_V_last_V_1_vld_in <= ap_const_logic_0;
        end if; 
    end process;

    packetOut_V_last_V_1_vld_out <= packetOut_V_last_V_1_state(0);

    programSafe_assign_proc : process(ap_CS_fsm_state4, tmp_reg_123, tmp_1_reg_127, ap_CS_fsm_state2, tmp_last_V_reg_136)
    begin
        if (((ap_const_lv1_1 = ap_CS_fsm_state4) and ((ap_const_lv1_0 = tmp_reg_123) or (ap_const_lv1_0 = tmp_1_reg_127) or not((ap_const_lv1_0 = tmp_last_V_reg_136))))) then 
            programSafe <= ap_const_lv32_1;
        elsif (((ap_const_lv1_1 = ap_CS_fsm_state2))) then 
            programSafe <= ap_const_lv32_0;
        else 
            programSafe <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;


    programSafe_ap_vld_assign_proc : process(ap_CS_fsm_state4, tmp_reg_123, tmp_1_reg_127, ap_CS_fsm_state2, tmp_last_V_reg_136, ap_reg_ioackin_programSafe_dummy_ack)
    begin
        if ((((ap_const_lv1_1 = ap_CS_fsm_state2)) or ((ap_const_lv1_1 = ap_CS_fsm_state4) and ((ap_const_lv1_0 = tmp_reg_123) or (ap_const_lv1_0 = tmp_1_reg_127) or not((ap_const_lv1_0 = tmp_last_V_reg_136))) and (ap_const_logic_0 = ap_reg_ioackin_programSafe_dummy_ack)))) then 
            programSafe_ap_vld <= ap_const_logic_1;
        else 
            programSafe_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    tmp_1_nbreadreq_fu_66_p5 <= (0=>(packetIn_TVALID), others=>'-');
    tmp_fu_102_p2 <= "1" when (programming = ap_const_lv32_0) else "0";
end behav;