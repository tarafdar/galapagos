; ModuleID = '/home/tarafdar/thesis/gitStuff/hlsIP_8k5/fireWall64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@fireWall64_str = internal unnamed_addr constant [11 x i8] c"fireWall64\00"
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @fireWall64(i48* %eth_address_V, i64* %stream_in_V_data_V, i1* %stream_in_V_last_V, i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, i48* %observedAddress_out_V, i16* %dest_out_V, i1* %match_out_V) {
  %p_Val2_s = alloca i64
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %eth_address_V), !map !124
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_in_V_data_V), !map !128
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_in_V_last_V), !map !132
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_out_V_data_V), !map !136
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_out_V_dest_V), !map !140
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_out_V_last_V), !map !144
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %observedAddress_out_V), !map !148
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %dest_out_V), !map !152
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %match_out_V), !map !156
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @fireWall64_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i48* %eth_address_V, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  br label %2

; <label>:2                                       ; preds = %3, %1
  %i = phi i2 [ 0, %1 ], [ %i_1, %3 ]
  %exitcond = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2)
  %i_1 = add i2 %i, 1
  br i1 %exitcond, label %.critedge, label %3

; <label>:3                                       ; preds = %2
  %p_Val2_load_1 = load i64* %p_Val2_s
  %empty_5 = call { i64, i1 } @_ssdm_op_Read.axis.volatile.i64P.i1P(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V)
  %tmp_data_V_1 = extractvalue { i64, i1 } %empty_5, 0
  %tmp_6 = trunc i2 %i to i1
  %p_Val2_1 = select i1 %tmp_6, i64 %p_Val2_load_1, i64 %tmp_data_V_1
  store i64 %p_Val2_1, i64* %p_Val2_s
  br label %2

.critedge:                                        ; preds = %2
  %p_Val2_load = load i64* %p_Val2_s
  %tmp_2 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %p_Val2_load, i32 40, i32 47)
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %p_Val2_load, i32 32, i32 39)
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %p_Val2_load, i32 56, i32 63)
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %p_Val2_load, i32 48, i32 55)
  %observedAddress_V = call i48 @_ssdm_op_BitConcatenate.i48.i8.i8.i8.i8.i16(i8 %tmp_3, i8 %tmp_2, i8 %tmp_5, i8 %tmp_4, i16 0)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %eth_address_V_read = call i48 @_ssdm_op_Read.ap_none.i48P(i48* %eth_address_V)
  %tmp = icmp eq i48 %observedAddress_V, %eth_address_V_read
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %match_out_V, i1 %tmp)
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %dest_out_V, i16 0)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %.critedge
  %empty_6 = call { i64, i1 } @_ssdm_op_Read.axis.volatile.i64P.i1P(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V)
  %tmp_data_V_2 = extractvalue { i64, i1 } %empty_6, 0
  %tmp_last_V = extractvalue { i64, i1 } %empty_6, 1
  %tmp_14 = trunc i64 %tmp_data_V_2 to i8
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 56, i32 63)
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 8, i32 15)
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 24, i32 31)
  %tmp_s = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 40, i32 47)
  %tmp_10 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 16, i32 23)
  %tmp_11 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 32, i32 39)
  %tmp_12 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 48, i32 55)
  %x_V = call i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_14, i8 %tmp_8, i8 %tmp_10, i8 %tmp_9, i8 %tmp_11, i8 %tmp_s, i8 %tmp_12, i8 %tmp_7)
  call void @_ssdm_op_Write.axis.volatile.i64P.i8P.i1P(i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, i64 %x_V, i8 0, i1 %tmp_last_V)
  br i1 %tmp_last_V, label %4, label %._crit_edge

; <label>:4                                       ; preds = %._crit_edge
  %empty_7 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_1)
  br label %1
}

