; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/NFR/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@NFR_str = internal unnamed_addr constant [4 x i8] c"NFR\00"
@p_str33 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str32 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str31 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str30 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str29 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str28 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str27 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str26 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str25 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str24 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str23 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str22 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i81 @llvm.part.select.i81(i81, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129*, i129) {
entry:
  %empty = call i129 @_autotb_FifoWrite_i129(i129* %0, i129 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
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

define weak i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_6 = trunc i81 %empty to i8
  ret i8 %empty_6
}

declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

declare i72 @_ssdm_op_PartSelect.i72.i81.i32.i32(i81, i32, i32) nounwind readnone

declare i64 @_ssdm_op_PartSelect.i64.i81.i32.i32(i81, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_7 = trunc i81 %empty to i4
  ret i4 %empty_7
}

declare i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_8 = trunc i81 %empty to i16
  ret i16 %empty_8
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i81(i81* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i81.i32(i81, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i81
  %empty_9 = shl i81 1, %empty
  %empty_10 = and i81 %0, %empty_9
  %empty_11 = icmp ne i81 %empty_10, 0
  ret i1 %empty_11
}

define weak i40 @_ssdm_op_BitConcatenate.i40.i36.i4(i36, i4) nounwind readnone {
entry:
  %empty = zext i36 %0 to i40
  %empty_12 = zext i4 %1 to i40
  %empty_13 = shl i40 %empty, 4
  %empty_14 = or i40 %empty_13, %empty_12
  ret i40 %empty_14
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i40.i8.i8.i1.i8.i64(i40, i8, i8, i1, i8, i64) nounwind readnone {
entry:
  %empty = zext i8 %4 to i72
  %empty_15 = zext i64 %5 to i72
  %empty_16 = shl i72 %empty, 64
  %empty_17 = or i72 %empty_16, %empty_15
  %empty_18 = zext i1 %3 to i73
  %empty_19 = zext i72 %empty_17 to i73
  %empty_20 = shl i73 %empty_18, 72
  %empty_21 = or i73 %empty_20, %empty_19
  %empty_22 = zext i8 %2 to i81
  %empty_23 = zext i73 %empty_21 to i81
  %empty_24 = shl i81 %empty_22, 73
  %empty_25 = or i81 %empty_24, %empty_23
  %empty_26 = zext i8 %1 to i89
  %empty_27 = zext i81 %empty_25 to i89
  %empty_28 = shl i89 %empty_26, 81
  %empty_29 = or i89 %empty_28, %empty_27
  %empty_30 = zext i40 %0 to i129
  %empty_31 = zext i89 %empty_29 to i129
  %empty_32 = shl i129 %empty_30, 89
  %empty_33 = or i129 %empty_32, %empty_31
  ret i129 %empty_33
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i36.i4.i8.i8.i1.i72(i36, i4, i8, i8, i1, i72) nounwind readnone {
entry:
  %empty = zext i1 %4 to i73
  %empty_34 = zext i72 %5 to i73
  %empty_35 = shl i73 %empty, 72
  %empty_36 = or i73 %empty_35, %empty_34
  %empty_37 = zext i8 %3 to i81
  %empty_38 = zext i73 %empty_36 to i81
  %empty_39 = shl i81 %empty_37, 73
  %empty_40 = or i81 %empty_39, %empty_38
  %empty_41 = zext i8 %2 to i89
  %empty_42 = zext i81 %empty_40 to i89
  %empty_43 = shl i89 %empty_41, 81
  %empty_44 = or i89 %empty_43, %empty_42
  %empty_45 = zext i4 %1 to i93
  %empty_46 = zext i89 %empty_44 to i93
  %empty_47 = shl i93 %empty_45, 89
  %empty_48 = or i93 %empty_47, %empty_46
  %empty_49 = zext i36 %0 to i129
  %empty_50 = zext i93 %empty_48 to i129
  %empty_51 = shl i129 %empty_49, 93
  %empty_52 = or i129 %empty_51, %empty_50
  ret i129 %empty_52
}

declare i129 @_autotb_FifoWrite_i129(i129*, i129)

declare i81 @_autotb_FifoRead_i81(i81*)

declare i1 @_autotb_FifoCanRead_i81(i81*)

define void @NFR(i81* %stream_in_V, i129* %stream_out_V) {
  %dest_V = alloca i16
  %tmp_id_V = alloca i8
  %p_Val2_s = alloca i40
  %tmp_dest_V = alloca i8
  %tmp_last_V = alloca i1
  %tmp_keep_V = alloca i8
  %tmp_id_V_1 = alloca i8
  %tmp_user_V = alloca i40
  call void (...)* @_ssdm_op_SpecInterface(i129* %stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str28, i32 0, i32 0, [1 x i8]* @p_str29, [1 x i8]* @p_str30, [1 x i8]* @p_str31, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str32, [1 x i8]* @p_str33)
  call void (...)* @_ssdm_op_SpecInterface(i81* %stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str22, i32 0, i32 0, [1 x i8]* @p_str23, [1 x i8]* @p_str24, [1 x i8]* @p_str25, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str26, [1 x i8]* @p_str27)
  call void (...)* @_ssdm_op_SpecBitsMap(i129* %stream_out_V), !map !141
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %stream_in_V), !map !160
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @NFR_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i129* %stream_out_V, [1 x i8]* @p_str1, [11 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %stream_in_V, [1 x i8]* @p_str1, [11 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %5
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %expected_bytes = phi i32 [ undef, %0 ], [ %expected_bytes_3, %.loopexit.loopexit ]
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %tmp40 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %stream_in_V)
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp40, i32 80)
  %p_Result_s = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp40, i32 24, i32 31)
  %tmp_4 = icmp eq i8 %p_Result_s, 5
  %tmp_5 = icmp eq i8 %p_Result_s, 4
  %tmp_6 = or i1 %tmp_5, %tmp_4
  %tmp_7 = icmp eq i8 %p_Result_s, 1
  %tmp_8 = or i1 %tmp_7, %tmp_6
  %tmp_10 = icmp eq i8 %p_Result_s, 0
  %tmp_11 = or i1 %tmp_10, %tmp_8
  br i1 %tmp_11, label %._crit_edge, label %1

._crit_edge:                                      ; preds = %.loopexit
  %id_V_2 = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp40, i32 16, i32 23)
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i81.i32.i32(i81 %tmp40, i32 56, i32 59)
  %p_Result_4 = call i40 @_ssdm_op_BitConcatenate.i40.i36.i4(i36 0, i4 %p_Result_2)
  %tmp_12 = trunc i81 %tmp40 to i72
  %tmp_11_1 = call i129 @_ssdm_op_BitConcatenate.i129.i36.i4.i8.i8.i1.i72(i36 0, i4 %p_Result_2, i8 %id_V_2, i8 -1, i1 %tmp, i72 %tmp_12)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* %stream_out_V, i129 %tmp_11_1)
  store i40 %p_Result_4, i40* %p_Val2_s
  store i8 %id_V_2, i8* %tmp_id_V
  br label %4

; <label>:1                                       ; preds = %.loopexit
  %tmp_3 = icmp eq i8 %p_Result_s, 2
  br i1 %tmp_3, label %2, label %3

; <label>:2                                       ; preds = %1
  %id_V = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp40, i32 16, i32 23)
  %p_Result_5 = call i4 @_ssdm_op_PartSelect.i4.i81.i32.i32(i81 %tmp40, i32 56, i32 59)
  %p_Result_6 = call i40 @_ssdm_op_BitConcatenate.i40.i36.i4(i36 1, i4 %p_Result_5)
  %p_Result_s_53 = call i16 @_ssdm_op_PartSelect.i16.i81.i32.i32(i81 %tmp40, i32 32, i32 47)
  %expected_bytes_1 = zext i16 %p_Result_s_53 to i32
  %dest_V_1 = trunc i81 %tmp40 to i16
  store i40 %p_Result_6, i40* %p_Val2_s
  store i8 %id_V, i8* %tmp_id_V
  store i16 %dest_V_1, i16* %dest_V
  br label %4

