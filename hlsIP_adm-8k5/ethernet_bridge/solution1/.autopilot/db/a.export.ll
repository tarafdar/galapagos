; ModuleID = '/home/tarafdar/workDir/galapagos/hlsIP_adm-8k5/ethernet_bridge/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@state_V_1 = internal unnamed_addr global i3 0
@state_V = internal unnamed_addr global i3 0
@mac_table_V = global [256 x i48] zeroinitializer
@mac_addr_OC_V_c42_st = internal unnamed_addr constant [15 x i8] c"mac_addr.V_c42\00"
@mac_addr_OC_V_c_str = internal unnamed_addr constant [13 x i8] c"mac_addr.V_c\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@ethernet_bridge_str = internal unnamed_addr constant [16 x i8] c"ethernet_bridge\00"
@eth_dst_src_V = internal unnamed_addr global i96 0
@dest_mac_address_V = internal unnamed_addr global i48 0
@dest_V = internal unnamed_addr global i8 0
@app_packet_out_last_s = internal unnamed_addr global i1 false
@app_packet_in_tkeep_s = internal unnamed_addr global i8 0
@app_packet_in_tdest_s = internal unnamed_addr global i8 0
@app_packet_in_last_V = internal unnamed_addr global i1 false
@app_packet_in_data_V = internal unnamed_addr global i64 0
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str3 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i81 @llvm.part.select.i81(i81, i32, i32) nounwind readnone

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i73 @llvm.part.select.i73(i73, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define internal fastcc void @ethernet_bridge.entr(i48 %mac_addr_V, i48* %mac_addr_V_out, i48* %mac_addr_V_out1) {
entry:
  call void (...)* @_ssdm_op_SpecInterface(i48* %mac_addr_V_out, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %mac_addr_V_read = call i48 @_ssdm_op_Read.ap_auto.i48(i48 %mac_addr_V)
  call void @_ssdm_op_Write.ap_fifo.i48P(i48* %mac_addr_V_out, i48 %mac_addr_V_read)
  call void (...)* @_ssdm_op_SpecInterface(i48* %mac_addr_V_out1, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void @_ssdm_op_Write.ap_fifo.i48P(i48* %mac_addr_V_out1, i48 %mac_addr_V_read)
  ret void
}

define void @ethernet_bridge(i81* %to_app_V, i73* %from_eth_V, i81* %from_app_V, i73* %to_eth_V, i48 %mac_addr_V) {
  %mac_addr_V_read = call i48 @_ssdm_op_Read.ap_auto.i48(i48 %mac_addr_V)
  %mac_addr_V_c42 = alloca i48, align 8
  %mac_addr_V_c = alloca i48, align 8
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i73* %to_eth_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %from_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i73* %from_eth_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %to_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i73* %to_eth_V), !map !169
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %from_app_V), !map !179
  call void (...)* @_ssdm_op_SpecBitsMap(i73* %from_eth_V), !map !192
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %to_app_V), !map !202
  call void (...)* @_ssdm_op_SpecBitsMap(i48 %mac_addr_V), !map !215
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @ethernet_bridge_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i81* %to_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i73* %from_eth_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %from_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i73* %to_eth_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  %empty = call i32 (...)* @_ssdm_op_SpecChannel([13 x i8]* @mac_addr_OC_V_c_str, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i48* %mac_addr_V_c, i48* %mac_addr_V_c)
  call void (...)* @_ssdm_op_SpecInterface(i48* %mac_addr_V_c, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %empty_15 = call i32 (...)* @_ssdm_op_SpecChannel([15 x i8]* @mac_addr_OC_V_c42_st, i32 1, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 0, i48* %mac_addr_V_c42, i48* %mac_addr_V_c42)
  call void (...)* @_ssdm_op_SpecInterface(i48* %mac_addr_V_c42, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @ethernet_bridge.entr(i48 %mac_addr_V_read, i48* %mac_addr_V_c, i48* %mac_addr_V_c42)
  call fastcc void @eth_to_app(i73* %from_eth_V, i81* %to_app_V, i48* nocapture %mac_addr_V_c)
  call fastcc void @app_to_eth(i81* %from_app_V, i73* %to_eth_V, i48* nocapture %mac_addr_V_c42)
  ret void
}

define internal fastcc void @eth_to_app(i73* %from_eth_V, i81* %to_app_V, i48* nocapture %mac_address_V) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i73* %from_eth_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %to_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %to_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i73* %from_eth_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i48* %mac_address_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %mac_address_V_read = call i48 @_ssdm_op_Read.ap_fifo.i48P(i48* %mac_address_V)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %state_V_1_load = load i3* @state_V_1, align 1
  switch i3 %state_V_1_load, label %.exit [
    i3 0, label %0
    i3 2, label %2
    i3 3, label %4
    i3 1, label %6
  ]

; <label>:0                                       ; preds = %entry
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i73P(i73* %from_eth_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge169.i

; <label>:1                                       ; preds = %0
  %tmp9 = call i73 @_ssdm_op_Read.ap_fifo.volatile.i73P(i73* %from_eth_V)
  %tmp_4 = trunc i73 %tmp9 to i8
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp9, i32 8, i32 15)
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp9, i32 16, i32 23)
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp9, i32 32, i32 39)
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp9, i32 24, i32 31)
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp9, i32 40, i32 47)
  %observedAddress_V = call i48 @_ssdm_op_BitConcatenate.i48.i8.i8.i8.i8.i8.i8(i8 %tmp_4, i8 %tmp_5, i8 %tmp_6, i8 %tmp_8, i8 %tmp_7, i8 %tmp_9)
  %tmp_i = icmp eq i48 %observedAddress_V, %mac_address_V_read
  %storemerge1_cast_i_c = select i1 %tmp_i, i3 2, i3 1
  store i3 %storemerge1_cast_i_c, i3* @state_V_1, align 1
  br label %._crit_edge169.i

