; ModuleID = '/nfs/ug/thesis/thesis0/pc/Graham/galapagos_test/hlsIP_adm-8k5/packetFormatter_hardcode_64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@packetFormatter_hard = internal unnamed_addr constant [28 x i8] c"packetFormatter_hardcode_64\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @packetFormatter_hardcode_64(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V, i48 %eth_dst_V, i48 %eth_src_V, i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetIn_V_data_V), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetIn_V_last_V), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_dest_V), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_keep_V), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(i48 %eth_dst_V), !map !111
  call void (...)* @_ssdm_op_SpecBitsMap(i48 %eth_src_V), !map !117
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetOut_V_data_V), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetOut_V_last_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetOut_V_keep_V), !map !129
  call void (...)* @_ssdm_op_SpecTopModule([28 x i8]* @packetFormatter_hard) nounwind
  %eth_src_V_read = call i48 @_ssdm_op_Read.ap_none.i48(i48 %eth_src_V)
  %eth_dst_V_read = call i48 @_ssdm_op_Read.ap_none.i48(i48 %eth_dst_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48 %eth_src_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48 %eth_dst_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %tmp = call i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48 %eth_src_V_read, i32 32, i32 47)
  %packetHeader0_data_V = call i64 @_ssdm_op_BitConcatenate.i64.i48.i16(i48 %eth_dst_V_read, i16 %tmp)
  %temp_V = trunc i48 %eth_src_V_read to i32
  %empty = call { i64, i1, i8, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V)
  %tmp_data_V_2 = extractvalue { i64, i1, i8, i8 } %empty, 0
  %tmp_last_V = extractvalue { i64, i1, i8, i8 } %empty, 1
  %tmp_dest_V = extractvalue { i64, i1, i8, i8 } %empty, 2
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i16.i8.i8(i32 %temp_V, i16 29696, i8 %tmp_dest_V, i8 0)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %packetHeader0_data_V, i1 undef, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %p_Result_s, i1 undef, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V_2, i1 %tmp_last_V, i8 -1)
  br label %1

; <label>:1                                       ; preds = %2, %0
  %p_s = phi i1 [ %tmp_last_V, %0 ], [ %tmp_last_V_1, %2 ]
  br i1 %p_s, label %3, label %2

; <label>:2                                       ; preds = %1
  %empty_5 = call { i64, i1, i8, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V)
  %tmp_data_V_4 = extractvalue { i64, i1, i8, i8 } %empty_5, 0
  %tmp_last_V_1 = extractvalue { i64, i1, i8, i8 } %empty_5, 1
  %tmp_keep_V = extractvalue { i64, i1, i8, i8 } %empty_5, 3
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V_4, i1 %tmp_last_V_1, i8 %tmp_keep_V)
  br label %1

; <label>:3                                       ; preds = %1
  ret void
}

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64*, i1*, i8*, i64, i1, i8) {
entry:
  store i64 %3, i64* %0
  store i1 %4, i1* %1
  store i8 %5, i8* %2
  ret void
}