; <label>:3                                       ; preds = %1
  %tmp_dest_V_load = load i8* %tmp_dest_V
  %tmp_last_V_load = load i1* %tmp_last_V
  %tmp_keep_V_load = load i8* %tmp_keep_V
  %tmp_id_V_1_load = load i8* %tmp_id_V_1
  %tmp_user_V_load = load i40* %tmp_user_V
  %tmp_213 = call i129 @_ssdm_op_BitConcatenate.i129.i40.i8.i8.i1.i8.i64(i40 %tmp_user_V_load, i8 %tmp_id_V_1_load, i8 %tmp_keep_V_load, i1 %tmp_last_V_load, i8 %tmp_dest_V_load, i64 -1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* %stream_out_V, i129 %tmp_213)
  br label %4

; <label>:4                                       ; preds = %3, %2, %._crit_edge
  %expected_bytes_2 = phi i32 [ -1, %._crit_edge ], [ %expected_bytes_1, %2 ], [ %expected_bytes, %3 ]
  %dest_V_load = load i16* %dest_V
  %packetOut_dest_V = trunc i16 %dest_V_load to i8
  br label %5

; <label>:5                                       ; preds = %._crit_edge669, %4
  %expected_bytes_3 = phi i32 [ %expected_bytes_2, %4 ], [ %expected_bytes_6, %._crit_edge669 ]
  %tmp_9 = icmp sgt i32 %expected_bytes_3, 0
  br i1 %tmp_9, label %6, label %.loopexit.loopexit

