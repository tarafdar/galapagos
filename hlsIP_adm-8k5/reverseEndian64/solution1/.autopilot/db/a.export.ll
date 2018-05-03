; ModuleID = '/nfs/ug/thesis/thesis0/pc/Quinn/galapagos/hlsIP_adm-8k5/reverseEndian64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@reverseEndian64_str = internal unnamed_addr constant [16 x i8] c"reverseEndian64\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

define void @reverseEndian64(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V, i8* %stream_in_V_tkeep_V, i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_tkeep_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_in_V_data_V), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_in_V_last_V), !map !78
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_in_V_tkeep_V), !map !82
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_out_V_data_V), !map !86
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_out_V_last_V), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_out_V_tkeep_V), !map !94
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @reverseEndian64_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_tkeep_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V, i8* %stream_in_V_tkeep_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %1, %0
  %empty = call { i64, i1, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V, i8* %stream_in_V_tkeep_V)
  %tmp_data_V_1 = extractvalue { i64, i1, i8 } %empty, 0
  %tmp_last_V = extractvalue { i64, i1, i8 } %empty, 1
  %tmp_tkeep_V = extractvalue { i64, i1, i8 } %empty, 2
  %tmp = trunc i64 %tmp_data_V_1 to i8
  %tmp_1 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 56, i32 63)
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 8, i32 15)
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 24, i32 31)
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 40, i32 47)
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 16, i32 23)
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 32, i32 39)
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_1, i32 48, i32 55)
  %x_V = call i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp, i8 %tmp_2, i8 %tmp_5, i8 %tmp_3, i8 %tmp_6, i8 %tmp_4, i8 %tmp_7, i8 %tmp_1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_tkeep_V, i64 %x_V, i1 %tmp_last_V, i8 %tmp_tkeep_V)
  br label %1
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64*, i1*, i8*, i64, i1, i8) {
entry:
  store i64 %3, i64* %0
  store i1 %4, i1* %1
  store i8 %5, i8* %2
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i64, i1, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P(i64*, i1*, i8*) {
entry:
  %empty = load i64* %0
  %empty_4 = load i1* %1
  %empty_5 = load i8* %2
  %mrv_0 = insertvalue { i64, i1, i8 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i1, i8 } %mrv_0, i1 %empty_4, 1
  %mrv2 = insertvalue { i64, i1, i8 } %mrv1, i8 %empty_5, 2
  ret { i64, i1, i8 } %mrv2
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_6 = trunc i64 %empty to i8
  ret i8 %empty_6
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %6 to i16
  %empty_7 = zext i8 %7 to i16
  %empty_8 = shl i16 %empty, 8
  %empty_9 = or i16 %empty_8, %empty_7
  %empty_10 = zext i8 %5 to i24
  %empty_11 = zext i16 %empty_9 to i24
  %empty_12 = shl i24 %empty_10, 16
  %empty_13 = or i24 %empty_12, %empty_11
  %empty_14 = zext i8 %4 to i32
  %empty_15 = zext i24 %empty_13 to i32
  %empty_16 = shl i32 %empty_14, 24
  %empty_17 = or i32 %empty_16, %empty_15
  %empty_18 = zext i8 %3 to i40
  %empty_19 = zext i32 %empty_17 to i40
  %empty_20 = shl i40 %empty_18, 32
  %empty_21 = or i40 %empty_20, %empty_19
  %empty_22 = zext i8 %2 to i48
  %empty_23 = zext i40 %empty_21 to i48
  %empty_24 = shl i48 %empty_22, 40
  %empty_25 = or i48 %empty_24, %empty_23
  %empty_26 = zext i8 %1 to i56
  %empty_27 = zext i48 %empty_25 to i56
  %empty_28 = shl i56 %empty_26, 48
  %empty_29 = or i56 %empty_28, %empty_27
  %empty_30 = zext i8 %0 to i64
  %empty_31 = zext i56 %empty_29 to i64
  %empty_32 = shl i64 %empty_30, 56
  %empty_33 = or i64 %empty_32, %empty_31
  ret i64 %empty_33
}

!opencl.kernels = !{!0, !7, !13, !16, !19, !21, !27, !31, !31, !21, !34, !21, !21, !37, !37, !39, !41, !21, !21, !21, !43, !43, !45, !47, !49, !49, !21, !51, !53, !53, !55, !57, !59, !59, !21, !61, !63, !63, !65, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!67}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<64>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"X"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis>*", metadata !"hls::stream<ap_axis>*"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"stream_out"}
!13 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !18, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{null, metadata !28, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"long"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!31 = metadata !{null, metadata !1, metadata !2, metadata !32, metadata !4, metadata !33, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!34 = metadata !{null, metadata !28, metadata !9, metadata !35, metadata !11, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, true> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!37 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !33, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !18, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!41 = metadata !{null, metadata !28, metadata !9, metadata !42, metadata !11, metadata !36, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<65, true> &"}
!43 = metadata !{null, metadata !1, metadata !2, metadata !44, metadata !4, metadata !33, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!45 = metadata !{null, metadata !28, metadata !9, metadata !46, metadata !11, metadata !36, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!47 = metadata !{null, metadata !28, metadata !9, metadata !48, metadata !11, metadata !30, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"ulong"}
!49 = metadata !{null, metadata !1, metadata !2, metadata !50, metadata !4, metadata !33, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!51 = metadata !{null, metadata !28, metadata !9, metadata !52, metadata !11, metadata !36, metadata !6}
!52 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, false> &"}
!53 = metadata !{null, metadata !1, metadata !2, metadata !54, metadata !4, metadata !33, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!55 = metadata !{null, metadata !28, metadata !9, metadata !56, metadata !11, metadata !36, metadata !6}
!56 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!57 = metadata !{null, metadata !28, metadata !9, metadata !58, metadata !11, metadata !30, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!59 = metadata !{null, metadata !1, metadata !2, metadata !60, metadata !4, metadata !33, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!61 = metadata !{null, metadata !28, metadata !9, metadata !62, metadata !11, metadata !36, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!63 = metadata !{null, metadata !1, metadata !2, metadata !64, metadata !4, metadata !33, metadata !6}
!64 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!65 = metadata !{null, metadata !1, metadata !2, metadata !14, metadata !4, metadata !66, metadata !6}
!66 = metadata !{metadata !"kernel_arg_name", metadata !""}
!67 = metadata !{metadata !68, [0 x i32]* @llvm_global_ctors_0}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 31, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"llvm.global_ctors.0", metadata !72, metadata !"", i32 0, i32 31}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 0, i32 1}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 63, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"stream_in.V.data.V", metadata !72, metadata !"int64", i32 0, i32 63}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 0, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"stream_in.V.last.V", metadata !72, metadata !"uint1", i32 0, i32 0}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 7, metadata !84}
!84 = metadata !{metadata !85}
!85 = metadata !{metadata !"stream_in.V.tkeep.V", metadata !72, metadata !"uint8", i32 0, i32 7}
!86 = metadata !{metadata !87}
!87 = metadata !{i32 0, i32 63, metadata !88}
!88 = metadata !{metadata !89}
!89 = metadata !{metadata !"stream_out.V.data.V", metadata !72, metadata !"int64", i32 0, i32 63}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 0, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"stream_out.V.last.V", metadata !72, metadata !"uint1", i32 0, i32 0}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 7, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"stream_out.V.tkeep.V", metadata !72, metadata !"uint8", i32 0, i32 7}
