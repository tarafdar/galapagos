; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/FNR/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@FNR_str = internal unnamed_addr constant [4 x i8] c"FNR\00"
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
@p_str21 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str20 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str2 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i64 @llvm.part.set.i64.i8(i64, i8, i32, i32) nounwind readnone

declare i129 @llvm.part.select.i129(i129, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81*, i81) {
entry:
  %empty = call i81 @_autotb_FifoWrite_i81(i81* %0, i81 %1)
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

define weak i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129*) {
entry:
  %empty = call i129 @_autotb_FifoRead_i129(i129* %0)
  ret i129 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_8 = trunc i129 %empty to i8
  ret i8 %empty_8
}

declare i64 @_ssdm_op_PartSelect.i64.i129.i32.i32(i129, i32, i32) nounwind readnone

define weak i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_9 = trunc i129 %empty to i4
  ret i4 %empty_9
}

define weak i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_10 = trunc i129 %empty to i16
  ret i16 %empty_10
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i129(i129* %0)
  ret i1 %empty
}

define weak i1 @_ssdm_op_BitSelect.i1.i129.i32(i129, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i129
  %empty_11 = shl i129 1, %empty
  %empty_12 = and i129 %0, %empty_11
  %empty_13 = icmp ne i129 %empty_12, 0
  ret i1 %empty_13
}

define weak i81 @_ssdm_op_BitConcatenate.i81.i8.i9.i64(i8, i9, i64) nounwind readnone {
entry:
  %empty = zext i9 %1 to i73
  %empty_14 = zext i64 %2 to i73
  %empty_15 = shl i73 %empty, 64
  %empty_16 = or i73 %empty_15, %empty_14
  %empty_17 = zext i8 %0 to i81
  %empty_18 = zext i73 %empty_16 to i81
  %empty_19 = shl i81 %empty_17, 73
  %empty_20 = or i81 %empty_19, %empty_18
  ret i81 %empty_20
}

define weak i81 @_ssdm_op_BitConcatenate.i81.i8.i8.i1.i64(i8, i8, i1, i64) nounwind readnone {
entry:
  %empty = zext i1 %2 to i65
  %empty_21 = zext i64 %3 to i65
  %empty_22 = shl i65 %empty, 64
  %empty_23 = or i65 %empty_22, %empty_21
  %empty_24 = zext i8 %1 to i73
  %empty_25 = zext i65 %empty_23 to i73
  %empty_26 = shl i73 %empty_24, 65
  %empty_27 = or i73 %empty_26, %empty_25
  %empty_28 = zext i8 %0 to i81
  %empty_29 = zext i73 %empty_27 to i81
  %empty_30 = shl i81 %empty_28, 73
  %empty_31 = or i81 %empty_30, %empty_29
  ret i81 %empty_31
}

define weak i60 @_ssdm_op_BitConcatenate.i60.i4.i56(i4, i56) nounwind readnone {
entry:
  %empty = zext i4 %0 to i60
  %empty_32 = zext i56 %1 to i60
  %empty_33 = shl i60 %empty, 56
  %empty_34 = or i60 %empty_33, %empty_32
  ret i60 %empty_34
}

define weak i48 @_ssdm_op_BitConcatenate.i48.i16.i8.i8.i16(i16, i8, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %2 to i24
  %empty_35 = zext i16 %3 to i24
  %empty_36 = shl i24 %empty, 16
  %empty_37 = or i24 %empty_36, %empty_35
  %empty_38 = zext i8 %1 to i32
  %empty_39 = zext i24 %empty_37 to i32
  %empty_40 = shl i32 %empty_38, 24
  %empty_41 = or i32 %empty_40, %empty_39
  %empty_42 = zext i16 %0 to i48
  %empty_43 = zext i32 %empty_41 to i48
  %empty_44 = shl i48 %empty_42, 32
  %empty_45 = or i48 %empty_44, %empty_43
  ret i48 %empty_45
}

declare i81 @_autotb_FifoWrite_i81(i81*, i81)