; <label>:6                                       ; preds = %5
  %tmp_15 = trunc i32 %expected_bytes_3 to i31
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_2 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %stream_in_V, i32 1)
  br i1 %tmp_2, label %7, label %._crit_edge669

; <label>:7                                       ; preds = %6
  %tmp_id_V_load = load i8* %tmp_id_V
  %p_Val2_load = load i40* %p_Val2_s
  %tmp_354 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %stream_in_V)
  %packetIn_data_V = trunc i81 %tmp_354 to i64
  %packetIn_keep_V = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp_354, i32 72, i32 79)
  %tmp_s = add nsw i32 -8, %expected_bytes_3
  %tmp_last_V_1 = icmp slt i32 %tmp_s, 1
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 72)
  %expected_bytes_5_cas = add i31 -1, %tmp_15
  %expected_bytes_4_s = select i1 %tmp_17, i31 %expected_bytes_5_cas, i31 %tmp_15
  %expected_bytes_4_ca = zext i31 %expected_bytes_4_s to i32
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 73)
  %expected_bytes_5_1 = add nsw i32 -1, %expected_bytes_4_ca
  %expected_bytes_4_1 = select i1 %tmp_18, i32 %expected_bytes_5_1, i32 %expected_bytes_4_ca
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 74)
  %expected_bytes_5_2 = add nsw i32 -1, %expected_bytes_4_1
  %expected_bytes_4_2 = select i1 %tmp_19, i32 %expected_bytes_5_2, i32 %expected_bytes_4_1
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 75)
  %expected_bytes_5_3 = add nsw i32 -1, %expected_bytes_4_2
  %expected_bytes_4_3 = select i1 %tmp_20, i32 %expected_bytes_5_3, i32 %expected_bytes_4_2
  %tmp_21 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 76)
  %expected_bytes_5_4 = add nsw i32 -1, %expected_bytes_4_3
  %expected_bytes_4_4 = select i1 %tmp_21, i32 %expected_bytes_5_4, i32 %expected_bytes_4_3
  %tmp_22 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 77)
  %expected_bytes_5_5 = add nsw i32 -1, %expected_bytes_4_4
  %expected_bytes_4_5 = select i1 %tmp_22, i32 %expected_bytes_5_5, i32 %expected_bytes_4_4
  %tmp_23 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 78)
  %expected_bytes_5_6 = add nsw i32 -1, %expected_bytes_4_5
  %expected_bytes_4_6 = select i1 %tmp_23, i32 %expected_bytes_5_6, i32 %expected_bytes_4_5
  %tmp_24 = call i1 @_ssdm_op_BitSelect.i1.i81.i32(i81 %tmp_354, i32 79)
  %expected_bytes_5_7 = add nsw i32 -1, %expected_bytes_4_6
  %expected_bytes_4_7 = select i1 %tmp_24, i32 %expected_bytes_5_7, i32 %expected_bytes_4_6
  %tmp_427 = call i129 @_ssdm_op_BitConcatenate.i129.i40.i8.i8.i1.i8.i64(i40 %p_Val2_load, i8 %tmp_id_V_load, i8 %packetIn_keep_V, i1 %tmp_last_V_1, i8 %packetOut_dest_V, i64 %packetIn_data_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* %stream_out_V, i129 %tmp_427)
  store i40 %p_Val2_load, i40* %tmp_user_V
  store i8 %tmp_id_V_load, i8* %tmp_id_V_1
  store i8 %packetIn_keep_V, i8* %tmp_keep_V
  store i1 %tmp_last_V_1, i1* %tmp_last_V
  store i8 %packetOut_dest_V, i8* %tmp_dest_V
  br label %._crit_edge669

