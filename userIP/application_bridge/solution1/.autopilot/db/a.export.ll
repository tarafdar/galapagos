; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/application_bridge/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@user_V = internal unnamed_addr global i40 0
@seq_num = internal unnamed_addr global i32 0, align 4
@nta_state_V = internal unnamed_addr global i2 0
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@last_V_1 = internal unnamed_addr global i1 false
@last_V = internal unnamed_addr global i1 false
@id_V = internal unnamed_addr global i8 0
@extraPayload_keep_V = internal unnamed_addr global i1 false
@extraPayload_dest_V = internal unnamed_addr global i8 0
@extraPayload_data_V = internal unnamed_addr global i64 0
@dest_V = internal unnamed_addr global i16 0
@byte_counter_1 = internal unnamed_addr global i32 0, align 4
@byte_counter = internal unnamed_addr global i32 0, align 4
@atn_state_V = internal unnamed_addr global i2 0
@application_bridge_s = internal unnamed_addr constant [19 x i8] c"application_bridge\00"
@app_packet_in_last_V = internal unnamed_addr global i1 false
@app_packet_in_keep_V = internal unnamed_addr global i8 0
@app_packet_in_dest_V = internal unnamed_addr global i8 0
@app_packet_in_data_V = internal unnamed_addr global i64 0
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str2 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str1 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define internal fastcc void @net_to_app(i81* %from_net_V, i129* %to_app_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecIFCore(i81* %from_net_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i129* %to_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* %to_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %from_net_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %nta_state_V_load = load i2* @nta_state_V, align 1
  %last_V_1_load = load i1* @last_V_1, align 1
  %byte_counter_load = load i32* @byte_counter, align 4
  switch i2 %nta_state_V_load, label %._crit_edge518 [
    i2 0, label %0
    i2 1, label %4
    i2 -2, label %7
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %from_net_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge518

; <label>:1                                       ; preds = %0
  %tmp28 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %from_net_V)
  %tmp_3 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp28, i32 80)
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp28, i32 24, i32 31)
  %tmp_6 = icmp eq i8 %p_Result_s, 5
  %tmp_7 = icmp eq i8 %p_Result_s, 4
  %tmp_8 = or i1 %tmp_7, %tmp_6
  %tmp_9 = icmp eq i8 %p_Result_s, 1
  %tmp_10 = or i1 %tmp_9, %tmp_8
  %tmp_11 = icmp eq i8 %p_Result_s, 0
  %tmp_12 = or i1 %tmp_11, %tmp_10
  br i1 %tmp_12, label %._crit_edge520, label %2

._crit_edge520:                                   ; preds = %1
  %envlp_out_id_V = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp28, i32 16, i32 23)
  %p_Result_9 = call i4 @_ssdm_op_PartSelect.i4.i81.i32.i32(i81 %tmp28, i32 56, i32 59)
  %tmp_13 = trunc i81 %tmp28 to i72
  %tmp_12_2 = call i129 @_ssdm_op_BitConcatenate.i129.i36.i4.i8.i9.i72(i36 0, i4 %p_Result_9, i8 %envlp_out_id_V, i9 -1, i72 %tmp_13)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* %to_app_V, i129 %tmp_12_2)
  store i1 false, i1* @last_V_1, align 1
  store i2 -2, i2* @nta_state_V, align 1
  br label %._crit_edge518

; <label>:2                                       ; preds = %1
  %tmp_s = icmp eq i8 %p_Result_s, 2
  br i1 %tmp_s, label %3, label %._crit_edge518

; <label>:3                                       ; preds = %2
  %tmp_26 = trunc i81 %tmp28 to i16
  store i16 %tmp_26, i16* @dest_V, align 2
  %p_Result_1 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp28, i32 16, i32 23)
  store i8 %p_Result_1, i8* @id_V, align 1
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i81.i32.i32(i81 %tmp28, i32 56, i32 59)
  %p_Result_s_14 = call i40 @_ssdm_op_BitConcatenate.i40.i36.i4(i36 1, i4 %p_Result_2)
  store i40 %p_Result_s_14, i40* @user_V, align 8
  store i2 1, i2* @nta_state_V, align 1
  store i1 %tmp_3, i1* @last_V_1, align 1
  br label %._crit_edge518

; <label>:4                                       ; preds = %codeRepl
  br i1 %last_V_1_load, label %6, label %5

; <label>:5                                       ; preds = %4
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %from_net_V, i32 1)
  br i1 %tmp_1, label %._crit_edge526.0, label %._crit_edge518