declare i129 @_autotb_FifoRead_i129(i129*)

declare i1 @_autotb_FifoCanRead_i129(i129*)

define void @FNR(i129* %stream_in_V, i81* %stream_out_V) {
_ifconv:
  call void (...)* @_ssdm_op_SpecInterface(i81* %stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str26, i32 0, i32 0, [1 x i8]* @p_str27, [1 x i8]* @p_str28, [1 x i8]* @p_str29, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str30, [1 x i8]* @p_str31)
  call void (...)* @_ssdm_op_SpecInterface(i129* %stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str20, i32 0, i32 0, [1 x i8]* @p_str21, [1 x i8]* @p_str22, [1 x i8]* @p_str23, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str24, [1 x i8]* @p_str25)
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %stream_out_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i129* %stream_in_V), !map !130
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @FNR_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i81* %stream_out_V, [1 x i8]* @p_str1, [11 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecIFCore(i129* %stream_in_V, [1 x i8]* @p_str1, [11 x i8]* @p_str2, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %tmp41 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* %stream_in_V)
  %p_Val2_s = trunc i129 %tmp41 to i64
  %extraPayload_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp41, i32 64, i32 71)
  %currPayloadOut_keep_s = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp41, i32 72, i32 79)
  %last_V_1 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp41, i32 80)
  %tmp_id_V_load_new = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp41, i32 81, i32 88)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp41, i32 93, i32 96)
  %tmp_1 = icmp eq i4 %p_Result_s, 0
  %p_Result_1 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp41, i32 89, i32 92)
  %loc_V_trunc = zext i4 %p_Result_1 to i8
  %p_Result_s_46 = call i64 @llvm.part.set.i64.i8(i64 %p_Val2_s, i8 %loc_V_trunc, i32 56, i32 63)
  %tmp_2 = icmp eq i4 %p_Result_s, 1
  %loc_V_1_trunc = zext i8 %extraPayload_dest_V to i16
  %p_Result_2 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp41, i32 97, i32 112)
  %tmp = call i48 @_ssdm_op_BitConcatenate.i48.i16.i8.i8.i16(i16 %p_Result_2, i8 2, i8 %tmp_id_V_load_new, i16 %loc_V_1_trunc)
  %tmp_6 = zext i48 %tmp to i56
  %tmp_7 = call i60 @_ssdm_op_BitConcatenate.i60.i4.i56(i4 %p_Result_1, i56 %tmp_6)
  %p_Result_4 = zext i60 %tmp_7 to i64
  %sel_tmp = select i1 %tmp_1, i64 %p_Result_s_46, i64 %p_Val2_s
  %sel_tmp1 = xor i1 %tmp_1, true
  %sel_tmp2 = and i1 %tmp_2, %sel_tmp1
  %currPayloadOut_data_s = select i1 %sel_tmp2, i64 %p_Val2_s, i64 %sel_tmp
  br i1 %tmp_2, label %0, label %1

; <label>:0                                       ; preds = %_ifconv
  %tmp_11 = call i81 @_ssdm_op_BitConcatenate.i81.i8.i9.i64(i8 %extraPayload_dest_V, i9 -2, i64 %p_Result_4)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %stream_out_V, i81 %tmp_11)
  %tmp_210 = call i81 @_ssdm_op_BitConcatenate.i81.i8.i8.i1.i64(i8 %extraPayload_dest_V, i8 %currPayloadOut_keep_s, i1 %last_V_1, i64 %currPayloadOut_data_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %stream_out_V, i81 %tmp_210)
  br label %2

; <label>:1                                       ; preds = %_ifconv
  %tmp_320 = call i81 @_ssdm_op_BitConcatenate.i81.i8.i8.i1.i64(i8 %extraPayload_dest_V, i8 %currPayloadOut_keep_s, i1 %last_V_1, i64 %currPayloadOut_data_s)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %stream_out_V, i81 %tmp_320)
  br label %2

; <label>:2                                       ; preds = %1, %0
  br label %3