._crit_edge669:                                   ; preds = %7, %6
  %expected_bytes_6 = phi i32 [ %expected_bytes_4_7, %7 ], [ %expected_bytes_3, %6 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_1)
  br label %5
}

!opencl.kernels = !{!0, !7, !10, !16, !16, !19, !19, !25, !19, !28, !31, !31, !35, !35, !19, !19, !19, !37, !37, !19, !19, !39, !42, !42, !19, !19, !44, !44, !44, !19, !19, !19, !47, !19, !19, !48, !35, !35, !51, !53, !55, !55, !19, !57, !44, !44, !58, !60, !60, !61, !64, !64, !44, !44, !44, !70, !70, !72, !74, !76, !76, !19, !77, !61, !79, !79, !81, !82, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !84, !87, !87, !89, !19, !91, !91, !93, !94, !19, !19, !19, !96, !96, !98, !100, !102, !102, !103, !60, !60, !105, !107, !109, !109, !19, !111, !113, !113, !115, !115, !19, !117, !19, !19, !19, !119, !119, !120, !122, !124, !113, !113, !126, !19, !128, !126, !130, !128, !131, !19, !19, !19, !19, !19, !19, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!134}

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
!13 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis_in>", metadata !"hls::stream<ap_axis_out>"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"stream_out"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !11, metadata !12, metadata !26, metadata !14, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_bit_ref<8, false> &", metadata !"int"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!28 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"index"}
!31 = metadata !{null, metadata !32, metadata !12, metadata !33, metadata !14, metadata !34, metadata !6}
!32 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false>*", metadata !"int"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"index"}
!35 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !36, metadata !6}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!37 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !18, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !36, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!44 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !46, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &"}
!46 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!47 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !41, metadata !6}
!48 = metadata !{null, metadata !1, metadata !2, metadata !49, metadata !4, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_out &"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!51 = metadata !{null, metadata !1, metadata !2, metadata !52, metadata !4, metadata !41, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !36, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!55 = metadata !{null, metadata !1, metadata !2, metadata !56, metadata !4, metadata !18, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!57 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !36, metadata !6}
!58 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !36, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!60 = metadata !{null, metadata !1, metadata !2, metadata !59, metadata !4, metadata !18, metadata !6}
!61 = metadata !{null, metadata !11, metadata !12, metadata !62, metadata !14, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!64 = metadata !{null, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !6}
!65 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!66 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!68 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!69 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!70 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !18, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !41, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!74 = metadata !{null, metadata !11, metadata !12, metadata !75, metadata !14, metadata !27, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &", metadata !"int"}
!76 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !18, metadata !6}
!77 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !41, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!79 = metadata !{null, metadata !65, metadata !66, metadata !80, metadata !68, metadata !69, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int", metadata !"int"}
!81 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !41, metadata !6}
!82 = metadata !{null, metadata !1, metadata !2, metadata !83, metadata !4, metadata !41, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!84 = metadata !{null, metadata !11, metadata !12, metadata !85, metadata !14, metadata !86, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"long"}
!86 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!87 = metadata !{null, metadata !1, metadata !2, metadata !88, metadata !4, metadata !18, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!89 = metadata !{null, metadata !11, metadata !12, metadata !90, metadata !14, metadata !27, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, true> &"}
!91 = metadata !{null, metadata !1, metadata !2, metadata !92, metadata !4, metadata !18, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!93 = metadata !{null, metadata !1, metadata !2, metadata !71, metadata !4, metadata !41, metadata !6}
!94 = metadata !{null, metadata !11, metadata !12, metadata !95, metadata !14, metadata !27, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<65, true> &"}
!96 = metadata !{null, metadata !1, metadata !2, metadata !97, metadata !4, metadata !18, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!98 = metadata !{null, metadata !11, metadata !12, metadata !99, metadata !14, metadata !27, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!100 = metadata !{null, metadata !11, metadata !12, metadata !101, metadata !14, metadata !86, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"ulong"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !18, metadata !6}
!103 = metadata !{null, metadata !11, metadata !12, metadata !104, metadata !14, metadata !27, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, false> &"}
!105 = metadata !{null, metadata !11, metadata !12, metadata !106, metadata !14, metadata !27, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!107 = metadata !{null, metadata !11, metadata !12, metadata !108, metadata !14, metadata !86, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!109 = metadata !{null, metadata !1, metadata !2, metadata !110, metadata !4, metadata !18, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!111 = metadata !{null, metadata !11, metadata !12, metadata !112, metadata !14, metadata !27, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!113 = metadata !{null, metadata !1, metadata !2, metadata !114, metadata !4, metadata !18, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!115 = metadata !{null, metadata !1, metadata !2, metadata !116, metadata !4, metadata !18, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!117 = metadata !{null, metadata !11, metadata !12, metadata !118, metadata !14, metadata !27, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<33, true> &"}
!119 = metadata !{null, metadata !1, metadata !2, metadata !78, metadata !4, metadata !18, metadata !6}
!120 = metadata !{null, metadata !11, metadata !12, metadata !121, metadata !14, metadata !27, metadata !6}
!121 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!122 = metadata !{null, metadata !11, metadata !12, metadata !123, metadata !14, metadata !86, metadata !6}
!123 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"uint"}
!124 = metadata !{null, metadata !11, metadata !12, metadata !125, metadata !14, metadata !27, metadata !6}
!125 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, false> &"}
!126 = metadata !{null, metadata !11, metadata !12, metadata !127, metadata !14, metadata !27, metadata !6}
!127 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!128 = metadata !{null, metadata !11, metadata !12, metadata !129, metadata !14, metadata !27, metadata !6}
!129 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!130 = metadata !{null, metadata !11, metadata !12, metadata !127, metadata !14, metadata !86, metadata !6}
!131 = metadata !{null, metadata !1, metadata !2, metadata !132, metadata !4, metadata !133, metadata !6}
!132 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_in &"}
!133 = metadata !{metadata !"kernel_arg_name", metadata !""}
!134 = metadata !{metadata !135, [0 x i32]* @llvm_global_ctors_0}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 31, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"llvm.global_ctors.0", metadata !139, metadata !"", i32 0, i32 31}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 0, i32 1}
!141 = metadata !{metadata !142, metadata !145, metadata !148, metadata !151, metadata !154, metadata !157}
!142 = metadata !{i32 0, i32 63, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"stream_out.V.data.V", metadata !139, metadata !"uint64", i32 0, i32 63}
!145 = metadata !{i32 64, i32 71, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"stream_out.V.dest.V", metadata !139, metadata !"uint8", i32 0, i32 7}
!148 = metadata !{i32 72, i32 72, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"stream_out.V.last.V", metadata !139, metadata !"uint1", i32 0, i32 0}
!151 = metadata !{i32 73, i32 80, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"stream_out.V.keep.V", metadata !139, metadata !"uint8", i32 0, i32 7}
!154 = metadata !{i32 81, i32 88, metadata !155}
!155 = metadata !{metadata !156}
!156 = metadata !{metadata !"stream_out.V.id.V", metadata !139, metadata !"uint8", i32 0, i32 7}
!157 = metadata !{i32 89, i32 128, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"stream_out.V.user.V", metadata !139, metadata !"uint40", i32 0, i32 39}
!160 = metadata !{metadata !161, metadata !164, metadata !167, metadata !170}
!161 = metadata !{i32 0, i32 63, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"stream_in.V.data.V", metadata !139, metadata !"int64", i32 0, i32 63}
!164 = metadata !{i32 64, i32 71, metadata !165}
!165 = metadata !{metadata !166}
!166 = metadata !{metadata !"stream_in.V.dest.V", metadata !139, metadata !"uint8", i32 0, i32 7}
!167 = metadata !{i32 72, i32 79, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"stream_in.V.keep.V", metadata !139, metadata !"uint8", i32 0, i32 7}
!170 = metadata !{i32 80, i32 80, metadata !171}
!171 = metadata !{metadata !172}
!172 = metadata !{metadata !"stream_in.V.last.V", metadata !139, metadata !"uint1", i32 0, i32 0}
