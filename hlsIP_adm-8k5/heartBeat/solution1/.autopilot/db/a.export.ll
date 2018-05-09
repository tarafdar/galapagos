; ModuleID = '/nfs/ug/thesis/thesis0/pc/Graham/galapagos/hlsIP_adm-8k5/heartBeat/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@heartBeat_str = internal unnamed_addr constant [10 x i8] c"heartBeat\00"
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i48 @llvm.part.select.i48(i48, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @heartBeat(i48 %eth_address_V, i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_keep_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i48 %eth_address_V), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_out_V_data_V), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_out_V_last_V), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_out_V_keep_V), !map !98
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @heartBeat_str) nounwind
  %eth_address_V_read = call i48 @_ssdm_op_Read.ap_none.i48(i48 %eth_address_V)
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_keep_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48 %eth_address_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %tmp = call i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48 %eth_address_V_read, i32 32, i32 47)
  %packetHeader0_data_V = call i64 @_ssdm_op_BitConcatenate.i64.i48.i16(i48 -1, i16 %tmp)
  %temp_V = trunc i48 %eth_address_V_read to i32
  %p_Result_s = call i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32 %temp_V, i32 1946157056)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_keep_V, i64 %packetHeader0_data_V, i1 undef, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_keep_V, i64 %p_Result_s, i1 undef, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_keep_V, i64 -1, i1 false, i8 -1)
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %stream_out_V_data_V, i1* %stream_out_V_last_V, i8* %stream_out_V_keep_V, i64 -1, i1 true, i8 -1)
  br label %1

; <label>:1                                       ; preds = %1, %0
  br label %1
}

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

define weak i48 @_ssdm_op_Read.ap_none.i48(i48) {
entry:
  ret i48 %0
}

declare i32 @_ssdm_op_PartSelect.i32.i48.i32.i32(i48, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i48.i32.i32(i48, i32, i32) nounwind readnone {
entry:
  %empty = call i48 @llvm.part.select.i48(i48 %0, i32 %1, i32 %2)
  %empty_5 = trunc i48 %empty to i16
  ret i16 %empty_5
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i48.i16(i48, i16) nounwind readnone {
entry:
  %empty = zext i48 %0 to i64
  %empty_6 = zext i16 %1 to i64
  %empty_7 = shl i64 %empty, 16
  %empty_8 = or i64 %empty_7, %empty_6
  ret i64 %empty_8
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = zext i32 %0 to i64
  %empty_9 = zext i32 %1 to i64
  %empty_10 = shl i64 %empty, 32
  %empty_11 = or i64 %empty_10, %empty_9
  ret i64 %empty_11
}

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !22, !22, !13, !13, !24, !7, !7, !13, !13, !27, !29, !29, !29, !13, !32, !32, !13, !13, !13, !35, !35, !13, !36, !39, !39, !7, !7, !13, !13, !42, !42, !42, !13, !44, !44, !13, !46, !46, !13, !13, !35, !35, !13, !48, !50, !50, !7, !7, !13, !13, !52, !52, !52, !13, !13, !13, !13, !13, !52, !52, !52, !54, !56, !59, !59, !65, !65, !65, !13, !35, !35, !13, !67, !69, !71, !71, !13, !13, !13, !13, !13, !13, !13, !73, !73, !13, !75, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!77}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int<48>", metadata !"hls::stream<ap_axis>"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"eth_address", metadata !"stream_out"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !12, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !26, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!26 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !21, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !31, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 16, struct ap_int_base<16, false, true> > &"}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !34, metadata !6}
!36 = metadata !{null, metadata !8, metadata !9, metadata !37, metadata !11, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, false> &"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"a2"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !41, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<16, false, true> &"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"bv1", metadata !"bv2"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !31, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<32, struct ap_int_base<32, true, true>, 16, struct ap_int_base<16, true, true> > &"}
!44 = metadata !{null, metadata !8, metadata !9, metadata !45, metadata !11, metadata !34, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !47, metadata !11, metadata !34, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, true> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !38, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<16, true> &"}
!50 = metadata !{null, metadata !1, metadata !2, metadata !51, metadata !4, metadata !41, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<32, true, true> &", metadata !"struct ap_int_base<16, true, true> &"}
!52 = metadata !{null, metadata !8, metadata !9, metadata !53, metadata !11, metadata !31, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<96, true> &"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !21, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!56 = metadata !{null, metadata !1, metadata !2, metadata !57, metadata !4, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!59 = metadata !{null, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !6}
!60 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!61 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<96, true>*", metadata !"int", metadata !"int"}
!63 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!64 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!65 = metadata !{null, metadata !8, metadata !9, metadata !66, metadata !11, metadata !31, metadata !6}
!66 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_concat_ref<48, struct ap_int_base<48, true, true>, 48, struct ap_int_base<48, true, true> > &"}
!67 = metadata !{null, metadata !8, metadata !9, metadata !68, metadata !11, metadata !21, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<96> &"}
!69 = metadata !{null, metadata !8, metadata !9, metadata !70, metadata !11, metadata !38, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<48, true> &"}
!71 = metadata !{null, metadata !1, metadata !2, metadata !72, metadata !4, metadata !41, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"struct ap_int_base<48, true, true> &", metadata !"struct ap_int_base<48, true, true> &"}
!73 = metadata !{null, metadata !8, metadata !9, metadata !74, metadata !11, metadata !12, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!75 = metadata !{null, metadata !8, metadata !9, metadata !76, metadata !11, metadata !21, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<48> &"}
!77 = metadata !{metadata !78, [0 x i32]* @llvm_global_ctors_0}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 31, metadata !80}
!80 = metadata !{metadata !81}
!81 = metadata !{metadata !"llvm.global_ctors.0", metadata !82, metadata !"", i32 0, i32 31}
!82 = metadata !{metadata !83}
!83 = metadata !{i32 0, i32 0, i32 1}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 47, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"eth_address.V", metadata !88, metadata !"int48", i32 0, i32 47}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 0, i32 0}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 63, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"stream_out.V.data.V", metadata !82, metadata !"int64", i32 0, i32 63}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 0, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"stream_out.V.last.V", metadata !82, metadata !"uint1", i32 0, i32 0}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 7, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"stream_out.V.keep.V", metadata !82, metadata !"uint8", i32 0, i32 7}