; <label>:3                                       ; preds = %._crit_edge481, %2
  %p_s = phi i1 [ %last_V_1, %2 ], [ %p_077_1, %._crit_edge481 ]
  br i1 %p_s, label %6, label %4

; <label>:4                                       ; preds = %3
  %tmp_8 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* %stream_in_V, i32 1)
  br i1 %tmp_3, label %5, label %._crit_edge481

; <label>:5                                       ; preds = %4
  %tmp_4 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* %stream_in_V)
  %currPayloadOut_data_1 = trunc i129 %tmp_4 to i64
  %currPayloadOut_dest_s = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_4, i32 64, i32 71)
  %currPayloadOut_keep_1 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_4, i32 72, i32 79)
  %currPayloadOut_last_s = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_4, i32 80)
  %tmp_5 = call i81 @_ssdm_op_BitConcatenate.i81.i8.i8.i1.i64(i8 %currPayloadOut_dest_s, i8 %currPayloadOut_keep_1, i1 %currPayloadOut_last_s, i64 %currPayloadOut_data_1)
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %stream_out_V, i81 %tmp_5)
  br label %._crit_edge481

._crit_edge481:                                   ; preds = %5, %4
  %p_077_1 = phi i1 [ %currPayloadOut_last_s, %5 ], [ false, %4 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_8)
  br label %3

; <label>:6                                       ; preds = %3
  ret void
}