._crit_edge169.i:                                 ; preds = %1, %0
  br label %.exit

; <label>:2                                       ; preds = %entry
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i73P(i73* %from_eth_V, i32 1)
  br i1 %tmp_1, label %3, label %._crit_edge170.i

; <label>:3                                       ; preds = %2
  %tmp_122 = call i73 @_ssdm_op_Read.ap_fifo.volatile.i73P(i73* %from_eth_V)
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_122, i32 48, i32 55)
  store i8 %tmp_s, i8* @dest_V, align 1
  store i3 3, i3* @state_V_1, align 1
  br label %._crit_edge170.i

._crit_edge170.i:                                 ; preds = %3, %2
  br label %.exit

; <label>:4                                       ; preds = %entry
  %tmp_tdest_V = load i8* @dest_V, align 1
  %tmp_2 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i73P(i73* %from_eth_V, i32 1)
  %app_packet_out_last_1 = load i1* @app_packet_out_last_s, align 1
  br i1 %tmp_2, label %5, label %._crit_edge171.i

; <label>:5                                       ; preds = %4
  %tmp_235 = call i73 @_ssdm_op_Read.ap_fifo.volatile.i73P(i73* %from_eth_V)
  %tmp_last_V = call i1 @_ssdm_op_BitSelect.i1.i73.i32(i73 %tmp_235, i32 64)
  %tmp_11 = trunc i73 %tmp_235 to i8
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 56, i32 63)
  %tmp_13 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 8, i32 15)
  %tmp_14 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 16, i32 23)
  %tmp_15 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 32, i32 39)
  %tmp_16 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 48, i32 55)
  %tmp_17 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 24, i32 31)
  %tmp_18 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 40, i32 47)
  store i1 %tmp_last_V, i1* @app_packet_out_last_s, align 8
  %tmp_19 = call i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73 %tmp_235, i32 72, i32 65)
  %tmp_31 = call i81 @_ssdm_op_BitConcatenate.i81.i8.i8.i1.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_19, i8 %tmp_tdest_V, i1 %tmp_last_V, i8 %tmp_11, i8 %tmp_13, i8 %tmp_14, i8 %tmp_17, i8 %tmp_15, i8 %tmp_18, i8 %tmp_16, i8 %tmp_12)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_app_V, i81 %tmp_31)
  br label %._crit_edge171.i

._crit_edge171.i:                                 ; preds = %5, %4
  %app_packet_out_last_2 = phi i1 [ %tmp_last_V, %5 ], [ %app_packet_out_last_1, %4 ]
  %storemerge2_cast_i_c = select i1 %app_packet_out_last_2, i3 0, i3 3
  store i3 %storemerge2_cast_i_c, i3* @state_V_1, align 1
  br label %.exit

; <label>:6                                       ; preds = %entry
  %tmp_3 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i73P(i73* %from_eth_V, i32 1)
  br i1 %tmp_3, label %7, label %._crit_edge172.i

; <label>:7                                       ; preds = %6
  %tmp_448 = call i73 @_ssdm_op_Read.ap_fifo.volatile.i73P(i73* %from_eth_V)
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i73.i32(i73 %tmp_448, i32 64)
  %not_tmp_last_V_4_loa = xor i1 %tmp_20, true
  %storemerge_cast_i = zext i1 %not_tmp_last_V_4_loa to i3
  store i3 %storemerge_cast_i, i3* @state_V_1, align 1
  br label %._crit_edge172.i

._crit_edge172.i:                                 ; preds = %7, %6
  br label %.exit

.exit:                                            ; preds = %._crit_edge172.i, %._crit_edge171.i, %._crit_edge170.i, %._crit_edge169.i, %entry
  ret void
}