._crit_edge526.0:                                 ; preds = %5
  %tmp_242 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %from_net_V)
  %packetOut_data_V = trunc i81 %tmp_242 to i64
  %packetOut_keep_V = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_242, i32 72, i32 79)
  %packetOut_last_V = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 80)
  %tmp_16 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 72)
  %tmp_5 = add nsw i32 1, %byte_counter_load
  %tmp_11_byte_counter_s = select i1 %tmp_16, i32 %tmp_5, i32 %byte_counter_load
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 73)
  %tmp_11_1 = add nsw i32 1, %tmp_11_byte_counter_s
  %byte_counter_new_4 = select i1 %tmp_17, i32 %tmp_11_1, i32 %tmp_11_byte_counter_s
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 74)
  %tmp_11_2 = add nsw i32 1, %byte_counter_new_4
  %tmp_11_2_byte_counte = select i1 %tmp_18, i32 %tmp_11_2, i32 %byte_counter_new_4
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 75)
  %tmp_11_3 = add nsw i32 1, %tmp_11_2_byte_counte
  %byte_counter_new_6 = select i1 %tmp_19, i32 %tmp_11_3, i32 %tmp_11_2_byte_counte
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 76)
  %tmp_11_4 = add nsw i32 1, %byte_counter_new_6
  %tmp_11_4_byte_counte = select i1 %tmp_20, i32 %tmp_11_4, i32 %byte_counter_new_6
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 77)
  %tmp_11_5 = add nsw i32 1, %tmp_11_4_byte_counte
  %byte_counter_new_8 = select i1 %tmp_21, i32 %tmp_11_5, i32 %tmp_11_4_byte_counte
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 78)
  %tmp_11_6 = add nsw i32 1, %byte_counter_new_8
  %tmp_11_6_byte_counte = select i1 %tmp_22, i32 %tmp_11_6, i32 %byte_counter_new_8
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_242, i32 79)
  %tmp_11_7 = add nsw i32 1, %tmp_11_6_byte_counte
  %tmp2 = or i1 %tmp_17, %tmp_16
  %tmp3 = or i1 %tmp_18, %tmp_19
  %tmp1 = or i1 %tmp3, %tmp2
  %tmp5 = or i1 %tmp_20, %tmp_21
  %tmp6 = or i1 %tmp_22, %tmp_23
  %tmp4 = or i1 %tmp6, %tmp5
  %byte_counter_flag_s = or i1 %tmp4, %tmp1
  %byte_counter_new_s = select i1 %tmp_23, i32 %tmp_11_7, i32 %tmp_11_6_byte_counte
  store i1 %packetOut_last_V, i1* @last_V_1, align 1
  %dest_V_load = load i16* @dest_V, align 2
  %packetOut_dest_V = trunc i16 %dest_V_load to i8
  %packetOut_id_V = load i8* @id_V, align 1
  %packetOut_user_V = load i40* @user_V, align 8
  %tmp_315 = call i129 @_ssdm_op_BitConcatenate.i129.i40.i8.i8.i1.i8.i64(i40 %packetOut_user_V, i8 %packetOut_id_V, i8 %packetOut_keep_V, i1 %packetOut_last_V, i8 %packetOut_dest_V, i64 %packetOut_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* %to_app_V, i129 %tmp_315)
  store i2 1, i2* @nta_state_V, align 1
  br label %._crit_edge518

; <label>:6                                       ; preds = %4
  %tmp_4 = icmp slt i32 %byte_counter_load, 60
  %storemerge = select i1 %tmp_4, i2 -2, i2 0
  store i2 %storemerge, i2* @nta_state_V, align 1
  br label %._crit_edge518

; <label>:7                                       ; preds = %codeRepl
  br i1 %last_V_1_load, label %10, label %8

; <label>:8                                       ; preds = %7
  %tmp_2 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %from_net_V, i32 1)
  br i1 %tmp_2, label %9, label %._crit_edge527

; <label>:9                                       ; preds = %8
  %tmp_456 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %from_net_V)
  %tmp_25 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_456, i32 80)
  store i1 %tmp_25, i1* @last_V_1, align 1
  br label %._crit_edge527

._crit_edge527:                                   ; preds = %9, %8
  br label %11

; <label>:10                                      ; preds = %7
  store i2 0, i2* @nta_state_V, align 1
  br label %11

; <label>:11                                      ; preds = %10, %._crit_edge527
  br label %._crit_edge518

._crit_edge518:                                   ; preds = %11, %6, %._crit_edge526.0, %5, %3, %2, %._crit_edge520, %0, %codeRepl
  %byte_counter_flag_1 = phi i1 [ false, %codeRepl ], [ false, %11 ], [ false, %0 ], [ false, %._crit_edge520 ], [ true, %3 ], [ false, %2 ], [ false, %6 ], [ %byte_counter_flag_s, %._crit_edge526.0 ], [ false, %5 ]
  %byte_counter_new_3 = phi i32 [ undef, %codeRepl ], [ undef, %11 ], [ 0, %0 ], [ 0, %._crit_edge520 ], [ 0, %3 ], [ 0, %2 ], [ undef, %6 ], [ %byte_counter_new_s, %._crit_edge526.0 ], [ undef, %5 ]
  br i1 %byte_counter_flag_1, label %mergeST, label %._crit_edge518.new

mergeST:                                          ; preds = %._crit_edge518
  store i32 %byte_counter_new_3, i32* @byte_counter, align 4
  br label %._crit_edge518.new

._crit_edge518.new:                               ; preds = %mergeST, %._crit_edge518
  ret void
}

declare i64 @llvm.part.set.i64.i8(i64, i8, i32, i32) nounwind readnone

declare i64 @llvm.part.set.i64.i16(i64, i16, i32, i32) nounwind readnone

declare i81 @llvm.part.select.i81(i81, i32, i32) nounwind readnone

