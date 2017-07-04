; ModuleID = '/home/tarafdar/thesis/gitStuff/hlsIP_8k5/packetFormatter_hardcode_64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@packetFormatter_hard = internal unnamed_addr constant [28 x i8] c"packetFormatter_hardcode_64\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

define void @packetFormatter_hardcode_64(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V, i48 %eth_dst_V, i48 %eth_src_V, i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetIn_V_data_V), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetIn_V_last_V), !map !103
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_dest_V), !map !107
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_keep_V), !map !111
  call void (...)* @_ssdm_op_SpecBitsMap(i48 %eth_dst_V), !map !115
  call void (...)* @_ssdm_op_SpecBitsMap(i48 %eth_src_V), !map !121
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetOut_V_data_V), !map !125
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetOut_V_last_V), !map !129
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetOut_V_keep_V), !map !133
  call void (...)* @_ssdm_op_SpecTopModule([28 x i8]* @packetFormatter_hard) nounwind
  %eth_src_V_read = call i48 @_ssdm_op_Read.ap_none.i48(i48 %eth_src_V)
  %eth_dst_V_read = call i48 @_ssdm_op_Read.ap_none.i48(i48 %eth_dst_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48 %eth_src_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48 %eth_dst_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %tmp = call i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48 %eth_src_V_read, i32 32, i32 47)
  %tmp_data_V_1 = call i64 @_ssdm_op_BitConcatenate.i64.i48.i16(i48 %eth_dst_V_read, i16 %tmp)
  %temp_V = trunc i48 %eth_src_V_read to i32
  %empty = call { i64, i1, i8, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V)
  %tmp_data_V = extractvalue { i64, i1, i8, i8 } %empty, 0
  %tmp_dest_V = extractvalue { i64, i1, i8, i8 } %empty, 2
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i24.i8(i32 %temp_V, i24 7602176, i8 %tmp_dest_V)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V_1, i1 undef, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %p_Result_s, i1 undef, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V, i1 false, i8 -1)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %0
  %empty_5 = call { i64, i1, i8, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i8* %packetIn_V_keep_V)
  %tmp_data_V_3 = extractvalue { i64, i1, i8, i8 } %empty_5, 0
  %tmp_last_V = extractvalue { i64, i1, i8, i8 } %empty_5, 1
  %tmp_keep_V = extractvalue { i64, i1, i8, i8 } %empty_5, 3
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V_3, i1 %tmp_last_V, i8 %tmp_keep_V)
  br i1 %tmp_last_V, label %1, label %._crit_edge