define internal fastcc void @app_to_eth(i81* %from_app_V, i73* %to_eth_V, i48* nocapture %src_mac_address_V) {
entry:
  call void (...)* @_ssdm_op_SpecIFCore(i73* %to_eth_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %from_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %from_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i73* %to_eth_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i48* %src_mac_address_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_Repl2_1 = call i48 @_ssdm_op_Read.ap_fifo.i48P(i48* %src_mac_address_V)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %p_Val2_s = load i96* @eth_dst_src_V, align 8
  %temp_V = trunc i96 %p_Val2_s to i32
  %state_V_load = load i3* @state_V, align 1
  %lhs_V = load i64* @app_packet_in_data_V, align 8
  %app_packet_in_last_V_1 = load i1* @app_packet_in_last_V, align 1
  %p_Repl2_2 = load i48* @dest_mac_address_V, align 8
  %app_packet_in_tkeep_1 = load i8* @app_packet_in_tkeep_s, align 1
  switch i3 %state_V_load, label %.exit [
    i3 0, label %0
    i3 1, label %2
    i3 2, label %3
    i3 3, label %4
    i3 -4, label %5
  ]

; <label>:0                                       ; preds = %entry
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %from_app_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge301.i

; <label>:1                                       ; preds = %0
  %tmp27 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %from_app_V)
  %tmp_39 = trunc i81 %tmp27 to i64
  store i64 %tmp_39, i64* @app_packet_in_data_V, align 8
  %tmp_40 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp27, i32 64)
  store i1 %tmp_40, i1* @app_packet_in_last_V, align 8
  %tmp_tdest_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp27, i32 65, i32 72)
  store i8 %tmp_tdest_V_load_new, i8* @app_packet_in_tdest_s, align 1
  %tmp_tkeep_V_7_load_n = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp27, i32 73, i32 80)
  store i8 %tmp_tkeep_V_7_load_n, i8* @app_packet_in_tkeep_s, align 2
  %tmp_i = zext i8 %tmp_tdest_V_load_new to i64
  %mac_table_V_addr = getelementptr [256 x i48]* @mac_table_V, i64 0, i64 %tmp_i
  %mac_table_V_load = load i48* %mac_table_V_addr, align 8
  store i48 %mac_table_V_load, i48* @dest_mac_address_V, align 8
  store i3 1, i3* @state_V, align 1
  br label %._crit_edge301.i

._crit_edge301.i:                                 ; preds = %1, %0
  br label %.exit

; <label>:2                                       ; preds = %entry
  %p_Result_s = call i96 @_ssdm_op_BitConcatenate.i96.i48.i48(i48 %p_Repl2_2, i48 %p_Repl2_1)
  store i96 %p_Result_s, i96* @eth_dst_src_V, align 8
  %tmp_5_i = call i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48 %p_Repl2_1, i32 32, i32 47)
  %tmp_1 = call i73 @_ssdm_op_BitConcatenate.i73.i9.i48.i16(i9 -2, i48 %p_Repl2_2, i16 %tmp_5_i)
  call void @_ssdm_op_Write.ap_fifo.volatile.i73P(i73* %to_eth_V, i73 %tmp_1)
  store i3 2, i3* @state_V, align 1
  br label %.exit

; <label>:3                                       ; preds = %entry
  %p_Repl2_3 = load i8* @app_packet_in_tdest_s, align 1
  %p_Result_1 = call i56 @_ssdm_op_BitConcatenate.i56.i32.i16.i8(i32 %temp_V, i16 29696, i8 %p_Repl2_3)
  %tmp_data_V = zext i56 %p_Result_1 to i64
  %tmp_2 = call i73 @_ssdm_op_BitConcatenate.i73.i9.i64(i9 -2, i64 %tmp_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i73P(i73* %to_eth_V, i73 %tmp_2)
  store i3 3, i3* @state_V, align 1
  br label %.exit

; <label>:4                                       ; preds = %entry
  %tmp_38 = trunc i64 %lhs_V to i8
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 56, i32 63)
  %tmp_20 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 8, i32 15)
  %tmp_21 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 16, i32 23)
  %tmp_22 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 32, i32 39)
  %tmp_23 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 48, i32 55)
  %tmp_24 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 24, i32 31)
  %tmp_25 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %lhs_V, i32 40, i32 47)
  %tmp_26 = call i8 @_ssdm_op_PartSelect.i8.i8.i32.i32(i8 %app_packet_in_tkeep_1, i32 7, i32 0)
  %tmp_3 = call i73 @_ssdm_op_BitConcatenate.i73.i8.i1.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_26, i1 false, i8 %tmp_38, i8 %tmp_20, i8 %tmp_21, i8 %tmp_24, i8 %tmp_22, i8 %tmp_25, i8 %tmp_23, i8 %tmp_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i73P(i73* %to_eth_V, i73 %tmp_3)
  %storemerge3_i = select i1 %app_packet_in_last_V_1, i3 0, i3 -4
  store i3 %storemerge3_i, i3* @state_V, align 1
  br label %.exit

; <label>:5                                       ; preds = %entry
  %tmp_4 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %from_app_V, i32 1)
  br i1 %tmp_4, label %6, label %._crit_edge302.i