declare i129 @llvm.part.select.i129(i129, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @application_bridge(i129* %from_app_V, i129* %to_app_V, i81* %from_net_V, i81* %to_net_V) {
  call void (...)* @_ssdm_op_SpecDataflowPipeline(i32 -1, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i81* %to_net_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %from_net_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* %to_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* %from_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %to_net_V), !map !164
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %from_net_V), !map !177
  call void (...)* @_ssdm_op_SpecBitsMap(i129* %to_app_V), !map !190
  call void (...)* @_ssdm_op_SpecBitsMap(i129* %from_app_V), !map !209
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @application_bridge_s) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i129* %from_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i129* %to_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %from_net_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %to_net_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call fastcc void @net_to_app(i81* %from_net_V, i129* %to_app_V)
  call fastcc void @app_to_net(i129* %from_app_V, i81* %to_net_V)
  ret void
}

define internal fastcc void @app_to_net(i129* %from_app_V, i81* %to_net_V) {
codeRepl:
  call void (...)* @_ssdm_op_SpecIFCore(i81* %to_net_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i129* %from_app_V, [1 x i8]* @p_str, [11 x i8]* @p_str2, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* %from_app_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %to_net_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %atn_state_V_load = load i2* @atn_state_V, align 1
  %tmp_data_V = load i64* @app_packet_in_data_V, align 8
  %byte_counter_1_load = load i32* @byte_counter_1, align 4
  %last_V_load = load i1* @last_V, align 1
  %tmp_last_V = load i1* @app_packet_in_last_V, align 1
  switch i2 %atn_state_V_load, label %._crit_edge311 [
    i2 0, label %0
    i2 1, label %5
    i2 -2, label %6
    i2 -1, label %11
  ]

; <label>:0                                       ; preds = %codeRepl
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* %from_app_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge312

; <label>:1                                       ; preds = %0
  %tmp59 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* %from_app_V)
  %p_Val2_1 = trunc i129 %tmp59 to i64
  %tmp_dest_V_2 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp59, i32 64, i32 71)
  store i8 %tmp_dest_V_2, i8* @app_packet_in_dest_V, align 8
  %tmp_last_V_1 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp59, i32 72)
  store i1 %tmp_last_V_1, i1* @app_packet_in_last_V, align 1
  %tmp_keep_V_2 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp59, i32 73, i32 80)
  store i8 %tmp_keep_V_2, i8* @app_packet_in_keep_V, align 2
  %tmp_id_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp59, i32 81, i32 88)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp59, i32 93, i32 96)
  %tmp_7 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_7, label %2, label %3

; <label>:2                                       ; preds = %1
  %p_Result_4 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp59, i32 89, i32 92)
  %loc_V_trunc = zext i4 %p_Result_4 to i8
  %p_Result_s_15 = call i64 @llvm.part.set.i64.i8(i64 %p_Val2_1, i8 %loc_V_trunc, i32 56, i32 63)
  %tmp_1 = call i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i8.i64(i1 %tmp_last_V_1, i8 %tmp_keep_V_2, i8 %tmp_dest_V_2, i64 %p_Result_s_15)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_net_V, i81 %tmp_1)
  store i2 0, i2* @atn_state_V, align 1
  br label %mergeST

; <label>:3                                       ; preds = %1
  %tmp_9 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_9, label %4, label %._crit_edge313

; <label>:4                                       ; preds = %3
  store i8 %tmp_dest_V_2, i8* @extraPayload_dest_V, align 8
  %loc_V_6_trunc = zext i8 %tmp_dest_V_2 to i16
  store i32 0, i32* @seq_num, align 4
  %tmp_6 = call i48 @_ssdm_op_BitConcatenate.i48.i24.i8.i16(i24 2, i8 %tmp_id_V_load_new, i16 %loc_V_6_trunc)
  %p_Result_5 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp59, i32 89, i32 92)
  %loc_V_8_trunc = zext i4 %p_Result_5 to i8
  %tmp_10 = zext i48 %tmp_6 to i56
  %tmp_11 = call i60 @_ssdm_op_BitConcatenate.i60.i4.i56(i4 %p_Result_5, i56 %tmp_10)
  %p_Result_2 = zext i60 %tmp_11 to i64
  store i64 %p_Result_2, i64* @extraPayload_data_V, align 8
  store i1 true, i1* @extraPayload_keep_V, align 1
  %tmp_2_2 = call i81 @_ssdm_op_BitConcatenate.i81.i9.i8.i8.i56(i9 255, i8 %tmp_dest_V_2, i8 %loc_V_8_trunc, i56 %tmp_10)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_net_V, i81 %tmp_2_2)
  store i2 1, i2* @atn_state_V, align 1
  br label %._crit_edge313

._crit_edge313:                                   ; preds = %4, %3
  br label %mergeST

._crit_edge312:                                   ; preds = %mergeST, %0
  br label %._crit_edge311

; <label>:5                                       ; preds = %codeRepl
  %tmp_dest_V = load i8* @app_packet_in_dest_V, align 8
  %tmp_keep_V = load i8* @app_packet_in_keep_V, align 2
  %tmp_3 = call i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i8.i64(i1 %tmp_last_V, i8 %tmp_keep_V, i8 %tmp_dest_V, i64 %tmp_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_net_V, i81 %tmp_3)
  store i1 %tmp_last_V, i1* @last_V, align 1
  store i2 -2, i2* @atn_state_V, align 1
  br label %._crit_edge311

; <label>:6                                       ; preds = %codeRepl
  br i1 %last_V_load, label %10, label %7