define weak void @_ssdm_op_Wait(...) nounwind {
entry:
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

define weak { i64, i1, i8, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P.i8P(i64*, i1*, i8*, i8*) {
entry:
  %empty = load i64* %0
  %empty_6 = load i1* %1
  %empty_7 = load i8* %2
  %empty_8 = load i8* %3
  %mrv_0 = insertvalue { i64, i1, i8, i8 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i1, i8, i8 } %mrv_0, i1 %empty_6, 1
  %mrv2 = insertvalue { i64, i1, i8, i8 } %mrv1, i8 %empty_7, 2
  %mrv3 = insertvalue { i64, i1, i8, i8 } %mrv2, i8 %empty_8, 3
  ret { i64, i1, i8, i8 } %mrv3
}

define weak i48 @_ssdm_op_Read.ap_none.i48(i48) {
entry:
  ret i48 %0
}

declare i32 @_ssdm_op_PartSelect.i32.i48.i32.i32(i48, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_9 = trunc i48 %empty to i16
  ret i16 %empty_9
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i48.i16(i48, i16) nounwind readnone {
entry:
  %empty = zext i48 %0 to i64
  %empty_10 = zext i16 %1 to i64
  %empty_11 = shl i64 %empty, 16
  %empty_12 = or i64 %empty_11, %empty_10
  ret i64 %empty_12
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i16.i8.i8(i32, i16, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %2 to i16
  %empty_13 = zext i8 %3 to i16
  %empty_14 = shl i16 %empty, 8
  %empty_15 = or i16 %empty_14, %empty_13
  %empty_16 = zext i16 %1 to i32
  %empty_17 = zext i16 %empty_15 to i32
  %empty_18 = shl i32 %empty_16, 16
  %empty_19 = or i32 %empty_18, %empty_17
  %empty_20 = zext i32 %0 to i64
  %empty_21 = zext i32 %empty_19 to i64
  %empty_22 = shl i64 %empty_20, 32
  %empty_23 = or i64 %empty_22, %empty_21
  ret i64 %empty_23
}

!opencl.kernels = !{!0, !7, !13, !13, !7, !7, !19, !22, !25, !25, !25, !7, !28, !28, !7, !7, !7, !30, !30, !7, !7, !32, !35, !35, !41, !41, !41, !7, !7, !30, !30, !7, !43, !45, !47, !47, !49, !51, !7, !52, !52, !7, !7, !7, !7, !7, !52, !52, !54, !54, !54, !7, !56, !56, !7, !58, !58, !7, !7, !30, !30, !7, !60, !62, !62, !52, !52, !7, !7, !64, !64, !64, !7, !7, !7, !7, !7, !64, !64, !64, !66, !68, !71, !71, !77, !77, !77, !7, !30, !30, !7, !79, !81, !83, !83, !7, !7, !7, !7, !7, !7, !7, !85, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!88}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis_dest>", metadata !"ap_int<48>", metadata !"ap_int<48>", metadata !"hls::stream<ap_axis>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"packetIn", metadata !"eth_dst", metadata !"eth_src", metadata !"packetOut"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !14, metadata !15, metadata !20, metadata !17, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !14, metadata !15, metadata !23, metadata !17, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 16, struct ap_int_base<16, false, true> > &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !18, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!30 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !18, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!32 = metadata !{null, metadata !14, metadata !15, metadata !33, metadata !17, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false> &"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!35 = metadata !{null, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !6}
!36 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!37 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<16, false, true> &"}
!39 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!40 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!41 = metadata !{null, metadata !14, metadata !15, metadata !42, metadata !17, metadata !27, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<8, struct ap_int_base<8, false, true>, 8, struct ap_int_base<8, false, true> > &"}
!43 = metadata !{null, metadata !14, metadata !15, metadata !44, metadata !17, metadata !21, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!45 = metadata !{null, metadata !14, metadata !15, metadata !46, metadata !17, metadata !34, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false> &"}
!47 = metadata !{null, metadata !36, metadata !37, metadata !48, metadata !39, metadata !40, metadata !6}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<8, false, true> &", metadata !"struct ap_int_base<8, false, true> &"}
!49 = metadata !{null, metadata !14, metadata !15, metadata !50, metadata !17, metadata !21, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!51 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !21, metadata !6}
!52 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !53, metadata !6}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!54 = metadata !{null, metadata !14, metadata !15, metadata !55, metadata !17, metadata !27, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<32, struct ap_int_base<32, true, true>, 16, struct ap_int_base<16, true, true> > &"}
!56 = metadata !{null, metadata !14, metadata !15, metadata !57, metadata !17, metadata !18, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!58 = metadata !{null, metadata !14, metadata !15, metadata !59, metadata !17, metadata !18, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!60 = metadata !{null, metadata !14, metadata !15, metadata !61, metadata !17, metadata !34, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true> &"}
!62 = metadata !{null, metadata !36, metadata !37, metadata !63, metadata !39, metadata !40, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<32, true, true> &", metadata !"struct ap_int_base<16, true, true> &"}
!64 = metadata !{null, metadata !14, metadata !15, metadata !65, metadata !17, metadata !27, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<96, true> &"}
!66 = metadata !{null, metadata !14, metadata !15, metadata !67, metadata !17, metadata !21, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!68 = metadata !{null, metadata !36, metadata !37, metadata !69, metadata !39, metadata !70, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!70 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!71 = metadata !{null, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !6}
!72 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!73 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<96, true>*", metadata !"int", metadata !"int"}
!75 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!76 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!77 = metadata !{null, metadata !14, metadata !15, metadata !78, metadata !17, metadata !27, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 48, struct ap_int_base<48, true, true> > &"}
!79 = metadata !{null, metadata !14, metadata !15, metadata !80, metadata !17, metadata !21, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<96> &"}
!81 = metadata !{null, metadata !14, metadata !15, metadata !82, metadata !17, metadata !34, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, true> &"}
!83 = metadata !{null, metadata !36, metadata !37, metadata !84, metadata !39, metadata !40, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<48, true, true> &"}
!85 = metadata !{null, metadata !14, metadata !15, metadata !86, metadata !17, metadata !87, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_dest &"}
!87 = metadata !{metadata !"kernel_arg_name", metadata !""}
!88 = metadata !{metadata !89, [0 x i32]* @llvm_global_ctors_0}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"llvm.global_ctors.0", metadata !93, metadata !"", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 0, i32 1}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 63, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"packetIn.V.data.V", metadata !93, metadata !"int64", i32 0, i32 63}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 0, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"packetIn.V.last.V", metadata !93, metadata !"uint1", i32 0, i32 0}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 7, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"packetIn.V.dest.V", metadata !93, metadata !"uint8", i32 0, i32 7}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 7, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"packetIn.V.keep.V", metadata !93, metadata !"uint8", i32 0, i32 7}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 47, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"eth_dst.V", metadata !115, metadata !"int48", i32 0, i32 47}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 0, i32 0}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 47, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"eth_src.V", metadata !115, metadata !"int48", i32 0, i32 47}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 63, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"packetOut.V.data.V", metadata !93, metadata !"int64", i32 0, i32 63}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 0, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"packetOut.V.last.V", metadata !93, metadata !"uint1", i32 0, i32 0}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 7, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"packetOut.V.keep.V", metadata !93, metadata !"uint8", i32 0, i32 7}