; <label>:6                                       ; preds = %5
  %tmp_4_1 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %from_app_V)
  %lhs_V_1 = trunc i81 %tmp_4_1 to i64
  store i64 %lhs_V_1, i64* @app_packet_in_data_V, align 8
  %tmp_42 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_4_1, i32 64)
  store i1 %tmp_42, i1* @app_packet_in_last_V, align 8
  %tmp_tdest_V_1_load_n = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 65, i32 72)
  store i8 %tmp_tdest_V_1_load_n, i8* @app_packet_in_tdest_s, align 1
  %p_0_new_i = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 73, i32 80)
  store i8 %p_0_new_i, i8* @app_packet_in_tkeep_s, align 2
  %tmp_43 = trunc i81 %tmp_4_1 to i8
  %tmp_27 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 56, i32 63)
  %tmp_28 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 8, i32 15)
  %tmp_29 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 16, i32 23)
  %tmp_30 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 32, i32 39)
  %tmp_31 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 48, i32 55)
  %tmp_32 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 24, i32 31)
  %tmp_33 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 40, i32 47)
  %tmp_34 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_4_1, i32 80, i32 73)
  %tmp_520 = call i73 @_ssdm_op_BitConcatenate.i73.i8.i1.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_34, i1 false, i8 %tmp_43, i8 %tmp_28, i8 %tmp_29, i8 %tmp_32, i8 %tmp_30, i8 %tmp_33, i8 %tmp_31, i8 %tmp_27)
  call void @_ssdm_op_Write.ap_fifo.volatile.i73P(i73* %to_eth_V, i73 %tmp_520)
  %storemerge_i = select i1 %tmp_42, i3 0, i3 -4
  store i3 %storemerge_i, i3* @state_V, align 1
  br label %._crit_edge302.i

._crit_edge302.i:                                 ; preds = %6, %5
  br label %.exit