; <label>:7                                       ; preds = %6
  %tmp_8 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* %from_app_V, i32 1)
  br i1 %tmp_8, label %._crit_edge315.0, label %._crit_edge311

._crit_edge315.0:                                 ; preds = %7
  %tmp_4 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* %from_app_V)
  %keep_temp_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_4, i32 73, i32 80)
  %tmp_30 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 73)
  %tmp_2 = add nsw i32 %byte_counter_1_load, 1
  %tmp_18_byte_counter_s = select i1 %tmp_30, i32 %tmp_2, i32 %byte_counter_1_load
  %tmp_31 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 74)
  %tmp_18_1 = add nsw i32 %tmp_18_byte_counter_s, 1
  %byte_counter_1_new_1 = select i1 %tmp_31, i32 %tmp_18_1, i32 %tmp_18_byte_counter_s
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 75)
  %tmp_18_2 = add nsw i32 %byte_counter_1_new_1, 1
  %tmp_18_2_byte_counte = select i1 %tmp_32, i32 %tmp_18_2, i32 %byte_counter_1_new_1
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 76)
  %tmp_18_3 = add nsw i32 %tmp_18_2_byte_counte, 1
  %byte_counter_1_new_3 = select i1 %tmp_33, i32 %tmp_18_3, i32 %tmp_18_2_byte_counte
  %tmp_34 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 77)
  %tmp_18_4 = add nsw i32 %byte_counter_1_new_3, 1
  %tmp_18_4_byte_counte = select i1 %tmp_34, i32 %tmp_18_4, i32 %byte_counter_1_new_3
  %tmp_35 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 78)
  %tmp_18_5 = add nsw i32 %tmp_18_4_byte_counte, 1
  %byte_counter_1_new_5 = select i1 %tmp_35, i32 %tmp_18_5, i32 %tmp_18_4_byte_counte
  %tmp_36 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 79)
  %tmp_18_6 = add nsw i32 %byte_counter_1_new_5, 1
  %tmp_18_6_byte_counte = select i1 %tmp_36, i32 %tmp_18_6, i32 %byte_counter_1_new_5
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 80)
  %tmp_18_7 = add nsw i32 %tmp_18_6_byte_counte, 1
  %tmp2 = or i1 %tmp_31, %tmp_30
  %tmp3 = or i1 %tmp_32, %tmp_33
  %tmp1 = or i1 %tmp3, %tmp2
  %tmp5 = or i1 %tmp_34, %tmp_35
  %tmp6 = or i1 %tmp_36, %tmp_37
  %tmp4 = or i1 %tmp6, %tmp5
  %byte_counter_1_flag_7 = or i1 %tmp4, %tmp1
  %byte_counter_1_new_7 = select i1 %tmp_37, i32 %tmp_18_7, i32 %tmp_18_6_byte_counte
  %tmp_5 = icmp sgt i32 %byte_counter_1_new_7, 1480
  br i1 %tmp_5, label %8, label %9

; <label>:8                                       ; preds = %._crit_edge315.0
  %tmp_38 = trunc i129 %tmp_4 to i72
  %tmp_5_2 = call i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i72(i1 true, i8 %keep_temp_V, i72 %tmp_38)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_net_V, i81 %tmp_5_2)
  store i2 -1, i2* @atn_state_V, align 1
  br label %._crit_edge311

; <label>:9                                       ; preds = %._crit_edge315.0
  %tmp_last_V_2 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 72)
  %tmp_40 = trunc i129 %tmp_4 to i72
  %tmp_639 = call i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i72(i1 %tmp_last_V_2, i8 %keep_temp_V, i72 %tmp_40)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_net_V, i81 %tmp_639)
  store i1 %tmp_last_V_2, i1* @last_V, align 1
  br label %._crit_edge311

; <label>:10                                      ; preds = %6
  store i2 0, i2* @atn_state_V, align 1
  br label %._crit_edge311

; <label>:11                                      ; preds = %codeRepl
  %seq_num_load = load i32* @seq_num, align 4
  %tmp_27 = trunc i32 %seq_num_load to i16
  %tmp_s = add nsw i32 1, %seq_num_load
  store i32 %tmp_s, i32* @seq_num, align 4
  %p_Val2_s = load i64* @extraPayload_data_V, align 8
  %val_assign_trunc = add i16 1, %tmp_27
  %p_Result_3 = call i64 @llvm.part.set.i64.i16(i64 %p_Val2_s, i16 %val_assign_trunc, i32 32, i32 47)
  store i64 %p_Result_3, i64* @extraPayload_data_V, align 8
  %tmp_dest_V_1 = load i8* @extraPayload_dest_V, align 8
  %extraPayload_keep_V_s = load i1* @extraPayload_keep_V, align 1
  %tmp_keep_V_1 = select i1 %extraPayload_keep_V_s, i8 -1, i8 0
  %tmp_750 = call i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i8.i64(i1 false, i8 %tmp_keep_V_1, i8 %tmp_dest_V_1, i64 %p_Result_3)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %to_net_V, i81 %tmp_750)
  store i2 -2, i2* @atn_state_V, align 1
  br label %._crit_edge311