; <label>:1                                       ; preds = %._crit_edge
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

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i24.i8(i32, i24, i8) nounwind readnone {
entry:
  %empty = zext i24 %1 to i32
  %empty_13 = zext i8 %2 to i32
  %empty_14 = shl i32 %empty, 8
  %empty_15 = or i32 %empty_14, %empty_13
  %empty_16 = zext i32 %0 to i64
  %empty_17 = zext i32 %empty_15 to i64
  %empty_18 = shl i64 %empty_16, 32
  %empty_19 = or i64 %empty_18, %empty_17
  ret i64 %empty_19
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !19, !25, !28, !28, !19, !19, !30, !32, !32, !34, !37, !37, !37, !19, !40, !40, !19, !19, !19, !13, !13, !19, !19, !42, !45, !45, !32, !32, !19, !19, !48, !48, !48, !19, !19, !13, !13, !19, !50, !52, !54, !54, !56, !58, !19, !32, !32, !19, !19, !19, !19, !19, !59, !59, !59, !19, !61, !61, !19, !62, !62, !19, !19, !13, !13, !19, !64, !66, !66, !32, !32, !19, !19, !68, !68, !68, !19, !19, !19, !19, !68, !68, !68, !70, !72, !75, !75, !81, !81, !81, !19, !13, !13, !19, !83, !85, !87, !87, !19, !19, !19, !19, !19, !19, !19, !89, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!92}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis_dest>", metadata !"ap_int<48>", metadata !"ap_int<48>", metadata !"hls::stream<ap_axis>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"packetIn", metadata !"eth_dst", metadata !"eth_src", metadata !"packetOut"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, true> &", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space"}
!21 = metadata !{metadata !"kernel_arg_access_qual"}
!22 = metadata !{metadata !"kernel_arg_type"}
!23 = metadata !{metadata !"kernel_arg_type_qual"}
!24 = metadata !{metadata !"kernel_arg_name"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !18, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!30 = metadata !{null, metadata !14, metadata !15, metadata !31, metadata !17, metadata !27, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!32 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !33, metadata !6}
!33 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!34 = metadata !{null, metadata !14, metadata !15, metadata !35, metadata !17, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!37 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 16, struct ap_int_base<16, false, true> > &"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!40 = metadata !{null, metadata !14, metadata !15, metadata !41, metadata !17, metadata !18, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!42 = metadata !{null, metadata !14, metadata !15, metadata !43, metadata !17, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<16, false, true> &"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!48 = metadata !{null, metadata !14, metadata !15, metadata !49, metadata !17, metadata !39, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<8, struct ap_int_base<8, false, true>, 8, struct ap_int_base<8, false, true> > &"}
!50 = metadata !{null, metadata !14, metadata !15, metadata !51, metadata !17, metadata !27, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!52 = metadata !{null, metadata !14, metadata !15, metadata !53, metadata !17, metadata !44, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<8, false> &"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !47, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<8, false, true> &", metadata !"struct ap_int_base<8, false, true> &"}
!56 = metadata !{null, metadata !14, metadata !15, metadata !57, metadata !17, metadata !27, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!58 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !27, metadata !6}
!59 = metadata !{null, metadata !14, metadata !15, metadata !60, metadata !17, metadata !39, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<32, struct ap_int_base<32, true, true>, 16, struct ap_int_base<16, true, true> > &"}
!61 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !18, metadata !6}
!62 = metadata !{null, metadata !14, metadata !15, metadata !63, metadata !17, metadata !18, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!64 = metadata !{null, metadata !14, metadata !15, metadata !65, metadata !17, metadata !44, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true> &"}
!66 = metadata !{null, metadata !8, metadata !9, metadata !67, metadata !11, metadata !47, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<32, true, true> &", metadata !"struct ap_int_base<16, true, true> &"}
!68 = metadata !{null, metadata !14, metadata !15, metadata !69, metadata !17, metadata !39, metadata !6}
!69 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<96, true> &"}
!70 = metadata !{null, metadata !14, metadata !15, metadata !71, metadata !17, metadata !27, metadata !6}
!71 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!72 = metadata !{null, metadata !8, metadata !9, metadata !73, metadata !11, metadata !74, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!74 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!75 = metadata !{null, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !6}
!76 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!77 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<96, true>*", metadata !"int", metadata !"int"}
!79 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!80 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!81 = metadata !{null, metadata !14, metadata !15, metadata !82, metadata !17, metadata !39, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 48, struct ap_int_base<48, true, true> > &"}
!83 = metadata !{null, metadata !14, metadata !15, metadata !84, metadata !17, metadata !27, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<96> &"}
!85 = metadata !{null, metadata !14, metadata !15, metadata !86, metadata !17, metadata !44, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, true> &"}
!87 = metadata !{null, metadata !8, metadata !9, metadata !88, metadata !11, metadata !47, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<48, true, true> &"}
!89 = metadata !{null, metadata !14, metadata !15, metadata !90, metadata !17, metadata !91, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_dest &"}
!91 = metadata !{metadata !"kernel_arg_name", metadata !""}
!92 = metadata !{metadata !93, [1 x i32]* @llvm_global_ctors_0}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"llvm.global_ctors.0", metadata !97, metadata !"", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 0, i32 1}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 63, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"packetIn.V.data.V", metadata !97, metadata !"int64", i32 0, i32 63}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 0, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"packetIn.V.last.V", metadata !97, metadata !"uint1", i32 0, i32 0}
!107 = metadata !{metadata !108}
!108 = metadata !{i32 0, i32 7, metadata !109}
!109 = metadata !{metadata !110}
!110 = metadata !{metadata !"packetIn.V.dest.V", metadata !97, metadata !"uint8", i32 0, i32 7}
!111 = metadata !{metadata !112}
!112 = metadata !{i32 0, i32 7, metadata !113}
!113 = metadata !{metadata !114}
!114 = metadata !{metadata !"packetIn.V.keep.V", metadata !97, metadata !"uint8", i32 0, i32 7}
!115 = metadata !{metadata !116}
!116 = metadata !{i32 0, i32 47, metadata !117}
!117 = metadata !{metadata !118}
!118 = metadata !{metadata !"eth_dst.V", metadata !119, metadata !"int48", i32 0, i32 47}
!119 = metadata !{metadata !120}
!120 = metadata !{i32 0, i32 0, i32 0}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 47, metadata !123}
!123 = metadata !{metadata !124}
!124 = metadata !{metadata !"eth_src.V", metadata !119, metadata !"int48", i32 0, i32 47}
!125 = metadata !{metadata !126}
!126 = metadata !{i32 0, i32 63, metadata !127}
!127 = metadata !{metadata !128}
!128 = metadata !{metadata !"packetOut.V.data.V", metadata !97, metadata !"int64", i32 0, i32 63}
!129 = metadata !{metadata !130}
!130 = metadata !{i32 0, i32 0, metadata !131}
!131 = metadata !{metadata !132}
!132 = metadata !{metadata !"packetOut.V.last.V", metadata !97, metadata !"uint1", i32 0, i32 0}
!133 = metadata !{metadata !134}
!134 = metadata !{i32 0, i32 7, metadata !135}
!135 = metadata !{metadata !136}
!136 = metadata !{metadata !"packetOut.V.keep.V", metadata !97, metadata !"uint8", i32 0, i32 7}