.exit:                                            ; preds = %._crit_edge302.i, %4, %3, %2, %._crit_edge301.i, %entry
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81*, i81) {
entry:
  %empty = call i81 @_autotb_FifoWrite_i81(i81* %0, i81 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i73P(i73*, i73) {
entry:
  %empty = call i73 @_autotb_FifoWrite_i73(i73* %0, i73 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.i48P(i48*, i48) {
entry:
  %empty = call i48 @_autotb_FifoWrite_i48(i48* %0, i48 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecDataflowPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecChannel(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81*) {
entry:
  %empty = call i81 @_autotb_FifoRead_i81(i81* %0)
  ret i81 %empty
}

define weak i73 @_ssdm_op_Read.ap_fifo.volatile.i73P(i73*) {
entry:
  %empty = call i73 @_autotb_FifoRead_i73(i73* %0)
  ret i73 %empty
}

define weak i48 @_ssdm_op_Read.ap_fifo.i48P(i48*) {
entry:
  %empty = call i48 @_autotb_FifoRead_i48(i48* %0)
  ret i48 %empty
}

define weak i48 @_ssdm_op_Read.ap_auto.i48(i48) {
entry:
  ret i48 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_16 = trunc i81 %empty to i8
  ret i8 %empty_16
}

define weak i8 @_ssdm_op_PartSelect.i8.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  ret i8 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i73.i32.i32(i73, i32, i32) nounwind readnone {
entry:
  %empty = call i73 @llvm.part.select.i73(i73 %0, i32 %1, i32 %2)
  %empty_17 = trunc i73 %empty to i8
  ret i8 %empty_17
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_18 = trunc i64 %empty to i8
  ret i8 %empty_18
}

declare i64 @_ssdm_op_PartSelect.i64.i81.i32.i32(i81, i32, i32) nounwind readnone

declare i32 @_ssdm_op_PartSelect.i32.i96.i32.i32(i96, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_19 = trunc i48 %empty to i16
  ret i16 %empty_19
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i81(i81* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i73P(i73*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i73(i73* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i81.i32(i81, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i81
  %empty_20 = shl i81 1, %empty
  %empty_21 = and i81 %0, %empty_20
  %empty_22 = icmp ne i81 %empty_21, 0
  ret i1 %empty_22
}

define weak i1 @_ssdm_op_BitSelect.i1.i73.i32(i73, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i73
  %empty_23 = shl i73 1, %empty
  %empty_24 = and i73 %0, %empty_23
  %empty_25 = icmp ne i73 %empty_24, 0
  ret i1 %empty_25
}

define weak i96 @_ssdm_op_BitConcatenate.i96.i48.i48(i48, i48) nounwind readnone {
entry:
  %empty = zext i48 %0 to i96
  %empty_26 = zext i48 %1 to i96
  %empty_27 = shl i96 %empty, 48
  %empty_28 = or i96 %empty_27, %empty_26
  ret i96 %empty_28
}

define weak i81 @_ssdm_op_BitConcatenate.i81.i8.i8.i1.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i1, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %9 to i16
  %empty_29 = zext i8 %10 to i16
  %empty_30 = shl i16 %empty, 8
  %empty_31 = or i16 %empty_30, %empty_29
  %empty_32 = zext i8 %8 to i24
  %empty_33 = zext i16 %empty_31 to i24
  %empty_34 = shl i24 %empty_32, 16
  %empty_35 = or i24 %empty_34, %empty_33
  %empty_36 = zext i8 %7 to i32
  %empty_37 = zext i24 %empty_35 to i32
  %empty_38 = shl i32 %empty_36, 24
  %empty_39 = or i32 %empty_38, %empty_37
  %empty_40 = zext i8 %6 to i40
  %empty_41 = zext i32 %empty_39 to i40
  %empty_42 = shl i40 %empty_40, 32
  %empty_43 = or i40 %empty_42, %empty_41
  %empty_44 = zext i8 %5 to i48
  %empty_45 = zext i40 %empty_43 to i48
  %empty_46 = shl i48 %empty_44, 40
  %empty_47 = or i48 %empty_46, %empty_45
  %empty_48 = zext i8 %4 to i56
  %empty_49 = zext i48 %empty_47 to i56
  %empty_50 = shl i56 %empty_48, 48
  %empty_51 = or i56 %empty_50, %empty_49
  %empty_52 = zext i8 %3 to i64
  %empty_53 = zext i56 %empty_51 to i64
  %empty_54 = shl i64 %empty_52, 56
  %empty_55 = or i64 %empty_54, %empty_53
  %empty_56 = zext i1 %2 to i65
  %empty_57 = zext i64 %empty_55 to i65
  %empty_58 = shl i65 %empty_56, 64
  %empty_59 = or i65 %empty_58, %empty_57
  %empty_60 = zext i8 %1 to i73
  %empty_61 = zext i65 %empty_59 to i73
  %empty_62 = shl i73 %empty_60, 65
  %empty_63 = or i73 %empty_62, %empty_61
  %empty_64 = zext i8 %0 to i81
  %empty_65 = zext i73 %empty_63 to i81
  %empty_66 = shl i81 %empty_64, 73
  %empty_67 = or i81 %empty_66, %empty_65
  ret i81 %empty_67
}

define weak i73 @_ssdm_op_BitConcatenate.i73.i9.i64(i9, i64) nounwind readnone {
entry:
  %empty = zext i9 %0 to i73
  %empty_68 = zext i64 %1 to i73
  %empty_69 = shl i73 %empty, 64
  %empty_70 = or i73 %empty_69, %empty_68
  ret i73 %empty_70
}

define weak i73 @_ssdm_op_BitConcatenate.i73.i9.i48.i16(i9, i48, i16) nounwind readnone {
entry:
  %empty = zext i48 %1 to i64
  %empty_71 = zext i16 %2 to i64
  %empty_72 = shl i64 %empty, 16
  %empty_73 = or i64 %empty_72, %empty_71
  %empty_74 = zext i9 %0 to i73
  %empty_75 = zext i64 %empty_73 to i73
  %empty_76 = shl i73 %empty_74, 64
  %empty_77 = or i73 %empty_76, %empty_75
  ret i73 %empty_77
}

define weak i73 @_ssdm_op_BitConcatenate.i73.i8.i1.i8.i8.i8.i8.i8.i8.i8.i8(i8, i1, i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %8 to i16
  %empty_78 = zext i8 %9 to i16
  %empty_79 = shl i16 %empty, 8
  %empty_80 = or i16 %empty_79, %empty_78
  %empty_81 = zext i8 %7 to i24
  %empty_82 = zext i16 %empty_80 to i24
  %empty_83 = shl i24 %empty_81, 16
  %empty_84 = or i24 %empty_83, %empty_82
  %empty_85 = zext i8 %6 to i32
  %empty_86 = zext i24 %empty_84 to i32
  %empty_87 = shl i32 %empty_85, 24
  %empty_88 = or i32 %empty_87, %empty_86
  %empty_89 = zext i8 %5 to i40
  %empty_90 = zext i32 %empty_88 to i40
  %empty_91 = shl i40 %empty_89, 32
  %empty_92 = or i40 %empty_91, %empty_90
  %empty_93 = zext i8 %4 to i48
  %empty_94 = zext i40 %empty_92 to i48
  %empty_95 = shl i48 %empty_93, 40
  %empty_96 = or i48 %empty_95, %empty_94
  %empty_97 = zext i8 %3 to i56
  %empty_98 = zext i48 %empty_96 to i56
  %empty_99 = shl i56 %empty_97, 48
  %empty_100 = or i56 %empty_99, %empty_98
  %empty_101 = zext i8 %2 to i64
  %empty_102 = zext i56 %empty_100 to i64
  %empty_103 = shl i64 %empty_101, 56
  %empty_104 = or i64 %empty_103, %empty_102
  %empty_105 = zext i1 %1 to i65
  %empty_106 = zext i64 %empty_104 to i65
  %empty_107 = shl i65 %empty_105, 64
  %empty_108 = or i65 %empty_107, %empty_106
  %empty_109 = zext i8 %0 to i73
  %empty_110 = zext i65 %empty_108 to i73
  %empty_111 = shl i73 %empty_109, 65
  %empty_112 = or i73 %empty_111, %empty_110
  ret i73 %empty_112
}

define weak i56 @_ssdm_op_BitConcatenate.i56.i32.i16.i8(i32, i16, i8) nounwind readnone {
entry:
  %empty = zext i16 %1 to i24
  %empty_113 = zext i8 %2 to i24
  %empty_114 = shl i24 %empty, 8
  %empty_115 = or i24 %empty_114, %empty_113
  %empty_116 = zext i32 %0 to i56
  %empty_117 = zext i24 %empty_115 to i56
  %empty_118 = shl i56 %empty_116, 24
  %empty_119 = or i56 %empty_118, %empty_117
  ret i56 %empty_119
}

define weak i48 @_ssdm_op_BitConcatenate.i48.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %4 to i16
  %empty_120 = zext i8 %5 to i16
  %empty_121 = shl i16 %empty, 8
  %empty_122 = or i16 %empty_121, %empty_120
  %empty_123 = zext i8 %3 to i24
  %empty_124 = zext i16 %empty_122 to i24
  %empty_125 = shl i24 %empty_123, 16
  %empty_126 = or i24 %empty_125, %empty_124
  %empty_127 = zext i8 %2 to i32
  %empty_128 = zext i24 %empty_126 to i32
  %empty_129 = shl i32 %empty_127, 24
  %empty_130 = or i32 %empty_129, %empty_128
  %empty_131 = zext i8 %1 to i40
  %empty_132 = zext i32 %empty_130 to i40
  %empty_133 = shl i40 %empty_131, 32
  %empty_134 = or i40 %empty_133, %empty_132
  %empty_135 = zext i8 %0 to i48
  %empty_136 = zext i40 %empty_134 to i48
  %empty_137 = shl i48 %empty_135, 40
  %empty_138 = or i48 %empty_137, %empty_136
  ret i48 %empty_138
}

declare i81 @_autotb_FifoWrite_i81(i81*, i81)

declare i73 @_autotb_FifoWrite_i73(i73*, i73)

declare i48 @_autotb_FifoWrite_i48(i48*, i48)

declare i81 @_autotb_FifoRead_i81(i81*)

declare i73 @_autotb_FifoRead_i73(i73*)

declare i48 @_autotb_FifoRead_i48(i48*)

declare i1 @_autotb_FifoCanRead_i81(i81*)

declare i1 @_autotb_FifoCanRead_i73(i73*)

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !9, !15, !18, !24, !24, !27, !27, !33, !33, !33, !27, !36, !36, !27, !27, !27, !38, !38, !27, !27, !40, !43, !43, !49, !52, !52, !52, !27, !27, !27, !27, !54, !54, !27, !27, !56, !56, !56, !27, !27, !38, !38, !58, !61, !63, !63, !65, !27, !27, !27, !66, !66, !66, !27, !68, !68, !27, !70, !70, !27, !27, !27, !38, !38, !72, !74, !74, !54, !54, !27, !27, !52, !52, !52, !27, !76, !79, !79, !27, !27, !27, !27, !27, !27, !27, !83, !85, !85, !87, !87, !87, !27, !27, !27, !27, !89, !90, !92, !87, !87, !87, !94, !76, !96, !96, !98, !98, !27, !100, !100, !102, !104, !27, !27, !27, !27, !27, !27, !27, !27, !54, !54, !27, !27, !27, !68, !68, !105, !107, !27, !27, !110, !110, !112, !38, !38, !115, !117, !117, !119, !119, !121, !27, !27, !27, !123, !123, !125, !127, !129, !129, !131, !133, !133, !123, !123, !135, !136, !138, !140, !142, !142, !136, !138, !144, !146, !146, !148, !150, !150, !152, !154, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!155, !162}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<64>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"X"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !5, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<8>"}
!9 = metadata !{null, metadata !10, metadata !11, metadata !12, metadata !13, metadata !14, metadata !6}
!10 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0}
!11 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!12 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<eth_axis> &", metadata !"hls::stream<app_axis> &", metadata !"ap_uint<48>"}
!13 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"from_eth", metadata !"to_app", metadata !"mac_address"}
!15 = metadata !{null, metadata !10, metadata !11, metadata !16, metadata !13, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<app_axis> &", metadata !"hls::stream<eth_axis> &", metadata !"ap_int<48>"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"from_app", metadata !"to_eth", metadata !"src_mac_address"}
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!20 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!21 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<app_axis> &", metadata !"hls::stream<eth_axis> &", metadata !"hls::stream<app_axis> &", metadata !"hls::stream<eth_axis> &", metadata !"ap_uint<48>"}
!22 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"const"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"to_app", metadata !"from_eth", metadata !"from_app", metadata !"to_eth", metadata !"mac_addr"}
!24 = metadata !{null, metadata !1, metadata !2, metadata !25, metadata !4, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<48> &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space"}
!29 = metadata !{metadata !"kernel_arg_access_qual"}
!30 = metadata !{metadata !"kernel_arg_type"}
!31 = metadata !{metadata !"kernel_arg_type_qual"}
!32 = metadata !{metadata !"kernel_arg_name"}
!33 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 8, struct ap_int_base<8, false, true> > &"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !26, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!38 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !26, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false> &"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<8, false, true> &"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const struct eth_axis &"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !35, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<96, false> &"}
!54 = metadata !{null, metadata !1, metadata !2, metadata !39, metadata !4, metadata !55, metadata !6}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!56 = metadata !{null, metadata !1, metadata !2, metadata !57, metadata !4, metadata !35, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, false, true>, 48, struct ap_int_base<48, true, true> > &"}
!58 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !60, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<96> &"}
!60 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!61 = metadata !{null, metadata !1, metadata !2, metadata !62, metadata !4, metadata !42, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, true> &"}
!63 = metadata !{null, metadata !44, metadata !45, metadata !64, metadata !47, metadata !48, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, false, true> &", metadata !"struct ap_int_base<48, true, true> &"}
!65 = metadata !{null, metadata !1, metadata !2, metadata !25, metadata !4, metadata !60, metadata !6}
!66 = metadata !{null, metadata !1, metadata !2, metadata !67, metadata !4, metadata !35, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<32, struct ap_int_base<32, true, true>, 16, struct ap_int_base<16, true, true> > &"}
!68 = metadata !{null, metadata !1, metadata !2, metadata !69, metadata !4, metadata !26, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !26, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !42, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true> &"}
!74 = metadata !{null, metadata !44, metadata !45, metadata !75, metadata !47, metadata !48, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<32, true, true> &", metadata !"struct ap_int_base<16, true, true> &"}
!76 = metadata !{null, metadata !44, metadata !45, metadata !77, metadata !47, metadata !78, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!78 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!79 = metadata !{null, metadata !80, metadata !11, metadata !81, metadata !13, metadata !82, metadata !6}
!80 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<96, false>*", metadata !"int", metadata !"int"}
!82 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !4, metadata !51, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const struct app_axis &"}
!85 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !26, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !35, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !60, metadata !6}
!90 = metadata !{null, metadata !1, metadata !2, metadata !91, metadata !4, metadata !60, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!92 = metadata !{null, metadata !1, metadata !2, metadata !93, metadata !4, metadata !60, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!94 = metadata !{null, metadata !1, metadata !2, metadata !95, metadata !4, metadata !60, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<48> &"}
!96 = metadata !{null, metadata !80, metadata !11, metadata !97, metadata !13, metadata !82, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int", metadata !"int"}
!98 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !26, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!100 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !26, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !60, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !60, metadata !6}
!105 = metadata !{null, metadata !1, metadata !2, metadata !106, metadata !4, metadata !60, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!107 = metadata !{null, metadata !44, metadata !45, metadata !108, metadata !47, metadata !109, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!110 = metadata !{null, metadata !44, metadata !45, metadata !111, metadata !47, metadata !109, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!112 = metadata !{null, metadata !44, metadata !45, metadata !113, metadata !47, metadata !114, metadata !6}
!113 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!114 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!115 = metadata !{null, metadata !44, metadata !45, metadata !116, metadata !47, metadata !109, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!117 = metadata !{null, metadata !1, metadata !2, metadata !118, metadata !4, metadata !26, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!119 = metadata !{null, metadata !1, metadata !2, metadata !120, metadata !4, metadata !26, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!121 = metadata !{null, metadata !44, metadata !45, metadata !122, metadata !47, metadata !109, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<64, false> &"}
!123 = metadata !{null, metadata !1, metadata !2, metadata !124, metadata !4, metadata !26, metadata !6}
!124 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!125 = metadata !{null, metadata !44, metadata !45, metadata !126, metadata !47, metadata !109, metadata !6}
!126 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!127 = metadata !{null, metadata !44, metadata !45, metadata !128, metadata !47, metadata !114, metadata !6}
!128 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"long"}
!129 = metadata !{null, metadata !1, metadata !2, metadata !130, metadata !4, metadata !26, metadata !6}
!130 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!131 = metadata !{null, metadata !44, metadata !45, metadata !132, metadata !47, metadata !109, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, true> &"}
!133 = metadata !{null, metadata !1, metadata !2, metadata !134, metadata !4, metadata !26, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!135 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !60, metadata !6}
!136 = metadata !{null, metadata !44, metadata !45, metadata !137, metadata !47, metadata !109, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<64, false> &"}
!138 = metadata !{null, metadata !44, metadata !45, metadata !139, metadata !47, metadata !109, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"int"}
!140 = metadata !{null, metadata !44, metadata !45, metadata !141, metadata !47, metadata !114, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"ulong"}
!142 = metadata !{null, metadata !1, metadata !2, metadata !143, metadata !4, metadata !26, metadata !6}
!143 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!144 = metadata !{null, metadata !44, metadata !45, metadata !145, metadata !47, metadata !114, metadata !6}
!145 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"uint"}
!146 = metadata !{null, metadata !1, metadata !2, metadata !147, metadata !4, metadata !26, metadata !6}
!147 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!148 = metadata !{null, metadata !44, metadata !45, metadata !149, metadata !47, metadata !109, metadata !6}
!149 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"const ap_int_base<32, false> &"}
!150 = metadata !{null, metadata !1, metadata !2, metadata !151, metadata !4, metadata !26, metadata !6}
!151 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!152 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !4, metadata !153, metadata !6}
!153 = metadata !{metadata !"kernel_arg_name", metadata !""}
!154 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !153, metadata !6}
!155 = metadata !{metadata !156, [256 x i48]* @mac_table_V}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 47, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"mac_table.V", metadata !160, metadata !"uint48", i32 0, i32 47}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 255, i32 1}
!162 = metadata !{metadata !163, [1 x i32]* @llvm_global_ctors_0}
!163 = metadata !{metadata !164}
!164 = metadata !{i32 0, i32 31, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"llvm.global_ctors.0", metadata !167, metadata !"", i32 0, i32 31}
!167 = metadata !{metadata !168}
!168 = metadata !{i32 0, i32 0, i32 1}
!169 = metadata !{metadata !170, metadata !173, metadata !176}
!170 = metadata !{i32 0, i32 63, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"to_eth.V.data.V", metadata !167, metadata !"int64", i32 0, i32 63}
!173 = metadata !{i32 64, i32 64, metadata !174}
!174 = metadata !{metadata !175}
!175 = metadata !{metadata !"to_eth.V.last.V", metadata !167, metadata !"uint1", i32 0, i32 0}
!176 = metadata !{i32 65, i32 72, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"to_eth.V.tkeep.V", metadata !167, metadata !"uint8", i32 0, i32 7}
!179 = metadata !{metadata !180, metadata !183, metadata !186, metadata !189}
!180 = metadata !{i32 0, i32 63, metadata !181}
!181 = metadata !{metadata !182}
!182 = metadata !{metadata !"from_app.V.data.V", metadata !167, metadata !"int64", i32 0, i32 63}
!183 = metadata !{i32 64, i32 64, metadata !184}
!184 = metadata !{metadata !185}
!185 = metadata !{metadata !"from_app.V.last.V", metadata !167, metadata !"uint1", i32 0, i32 0}
!186 = metadata !{i32 65, i32 72, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"from_app.V.tdest.V", metadata !167, metadata !"uint8", i32 0, i32 7}
!189 = metadata !{i32 73, i32 80, metadata !190}
!190 = metadata !{metadata !191}
!191 = metadata !{metadata !"from_app.V.tkeep.V", metadata !167, metadata !"uint8", i32 0, i32 7}
!192 = metadata !{metadata !193, metadata !196, metadata !199}
!193 = metadata !{i32 0, i32 63, metadata !194}
!194 = metadata !{metadata !195}
!195 = metadata !{metadata !"from_eth.V.data.V", metadata !167, metadata !"int64", i32 0, i32 63}
!196 = metadata !{i32 64, i32 64, metadata !197}
!197 = metadata !{metadata !198}
!198 = metadata !{metadata !"from_eth.V.last.V", metadata !167, metadata !"uint1", i32 0, i32 0}
!199 = metadata !{i32 65, i32 72, metadata !200}
!200 = metadata !{metadata !201}
!201 = metadata !{metadata !"from_eth.V.tkeep.V", metadata !167, metadata !"uint8", i32 0, i32 7}
!202 = metadata !{metadata !203, metadata !206, metadata !209, metadata !212}
!203 = metadata !{i32 0, i32 63, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"to_app.V.data.V", metadata !167, metadata !"int64", i32 0, i32 63}
!206 = metadata !{i32 64, i32 64, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"to_app.V.last.V", metadata !167, metadata !"uint1", i32 0, i32 0}
!209 = metadata !{i32 65, i32 72, metadata !210}
!210 = metadata !{metadata !211}
!211 = metadata !{metadata !"to_app.V.tdest.V", metadata !167, metadata !"uint8", i32 0, i32 7}
!212 = metadata !{i32 73, i32 80, metadata !213}
!213 = metadata !{metadata !214}
!214 = metadata !{metadata !"to_app.V.tkeep.V", metadata !167, metadata !"uint8", i32 0, i32 7}
!215 = metadata !{metadata !216}
!216 = metadata !{i32 0, i32 47, metadata !217}
!217 = metadata !{metadata !218}
!218 = metadata !{metadata !"mac_addr.V", metadata !219, metadata !"uint48", i32 0, i32 47}
!219 = metadata !{metadata !220}
!220 = metadata !{i32 0, i32 0, i32 0}