._crit_edge311:                                   ; preds = %11, %10, %9, %8, %7, %5, %._crit_edge312, %codeRepl
  %byte_counter_1_flag_s = phi i1 [ false, %codeRepl ], [ false, %11 ], [ true, %5 ], [ false, %._crit_edge312 ], [ false, %10 ], [ false, %7 ], [ true, %8 ], [ %byte_counter_1_flag_7, %9 ]
  %byte_counter_1_new_s = phi i32 [ undef, %codeRepl ], [ undef, %11 ], [ 8, %5 ], [ undef, %._crit_edge312 ], [ undef, %10 ], [ undef, %7 ], [ 0, %8 ], [ %byte_counter_1_new_7, %9 ]
  br i1 %byte_counter_1_flag_s, label %mergeST79, label %._crit_edge311.new

mergeST:                                          ; preds = %._crit_edge313, %2
  %app_packet_in_data_V_1 = phi i64 [ %p_Result_s_15, %2 ], [ %p_Val2_1, %._crit_edge313 ]
  store i64 %app_packet_in_data_V_1, i64* @app_packet_in_data_V, align 8
  br label %._crit_edge312

mergeST79:                                        ; preds = %._crit_edge311
  store i32 %byte_counter_1_new_s, i32* @byte_counter_1, align 4
  br label %._crit_edge311.new

._crit_edge311.new:                               ; preds = %mergeST79, %._crit_edge311
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81*, i81) {
entry:
  %empty = call i81 @_autotb_FifoWrite_i81(i81* %0, i81 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129*, i129) {
entry:
  %empty = call i129 @_autotb_FifoWrite_i129(i129* %0, i129 %1)
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

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81*) {
entry:
  %empty = call i81 @_autotb_FifoRead_i81(i81* %0)
  ret i81 %empty
}

define weak i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129*) {
entry:
  %empty = call i129 @_autotb_FifoRead_i129(i129* %0)
  ret i129 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_16 = trunc i81 %empty to i8
  ret i8 %empty_16
}

declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_17 = trunc i129 %empty to i8
  ret i8 %empty_17
}

declare i72 @_ssdm_op_PartSelect.i72.i81.i32.i32(i81, i32, i32) nounwind readnone