!opencl.kernels = !{!0, !7, !13, !13, !19, !22, !22, !13, !13, !25, !28, !28, !13, !13, !13, !13, !30, !32, !32, !13, !33, !35, !35, !37, !39, !39, !40, !43, !43, !49, !49, !25, !30, !40, !51, !51, !53, !56, !56, !13, !57, !40, !60, !60, !62, !62, !13, !13, !64, !66, !67, !13, !49, !49, !13, !13, !49, !49, !49, !49, !13, !13, !13, !13, !13, !13, !69, !72, !72, !74, !13, !76, !76, !78, !80, !13, !13, !13, !82, !82, !84, !86, !88, !88, !90, !92, !92, !94, !96, !98, !98, !13, !100, !102, !102, !104, !107, !109, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!110}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<64>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"X"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis_dest>", metadata !"hls::stream<ap_axis>"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"stream_out"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{null, metadata !1, metadata !2, metadata !23, metadata !4, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!25 = metadata !{null, metadata !1, metadata !2, metadata !26, metadata !4, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!28 = metadata !{null, metadata !1, metadata !2, metadata !26, metadata !4, metadata !29, metadata !6}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !31, metadata !4, metadata !27, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!32 = metadata !{null, metadata !1, metadata !2, metadata !31, metadata !4, metadata !24, metadata !6}
!33 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !27, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!35 = metadata !{null, metadata !1, metadata !2, metadata !36, metadata !4, metadata !24, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!37 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !27, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !24, metadata !6}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int", metadata !"int"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !27, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!51 = metadata !{null, metadata !44, metadata !45, metadata !52, metadata !47, metadata !48, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!53 = metadata !{null, metadata !8, metadata !9, metadata !54, metadata !11, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &", metadata !"int"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!56 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !24, metadata !6}
!57 = metadata !{null, metadata !1, metadata !2, metadata !58, metadata !4, metadata !59, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!60 = metadata !{null, metadata !44, metadata !45, metadata !61, metadata !47, metadata !48, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !24, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !59, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!66 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !59, metadata !6}
!67 = metadata !{null, metadata !1, metadata !2, metadata !68, metadata !4, metadata !59, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !71, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"long"}
!71 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!72 = metadata !{null, metadata !1, metadata !2, metadata !73, metadata !4, metadata !24, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!74 = metadata !{null, metadata !8, metadata !9, metadata !75, metadata !11, metadata !55, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, true> &"}
!76 = metadata !{null, metadata !1, metadata !2, metadata !77, metadata !4, metadata !24, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!78 = metadata !{null, metadata !1, metadata !2, metadata !79, metadata !4, metadata !59, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!80 = metadata !{null, metadata !8, metadata !9, metadata !81, metadata !11, metadata !55, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<65, true> &"}
!82 = metadata !{null, metadata !1, metadata !2, metadata !83, metadata !4, metadata !24, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!84 = metadata !{null, metadata !8, metadata !9, metadata !85, metadata !11, metadata !55, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!86 = metadata !{null, metadata !8, metadata !9, metadata !87, metadata !11, metadata !71, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"ulong"}
!88 = metadata !{null, metadata !1, metadata !2, metadata !89, metadata !4, metadata !24, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!90 = metadata !{null, metadata !8, metadata !9, metadata !91, metadata !11, metadata !55, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, false> &"}
!92 = metadata !{null, metadata !1, metadata !2, metadata !93, metadata !4, metadata !24, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!94 = metadata !{null, metadata !8, metadata !9, metadata !95, metadata !11, metadata !55, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!96 = metadata !{null, metadata !8, metadata !9, metadata !97, metadata !11, metadata !71, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!98 = metadata !{null, metadata !1, metadata !2, metadata !99, metadata !4, metadata !24, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!100 = metadata !{null, metadata !8, metadata !9, metadata !101, metadata !11, metadata !55, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!102 = metadata !{null, metadata !1, metadata !2, metadata !103, metadata !4, metadata !24, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!104 = metadata !{null, metadata !1, metadata !2, metadata !105, metadata !4, metadata !106, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_dest &"}
!106 = metadata !{metadata !"kernel_arg_name", metadata !""}
!107 = metadata !{null, metadata !1, metadata !2, metadata !108, metadata !4, metadata !59, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!109 = metadata !{null, metadata !1, metadata !2, metadata !23, metadata !4, metadata !59, metadata !6}
!110 = metadata !{metadata !111, [0 x i32]* @llvm_global_ctors_0}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 31, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"llvm.global_ctors.0", metadata !115, metadata !"", i32 0, i32 31}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 0, i32 1}
!117 = metadata !{metadata !118, metadata !121, metadata !124, metadata !127}
!118 = metadata !{i32 0, i32 63, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"stream_out.V.data.V", metadata !115, metadata !"int64", i32 0, i32 63}
!121 = metadata !{i32 64, i32 64, metadata !122}
!122 = metadata !{metadata !123}
!123 = metadata !{metadata !"stream_out.V.last.V", metadata !115, metadata !"uint1", i32 0, i32 0}
!124 = metadata !{i32 65, i32 72, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"stream_out.V.keep.V", metadata !115, metadata !"uint8", i32 0, i32 7}
!127 = metadata !{i32 73, i32 80, metadata !128}
!128 = metadata !{metadata !129}
!129 = metadata !{metadata !"stream_out.V.dest.V", metadata !115, metadata !"uint8", i32 0, i32 7}
!130 = metadata !{metadata !131, metadata !134, metadata !137, metadata !140, metadata !143, metadata !146}
!131 = metadata !{i32 0, i32 63, metadata !132}
!132 = metadata !{metadata !133}
!133 = metadata !{metadata !"stream_in.V.data.V", metadata !115, metadata !"uint64", i32 0, i32 63}
!134 = metadata !{i32 64, i32 71, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"stream_in.V.dest.V", metadata !115, metadata !"uint8", i32 0, i32 7}
!137 = metadata !{i32 72, i32 79, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"stream_in.V.keep.V", metadata !115, metadata !"uint8", i32 0, i32 7}
!140 = metadata !{i32 80, i32 80, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"stream_in.V.last.V", metadata !115, metadata !"uint1", i32 0, i32 0}
!143 = metadata !{i32 81, i32 88, metadata !144}
!144 = metadata !{metadata !145}
!145 = metadata !{metadata !"stream_in.V.id.V", metadata !115, metadata !"uint8", i32 0, i32 7}
!146 = metadata !{i32 89, i32 128, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"stream_in.V.user.V", metadata !115, metadata !"uint40", i32 0, i32 39}