define weak void @_ssdm_op_Write.axis.volatile.i64P.i8P.i1P(i64*, i8*, i1*, i64, i8, i1) {
entry:
  store i64 %3, i64* %0
  store i8 %4, i8* %1
  store i1 %5, i1* %2
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i16P(i16*, i16) {
entry:
  store i16 %1, i16* %0
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

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak { i64, i1 } @_ssdm_op_Read.axis.volatile.i64P.i1P(i64*, i1*) {
entry:
  %empty = load i64* %0
  %empty_8 = load i1* %1
  %mrv_0 = insertvalue { i64, i1 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i1 } %mrv_0, i1 %empty_8, 1
  ret { i64, i1 } %mrv1
}

define weak i48 @_ssdm_op_Read.ap_none.i48P(i48*) {
entry:
  %empty = load i48* %0
  ret i48 %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_9 = trunc i64 %empty to i8
  ret i8 %empty_9
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %6 to i16
  %empty_10 = zext i8 %7 to i16
  %empty_11 = shl i16 %empty, 8
  %empty_12 = or i16 %empty_11, %empty_10
  %empty_13 = zext i8 %5 to i24
  %empty_14 = zext i16 %empty_12 to i24
  %empty_15 = shl i24 %empty_13, 16
  %empty_16 = or i24 %empty_15, %empty_14
  %empty_17 = zext i8 %4 to i32
  %empty_18 = zext i24 %empty_16 to i32
  %empty_19 = shl i32 %empty_17, 24
  %empty_20 = or i32 %empty_19, %empty_18
  %empty_21 = zext i8 %3 to i40
  %empty_22 = zext i32 %empty_20 to i40
  %empty_23 = shl i40 %empty_21, 32
  %empty_24 = or i40 %empty_23, %empty_22
  %empty_25 = zext i8 %2 to i48
  %empty_26 = zext i40 %empty_24 to i48
  %empty_27 = shl i48 %empty_25, 40
  %empty_28 = or i48 %empty_27, %empty_26
  %empty_29 = zext i8 %1 to i56
  %empty_30 = zext i48 %empty_28 to i56
  %empty_31 = shl i56 %empty_29, 48
  %empty_32 = or i56 %empty_31, %empty_30
  %empty_33 = zext i8 %0 to i64
  %empty_34 = zext i56 %empty_32 to i64
  %empty_35 = shl i64 %empty_33, 56
  %empty_36 = or i64 %empty_35, %empty_34
  ret i64 %empty_36
}

define weak i48 @_ssdm_op_BitConcatenate.i48.i8.i8.i8.i8.i16(i8, i8, i8, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %3 to i24
  %empty_37 = zext i16 %4 to i24
  %empty_38 = shl i24 %empty, 16
  %empty_39 = or i24 %empty_38, %empty_37
  %empty_40 = zext i8 %2 to i32
  %empty_41 = zext i24 %empty_39 to i32
  %empty_42 = shl i32 %empty_40, 24
  %empty_43 = or i32 %empty_42, %empty_41
  %empty_44 = zext i8 %1 to i40
  %empty_45 = zext i32 %empty_43 to i40
  %empty_46 = shl i40 %empty_44, 32
  %empty_47 = or i40 %empty_46, %empty_45
  %empty_48 = zext i8 %0 to i48
  %empty_49 = zext i40 %empty_47 to i48
  %empty_50 = shl i48 %empty_48, 40
  %empty_51 = or i48 %empty_50, %empty_49
  ret i48 %empty_51
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !10, !16, !19, !19, !22, !22, !28, !28, !22, !22, !30, !22, !33, !33, !22, !22, !35, !36, !36, !39, !41, !33, !33, !22, !22, !43, !45, !45, !45, !22, !22, !22, !22, !22, !48, !54, !54, !60, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !61, !64, !64, !66, !22, !69, !69, !71, !72, !22, !22, !22, !74, !74, !76, !78, !80, !80, !82, !84, !84, !86, !88, !90, !90, !22, !92, !94, !94, !96, !96, !22, !22, !98, !22, !22, !22, !100, !100, !102, !104, !106, !94, !94, !108, !22, !110, !108, !112, !113, !113, !110, !114, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!117}

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
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 1, i32 1, i32 1}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<48>*", metadata !"hls::stream<ap_axis_in>", metadata !"hls::stream<ap_axis_out>", metadata !"ap_uint<48>*", metadata !"ap_uint<16>*", metadata !"ap_int<1>*"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"eth_address", metadata !"stream_in", metadata !"stream_out", metadata !"observedAddress_out", metadata !"dest_out", metadata !"match_out"}
!16 = metadata !{null, metadata !1, metadata !2, metadata !17, metadata !4, metadata !18, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_out &"}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!19 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space"}
!24 = metadata !{metadata !"kernel_arg_access_qual"}
!25 = metadata !{metadata !"kernel_arg_type"}
!26 = metadata !{metadata !"kernel_arg_type_qual"}
!27 = metadata !{metadata !"kernel_arg_name"}
!28 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !21, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!30 = metadata !{null, metadata !1, metadata !2, metadata !31, metadata !4, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!33 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !21, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!35 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !32, metadata !6}
!36 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !38, metadata !6}
!37 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!38 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!39 = metadata !{null, metadata !1, metadata !2, metadata !40, metadata !4, metadata !32, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!41 = metadata !{null, metadata !1, metadata !2, metadata !42, metadata !4, metadata !32, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!43 = metadata !{null, metadata !1, metadata !2, metadata !44, metadata !4, metadata !32, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<48> &"}
!45 = metadata !{null, metadata !1, metadata !2, metadata !46, metadata !4, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!48 = metadata !{null, metadata !49, metadata !50, metadata !51, metadata !52, metadata !53, metadata !6}
!49 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!50 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!52 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!53 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!54 = metadata !{null, metadata !55, metadata !56, metadata !57, metadata !58, metadata !59, metadata !6}
!55 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!56 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int", metadata !"int"}
!58 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!60 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !32, metadata !6}
!61 = metadata !{null, metadata !49, metadata !50, metadata !62, metadata !52, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"long"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!64 = metadata !{null, metadata !1, metadata !2, metadata !65, metadata !4, metadata !21, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!66 = metadata !{null, metadata !49, metadata !50, metadata !67, metadata !52, metadata !68, metadata !6}
!67 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, true> &"}
!68 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!69 = metadata !{null, metadata !1, metadata !2, metadata !70, metadata !4, metadata !21, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!71 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !32, metadata !6}
!72 = metadata !{null, metadata !49, metadata !50, metadata !73, metadata !52, metadata !68, metadata !6}
!73 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<65, true> &"}
!74 = metadata !{null, metadata !1, metadata !2, metadata !75, metadata !4, metadata !21, metadata !6}
!75 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!76 = metadata !{null, metadata !49, metadata !50, metadata !77, metadata !52, metadata !68, metadata !6}
!77 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!78 = metadata !{null, metadata !49, metadata !50, metadata !79, metadata !52, metadata !63, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"ulong"}
!80 = metadata !{null, metadata !1, metadata !2, metadata !81, metadata !4, metadata !21, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!82 = metadata !{null, metadata !49, metadata !50, metadata !83, metadata !52, metadata !68, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, false> &"}
!84 = metadata !{null, metadata !1, metadata !2, metadata !85, metadata !4, metadata !21, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!86 = metadata !{null, metadata !49, metadata !50, metadata !87, metadata !52, metadata !68, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!88 = metadata !{null, metadata !49, metadata !50, metadata !89, metadata !52, metadata !63, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!90 = metadata !{null, metadata !1, metadata !2, metadata !91, metadata !4, metadata !21, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!92 = metadata !{null, metadata !49, metadata !50, metadata !93, metadata !52, metadata !68, metadata !6}
!93 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!94 = metadata !{null, metadata !1, metadata !2, metadata !95, metadata !4, metadata !21, metadata !6}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!96 = metadata !{null, metadata !1, metadata !2, metadata !97, metadata !4, metadata !21, metadata !6}
!97 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!98 = metadata !{null, metadata !49, metadata !50, metadata !99, metadata !52, metadata !68, metadata !6}
!99 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<33, true> &"}
!100 = metadata !{null, metadata !1, metadata !2, metadata !101, metadata !4, metadata !21, metadata !6}
!101 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!102 = metadata !{null, metadata !49, metadata !50, metadata !103, metadata !52, metadata !68, metadata !6}
!103 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!104 = metadata !{null, metadata !49, metadata !50, metadata !105, metadata !52, metadata !63, metadata !6}
!105 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"uint"}
!106 = metadata !{null, metadata !49, metadata !50, metadata !107, metadata !52, metadata !68, metadata !6}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, false> &"}
!108 = metadata !{null, metadata !49, metadata !50, metadata !109, metadata !52, metadata !68, metadata !6}
!109 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!110 = metadata !{null, metadata !49, metadata !50, metadata !111, metadata !52, metadata !68, metadata !6}
!111 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!112 = metadata !{null, metadata !49, metadata !50, metadata !109, metadata !52, metadata !63, metadata !6}
!113 = metadata !{null, metadata !1, metadata !2, metadata !37, metadata !4, metadata !21, metadata !6}
!114 = metadata !{null, metadata !1, metadata !2, metadata !115, metadata !4, metadata !116, metadata !6}
!115 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_in &"}
!116 = metadata !{metadata !"kernel_arg_name", metadata !""}
!117 = metadata !{metadata !118, [1 x i32]* @llvm_global_ctors_0}
!118 = metadata !{metadata !119}
!119 = metadata !{i32 0, i32 31, metadata !120}
!120 = metadata !{metadata !121}
!121 = metadata !{metadata !"llvm.global_ctors.0", metadata !122, metadata !"", i32 0, i32 31}
!122 = metadata !{metadata !123}
!123 = metadata !{i32 0, i32 0, i32 1}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 47, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"eth_address.V", metadata !122, metadata !"uint48", i32 0, i32 47}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 63, metadata !130}
!130 = metadata !{metadata !131}
!131 = metadata !{metadata !"stream_in.V.data.V", metadata !122, metadata !"int64", i32 0, i32 63}
!132 = metadata !{metadata !133}
!133 = metadata !{i32 0, i32 0, metadata !134}
!134 = metadata !{metadata !135}
!135 = metadata !{metadata !"stream_in.V.last.V", metadata !122, metadata !"uint1", i32 0, i32 0}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 63, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"stream_out.V.data.V", metadata !122, metadata !"int64", i32 0, i32 63}
!140 = metadata !{metadata !141}
!141 = metadata !{i32 0, i32 7, metadata !142}
!142 = metadata !{metadata !143}
!143 = metadata !{metadata !"stream_out.V.dest.V", metadata !122, metadata !"uint8", i32 0, i32 7}
!144 = metadata !{metadata !145}
!145 = metadata !{i32 0, i32 0, metadata !146}
!146 = metadata !{metadata !147}
!147 = metadata !{metadata !"stream_out.V.last.V", metadata !122, metadata !"uint1", i32 0, i32 0}
!148 = metadata !{metadata !149}
!149 = metadata !{i32 0, i32 47, metadata !150}
!150 = metadata !{metadata !151}
!151 = metadata !{metadata !"observedAddress_out.V", metadata !122, metadata !"uint48", i32 0, i32 47}
!152 = metadata !{metadata !153}
!153 = metadata !{i32 0, i32 15, metadata !154}
!154 = metadata !{metadata !155}
!155 = metadata !{metadata !"dest_out.V", metadata !122, metadata !"uint16", i32 0, i32 15}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 0, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"match_out.V", metadata !122, metadata !"int1", i32 0, i32 0}