declare i72 @_ssdm_op_PartSelect.i72.i129.i32.i32(i129, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i81.i32.i32(i81, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i129.i32.i32(i129, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_18 = trunc i81 %empty to i4
  ret i4 %empty_18
}

define weak i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_19 = trunc i129 %empty to i4
  ret i4 %empty_19
}

declare i16 @_ssdm_op_PartSelect.i16.i81.i32.i32(i81, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i81(i81* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i129(i129* %0)
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

define weak i1 @_ssdm_op_BitSelect.i1.i129.i32(i129, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i129
  %empty_23 = shl i129 1, %empty
  %empty_24 = and i129 %0, %empty_23
  %empty_25 = icmp ne i129 %empty_24, 0
  ret i1 %empty_25
}

define weak i81 @_ssdm_op_BitConcatenate.i81.i9.i8.i8.i56(i9, i8, i8, i56) nounwind readnone {
entry:
  %empty = zext i8 %2 to i64
  %empty_26 = zext i56 %3 to i64
  %empty_27 = shl i64 %empty, 56
  %empty_28 = or i64 %empty_27, %empty_26
  %empty_29 = zext i8 %1 to i72
  %empty_30 = zext i64 %empty_28 to i72
  %empty_31 = shl i72 %empty_29, 64
  %empty_32 = or i72 %empty_31, %empty_30
  %empty_33 = zext i9 %0 to i81
  %empty_34 = zext i72 %empty_32 to i81
  %empty_35 = shl i81 %empty_33, 72
  %empty_36 = or i81 %empty_35, %empty_34
  ret i81 %empty_36
}

define weak i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i8.i64(i1, i8, i8, i64) nounwind readnone {
entry:
  %empty = zext i8 %2 to i72
  %empty_37 = zext i64 %3 to i72
  %empty_38 = shl i72 %empty, 64
  %empty_39 = or i72 %empty_38, %empty_37
  %empty_40 = zext i8 %1 to i80
  %empty_41 = zext i72 %empty_39 to i80
  %empty_42 = shl i80 %empty_40, 72
  %empty_43 = or i80 %empty_42, %empty_41
  %empty_44 = zext i1 %0 to i81
  %empty_45 = zext i80 %empty_43 to i81
  %empty_46 = shl i81 %empty_44, 80
  %empty_47 = or i81 %empty_46, %empty_45
  ret i81 %empty_47
}

define weak i81 @_ssdm_op_BitConcatenate.i81.i1.i8.i72(i1, i8, i72) nounwind readnone {
entry:
  %empty = zext i8 %1 to i80
  %empty_48 = zext i72 %2 to i80
  %empty_49 = shl i80 %empty, 72
  %empty_50 = or i80 %empty_49, %empty_48
  %empty_51 = zext i1 %0 to i81
  %empty_52 = zext i80 %empty_50 to i81
  %empty_53 = shl i81 %empty_51, 80
  %empty_54 = or i81 %empty_53, %empty_52
  ret i81 %empty_54
}

define weak i60 @_ssdm_op_BitConcatenate.i60.i4.i56(i4, i56) nounwind readnone {
entry:
  %empty = zext i4 %0 to i60
  %empty_55 = zext i56 %1 to i60
  %empty_56 = shl i60 %empty, 56
  %empty_57 = or i60 %empty_56, %empty_55
  ret i60 %empty_57
}

define weak i48 @_ssdm_op_BitConcatenate.i48.i24.i8.i16(i24, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %1 to i24
  %empty_58 = zext i16 %2 to i24
  %empty_59 = shl i24 %empty, 16
  %empty_60 = or i24 %empty_59, %empty_58
  %empty_61 = zext i24 %0 to i48
  %empty_62 = zext i24 %empty_60 to i48
  %empty_63 = shl i48 %empty_61, 24
  %empty_64 = or i48 %empty_63, %empty_62
  ret i48 %empty_64
}

define weak i40 @_ssdm_op_BitConcatenate.i40.i36.i4(i36, i4) nounwind readnone {
entry:
  %empty = zext i36 %0 to i40
  %empty_65 = zext i4 %1 to i40
  %empty_66 = shl i40 %empty, 4
  %empty_67 = or i40 %empty_66, %empty_65
  ret i40 %empty_67
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i40.i8.i8.i1.i8.i64(i40, i8, i8, i1, i8, i64) nounwind readnone {
entry:
  %empty = zext i8 %4 to i72
  %empty_68 = zext i64 %5 to i72
  %empty_69 = shl i72 %empty, 64
  %empty_70 = or i72 %empty_69, %empty_68
  %empty_71 = zext i1 %3 to i73
  %empty_72 = zext i72 %empty_70 to i73
  %empty_73 = shl i73 %empty_71, 72
  %empty_74 = or i73 %empty_73, %empty_72
  %empty_75 = zext i8 %2 to i81
  %empty_76 = zext i73 %empty_74 to i81
  %empty_77 = shl i81 %empty_75, 73
  %empty_78 = or i81 %empty_77, %empty_76
  %empty_79 = zext i8 %1 to i89
  %empty_80 = zext i81 %empty_78 to i89
  %empty_81 = shl i89 %empty_79, 81
  %empty_82 = or i89 %empty_81, %empty_80
  %empty_83 = zext i40 %0 to i129
  %empty_84 = zext i89 %empty_82 to i129
  %empty_85 = shl i129 %empty_83, 89
  %empty_86 = or i129 %empty_85, %empty_84
  ret i129 %empty_86
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i36.i4.i8.i9.i72(i36, i4, i8, i9, i72) nounwind readnone {
entry:
  %empty = zext i9 %3 to i81
  %empty_87 = zext i72 %4 to i81
  %empty_88 = shl i81 %empty, 72
  %empty_89 = or i81 %empty_88, %empty_87
  %empty_90 = zext i8 %2 to i89
  %empty_91 = zext i81 %empty_89 to i89
  %empty_92 = shl i89 %empty_90, 81
  %empty_93 = or i89 %empty_92, %empty_91
  %empty_94 = zext i4 %1 to i93
  %empty_95 = zext i89 %empty_93 to i93
  %empty_96 = shl i93 %empty_94, 89
  %empty_97 = or i93 %empty_96, %empty_95
  %empty_98 = zext i36 %0 to i129
  %empty_99 = zext i93 %empty_97 to i129
  %empty_100 = shl i129 %empty_98, 93
  %empty_101 = or i129 %empty_100, %empty_99
  ret i129 %empty_101
}

declare i81 @_autotb_FifoWrite_i81(i81*, i81)

declare i129 @_autotb_FifoWrite_i129(i129*, i129)

declare i81 @_autotb_FifoRead_i81(i81*)

declare i129 @_autotb_FifoRead_i129(i129*)

declare i1 @_autotb_FifoCanRead_i81(i81*)

declare i1 @_autotb_FifoCanRead_i129(i129*)

!opencl.kernels = !{!0, !7, !10, !16, !19, !25, !28, !28, !30, !30, !30, !30, !36, !38, !38, !30, !40, !42, !42, !44, !46, !46, !47, !47, !30, !30, !49, !52, !52, !25, !36, !54, !57, !57, !63, !66, !66, !30, !67, !30, !30, !70, !70, !30, !30, !72, !30, !74, !76, !76, !30, !80, !80, !80, !30, !30, !30, !30, !82, !83, !85, !47, !47, !87, !40, !42, !42, !89, !80, !80, !90, !92, !92, !54, !93, !93, !80, !80, !80, !47, !47, !30, !30, !95, !95, !97, !98, !67, !54, !100, !100, !102, !104, !30, !30, !30, !30, !30, !30, !30, !30, !30, !30, !30, !30, !47, !47, !30, !30, !106, !109, !109, !111, !30, !113, !113, !115, !116, !30, !30, !30, !118, !118, !120, !122, !124, !124, !126, !92, !92, !128, !130, !132, !132, !30, !134, !136, !136, !138, !138, !30, !140, !30, !30, !30, !142, !142, !143, !145, !147, !136, !136, !149, !30, !151, !149, !153, !151, !154, !30, !30, !30, !30, !156, !30, !30, !30, !30}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!157}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<32>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"num"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<64>"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"X"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<net_axis> &", metadata !"hls::stream<app_axis> &"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"from_net", metadata !"to_app"}
!16 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<app_axis> &", metadata !"hls::stream<net_axis> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"from_app", metadata !"to_net"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<app_axis> &", metadata !"hls::stream<app_axis> &", metadata !"hls::stream<net_axis> &", metadata !"hls::stream<net_axis> &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"from_app", metadata !"to_app", metadata !"from_net", metadata !"to_net"}
!25 = metadata !{null, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!28 = metadata !{null, metadata !1, metadata !2, metadata !26, metadata !4, metadata !29, metadata !6}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!30 = metadata !{null, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !6}
!31 = metadata !{metadata !"kernel_arg_addr_space"}
!32 = metadata !{metadata !"kernel_arg_access_qual"}
!33 = metadata !{metadata !"kernel_arg_type"}
!34 = metadata !{metadata !"kernel_arg_type_qual"}
!35 = metadata !{metadata !"kernel_arg_name"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !27, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!38 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !27, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !39, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!44 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !27, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!46 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !39, metadata !6}
!47 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !27, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const struct net_axis &"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!52 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !39, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!54 = metadata !{null, metadata !11, metadata !12, metadata !55, metadata !14, metadata !56, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!57 = metadata !{null, metadata !58, metadata !59, metadata !60, metadata !61, metadata !62, metadata !6}
!58 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!59 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!61 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!62 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!63 = metadata !{null, metadata !11, metadata !12, metadata !64, metadata !14, metadata !65, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &", metadata !"int"}
!65 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!66 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !39, metadata !6}
!67 = metadata !{null, metadata !1, metadata !2, metadata !68, metadata !4, metadata !69, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !39, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!72 = metadata !{null, metadata !11, metadata !12, metadata !73, metadata !14, metadata !65, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<8, false> &", metadata !"int"}
!74 = metadata !{null, metadata !1, metadata !2, metadata !48, metadata !4, metadata !75, metadata !6}
!75 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!76 = metadata !{null, metadata !77, metadata !12, metadata !78, metadata !14, metadata !79, metadata !6}
!77 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!79 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!80 = metadata !{null, metadata !1, metadata !2, metadata !81, metadata !4, metadata !29, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &"}
!82 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !69, metadata !6}
!83 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !4, metadata !69, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<2> &"}
!85 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !51, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const struct app_axis &"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !69, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !81, metadata !4, metadata !27, metadata !6}
!90 = metadata !{null, metadata !1, metadata !2, metadata !91, metadata !4, metadata !27, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!92 = metadata !{null, metadata !1, metadata !2, metadata !91, metadata !4, metadata !39, metadata !6}
!93 = metadata !{null, metadata !58, metadata !59, metadata !94, metadata !61, metadata !62, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !39, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!97 = metadata !{null, metadata !1, metadata !2, metadata !53, metadata !4, metadata !69, metadata !6}
!98 = metadata !{null, metadata !11, metadata !12, metadata !99, metadata !14, metadata !65, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &", metadata !"int"}
!100 = metadata !{null, metadata !58, metadata !59, metadata !101, metadata !61, metadata !62, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int", metadata !"int"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !69, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !105, metadata !4, metadata !69, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!106 = metadata !{null, metadata !11, metadata !12, metadata !107, metadata !14, metadata !108, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"long"}
!108 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!109 = metadata !{null, metadata !1, metadata !2, metadata !110, metadata !4, metadata !39, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!111 = metadata !{null, metadata !11, metadata !12, metadata !112, metadata !14, metadata !65, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, true> &"}
!113 = metadata !{null, metadata !1, metadata !2, metadata !114, metadata !4, metadata !39, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!115 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !69, metadata !6}
!116 = metadata !{null, metadata !11, metadata !12, metadata !117, metadata !14, metadata !65, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<65, true> &"}
!118 = metadata !{null, metadata !1, metadata !2, metadata !119, metadata !4, metadata !39, metadata !6}
!119 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!120 = metadata !{null, metadata !11, metadata !12, metadata !121, metadata !14, metadata !65, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!122 = metadata !{null, metadata !11, metadata !12, metadata !123, metadata !14, metadata !108, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"ulong"}
!124 = metadata !{null, metadata !1, metadata !2, metadata !125, metadata !4, metadata !39, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!126 = metadata !{null, metadata !11, metadata !12, metadata !127, metadata !14, metadata !65, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, false> &"}
!128 = metadata !{null, metadata !11, metadata !12, metadata !129, metadata !14, metadata !65, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!130 = metadata !{null, metadata !11, metadata !12, metadata !131, metadata !14, metadata !108, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!132 = metadata !{null, metadata !1, metadata !2, metadata !133, metadata !4, metadata !39, metadata !6}
!133 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!134 = metadata !{null, metadata !11, metadata !12, metadata !135, metadata !14, metadata !65, metadata !6}
!135 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!136 = metadata !{null, metadata !1, metadata !2, metadata !137, metadata !4, metadata !39, metadata !6}
!137 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!138 = metadata !{null, metadata !1, metadata !2, metadata !139, metadata !4, metadata !39, metadata !6}
!139 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!140 = metadata !{null, metadata !11, metadata !12, metadata !141, metadata !14, metadata !65, metadata !6}
!141 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<33, true> &"}
!142 = metadata !{null, metadata !1, metadata !2, metadata !68, metadata !4, metadata !39, metadata !6}
!143 = metadata !{null, metadata !11, metadata !12, metadata !144, metadata !14, metadata !65, metadata !6}
!144 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!145 = metadata !{null, metadata !11, metadata !12, metadata !146, metadata !14, metadata !108, metadata !6}
!146 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"uint"}
!147 = metadata !{null, metadata !11, metadata !12, metadata !148, metadata !14, metadata !65, metadata !6}
!148 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, false> &"}
!149 = metadata !{null, metadata !11, metadata !12, metadata !150, metadata !14, metadata !65, metadata !6}
!150 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!151 = metadata !{null, metadata !11, metadata !12, metadata !152, metadata !14, metadata !65, metadata !6}
!152 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!153 = metadata !{null, metadata !11, metadata !12, metadata !150, metadata !14, metadata !108, metadata !6}
!154 = metadata !{null, metadata !1, metadata !2, metadata !86, metadata !4, metadata !155, metadata !6}
!155 = metadata !{metadata !"kernel_arg_name", metadata !""}
!156 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !155, metadata !6}
!157 = metadata !{metadata !158, [0 x i32]* @llvm_global_ctors_0}
!158 = metadata !{metadata !159}
!159 = metadata !{i32 0, i32 31, metadata !160}
!160 = metadata !{metadata !161}
!161 = metadata !{metadata !"llvm.global_ctors.0", metadata !162, metadata !"", i32 0, i32 31}
!162 = metadata !{metadata !163}
!163 = metadata !{i32 0, i32 0, i32 1}
!164 = metadata !{metadata !165, metadata !168, metadata !171, metadata !174}
!165 = metadata !{i32 0, i32 63, metadata !166}
!166 = metadata !{metadata !167}
!167 = metadata !{metadata !"to_net.V.data.V", metadata !162, metadata !"int64", i32 0, i32 63}
!168 = metadata !{i32 64, i32 71, metadata !169}
!169 = metadata !{metadata !170}
!170 = metadata !{metadata !"to_net.V.dest.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!171 = metadata !{i32 72, i32 79, metadata !172}
!172 = metadata !{metadata !173}
!173 = metadata !{metadata !"to_net.V.keep.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!174 = metadata !{i32 80, i32 80, metadata !175}
!175 = metadata !{metadata !176}
!176 = metadata !{metadata !"to_net.V.last.V", metadata !162, metadata !"uint1", i32 0, i32 0}
!177 = metadata !{metadata !178, metadata !181, metadata !184, metadata !187}
!178 = metadata !{i32 0, i32 63, metadata !179}
!179 = metadata !{metadata !180}
!180 = metadata !{metadata !"from_net.V.data.V", metadata !162, metadata !"int64", i32 0, i32 63}
!181 = metadata !{i32 64, i32 71, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"from_net.V.dest.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!184 = metadata !{i32 72, i32 79, metadata !185}
!185 = metadata !{metadata !186}
!186 = metadata !{metadata !"from_net.V.keep.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!187 = metadata !{i32 80, i32 80, metadata !188}
!188 = metadata !{metadata !189}
!189 = metadata !{metadata !"from_net.V.last.V", metadata !162, metadata !"uint1", i32 0, i32 0}
!190 = metadata !{metadata !191, metadata !194, metadata !197, metadata !200, metadata !203, metadata !206}
!191 = metadata !{i32 0, i32 63, metadata !192}
!192 = metadata !{metadata !193}
!193 = metadata !{metadata !"to_app.V.data.V", metadata !162, metadata !"uint64", i32 0, i32 63}
!194 = metadata !{i32 64, i32 71, metadata !195}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !"to_app.V.dest.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!197 = metadata !{i32 72, i32 72, metadata !198}
!198 = metadata !{metadata !199}
!199 = metadata !{metadata !"to_app.V.last.V", metadata !162, metadata !"uint1", i32 0, i32 0}
!200 = metadata !{i32 73, i32 80, metadata !201}
!201 = metadata !{metadata !202}
!202 = metadata !{metadata !"to_app.V.keep.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!203 = metadata !{i32 81, i32 88, metadata !204}
!204 = metadata !{metadata !205}
!205 = metadata !{metadata !"to_app.V.id.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!206 = metadata !{i32 89, i32 128, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"to_app.V.user.V", metadata !162, metadata !"uint40", i32 0, i32 39}
!209 = metadata !{metadata !210, metadata !213, metadata !216, metadata !219, metadata !222, metadata !225}
!210 = metadata !{i32 0, i32 63, metadata !211}
!211 = metadata !{metadata !212}
!212 = metadata !{metadata !"from_app.V.data.V", metadata !162, metadata !"uint64", i32 0, i32 63}
!213 = metadata !{i32 64, i32 71, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"from_app.V.dest.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!216 = metadata !{i32 72, i32 72, metadata !217}
!217 = metadata !{metadata !218}
!218 = metadata !{metadata !"from_app.V.last.V", metadata !162, metadata !"uint1", i32 0, i32 0}
!219 = metadata !{i32 73, i32 80, metadata !220}
!220 = metadata !{metadata !221}
!221 = metadata !{metadata !"from_app.V.keep.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!222 = metadata !{i32 81, i32 88, metadata !223}
!223 = metadata !{metadata !224}
!224 = metadata !{metadata !"from_app.V.id.V", metadata !162, metadata !"uint8", i32 0, i32 7}
!225 = metadata !{i32 89, i32 128, metadata !226}
!226 = metadata !{metadata !227}
!227 = metadata !{metadata !"from_app.V.user.V", metadata !162, metadata !"uint40", i32 0, i32 39}
