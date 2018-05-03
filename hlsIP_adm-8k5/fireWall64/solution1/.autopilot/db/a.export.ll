; ModuleID = '/nfs/ug/thesis/thesis0/pc/Quinn/galapagos/hlsIP_adm-8k5/fireWall64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
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
  %p_Val2_1 = alloca i64
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %eth_address_V), !map !123
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_in_V_data_V), !map !127
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_in_V_last_V), !map !131
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_out_V_data_V), !map !135
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_out_V_dest_V), !map !139
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_out_V_last_V), !map !143
  call void (...)* @_ssdm_op_SpecBitsMap(i48* %observedAddress_out_V), !map !147
  call void (...)* @_ssdm_op_SpecBitsMap(i16* %dest_out_V), !map !151
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %match_out_V), !map !155
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
  %p_Val2_1_load_1 = load i64* %p_Val2_1
  %empty_5 = call { i64, i1 } @_ssdm_op_Read.axis.volatile.i64P.i1P(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V)
  %tmp_data_V_1 = extractvalue { i64, i1 } %empty_5, 0
  %tmp_2 = trunc i2 %i to i1
  %header_1_V_1 = select i1 %tmp_2, i64 %tmp_data_V_1, i64 %p_Val2_1_load_1
  %p_Val2_2 = select i1 %tmp_2, i64 %p_Val2_load_1, i64 %tmp_data_V_1
  store i64 %header_1_V_1, i64* %p_Val2_1
  store i64 %p_Val2_2, i64* %p_Val2_s
  br label %2

.critedge:                                        ; preds = %2
  %p_Val2_load = load i64* %p_Val2_s
  %p_Val2_1_load = load i64* %p_Val2_1
  %observedAddress_V = call i48 @_ssdm_op_PartSelect.i48.i64.i32.i32(i64 %p_Val2_load, i32 16, i32 63)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  %eth_address_V_read = call i48 @_ssdm_op_Read.ap_none.i48P(i48* %eth_address_V)
  %tmp = icmp eq i48 %observedAddress_V, %eth_address_V_read
  call void @_ssdm_op_Write.ap_auto.i1P(i1* %match_out_V, i1 %tmp)
  %packetOut_dest_V = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %p_Val2_1_load, i32 8, i32 15)
  %dest_V = zext i8 %packetOut_dest_V to i16
  call void @_ssdm_op_Write.ap_auto.i16P(i16* %dest_out_V, i16 %dest_V)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %.critedge
  %empty_6 = call { i64, i1 } @_ssdm_op_Read.axis.volatile.i64P.i1P(i64* %stream_in_V_data_V, i1* %stream_in_V_last_V)
  %tmp_data_V_2 = extractvalue { i64, i1 } %empty_6, 0
  %tmp_last_V = extractvalue { i64, i1 } %empty_6, 1
  %tmp_10 = trunc i64 %tmp_data_V_2 to i8
  %tmp_3 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 56, i32 63)
  %tmp_4 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 8, i32 15)
  %tmp_5 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 24, i32 31)
  %tmp_6 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 40, i32 47)
  %tmp_7 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 16, i32 23)
  %tmp_8 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 32, i32 39)
  %tmp_9 = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 48, i32 55)
  %x_V = call i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8 %tmp_10, i8 %tmp_4, i8 %tmp_7, i8 %tmp_5, i8 %tmp_8, i8 %tmp_6, i8 %tmp_9, i8 %tmp_3)
  call void @_ssdm_op_Write.axis.volatile.i64P.i8P.i1P(i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, i64 %x_V, i8 %packetOut_dest_V, i1 %tmp_last_V)
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

define weak i48 @_ssdm_op_PartSelect.i48.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_10 = trunc i64 %empty to i48
  ret i48 %empty_10
}

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i8.i8.i8.i8.i8.i8.i8(i8, i8, i8, i8, i8, i8, i8, i8) nounwind readnone {
entry:
  %empty = zext i8 %6 to i16
  %empty_11 = zext i8 %7 to i16
  %empty_12 = shl i16 %empty, 8
  %empty_13 = or i16 %empty_12, %empty_11
  %empty_14 = zext i8 %5 to i24
  %empty_15 = zext i16 %empty_13 to i24
  %empty_16 = shl i24 %empty_14, 16
  %empty_17 = or i24 %empty_16, %empty_15
  %empty_18 = zext i8 %4 to i32
  %empty_19 = zext i24 %empty_17 to i32
  %empty_20 = shl i32 %empty_18, 24
  %empty_21 = or i32 %empty_20, %empty_19
  %empty_22 = zext i8 %3 to i40
  %empty_23 = zext i32 %empty_21 to i40
  %empty_24 = shl i40 %empty_22, 32
  %empty_25 = or i40 %empty_24, %empty_23
  %empty_26 = zext i8 %2 to i48
  %empty_27 = zext i40 %empty_25 to i48
  %empty_28 = shl i48 %empty_26, 40
  %empty_29 = or i48 %empty_28, %empty_27
  %empty_30 = zext i8 %1 to i56
  %empty_31 = zext i48 %empty_29 to i56
  %empty_32 = shl i56 %empty_30, 48
  %empty_33 = or i56 %empty_32, %empty_31
  %empty_34 = zext i8 %0 to i64
  %empty_35 = zext i56 %empty_33 to i64
  %empty_36 = shl i64 %empty_34, 56
  %empty_37 = or i64 %empty_36, %empty_35
  ret i64 %empty_37
}

!opencl.kernels = !{!0, !7, !10, !16, !19, !19, !22, !22, !28, !28, !22, !22, !30, !22, !33, !33, !33, !22, !22, !22, !22, !22, !36, !37, !37, !40, !42, !33, !33, !33, !22, !44, !46, !52, !52, !58, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !59, !62, !62, !64, !22, !67, !67, !69, !71, !22, !22, !22, !73, !73, !75, !77, !79, !79, !81, !83, !83, !85, !87, !89, !89, !22, !91, !93, !93, !95, !95, !22, !22, !97, !22, !22, !22, !99, !99, !101, !103, !105, !93, !93, !107, !22, !109, !107, !111, !112, !112, !109, !113, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!116}

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
!33 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, true> &"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!36 = metadata !{null, metadata !1, metadata !2, metadata !29, metadata !4, metadata !32, metadata !6}
!37 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!40 = metadata !{null, metadata !1, metadata !2, metadata !41, metadata !4, metadata !32, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!42 = metadata !{null, metadata !1, metadata !2, metadata !43, metadata !4, metadata !32, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, false> &"}
!44 = metadata !{null, metadata !1, metadata !2, metadata !45, metadata !4, metadata !32, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<48> &"}
!46 = metadata !{null, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51, metadata !6}
!47 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!48 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!50 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!52 = metadata !{null, metadata !53, metadata !54, metadata !55, metadata !56, metadata !57, metadata !6}
!53 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!54 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, true>*", metadata !"int", metadata !"int"}
!56 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!57 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!58 = metadata !{null, metadata !1, metadata !2, metadata !20, metadata !4, metadata !32, metadata !6}
!59 = metadata !{null, metadata !47, metadata !48, metadata !60, metadata !50, metadata !61, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"long"}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!62 = metadata !{null, metadata !1, metadata !2, metadata !63, metadata !4, metadata !21, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"long"}
!64 = metadata !{null, metadata !47, metadata !48, metadata !65, metadata !50, metadata !66, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, true> &"}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!67 = metadata !{null, metadata !1, metadata !2, metadata !68, metadata !4, metadata !21, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!69 = metadata !{null, metadata !1, metadata !2, metadata !70, metadata !4, metadata !32, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!71 = metadata !{null, metadata !47, metadata !48, metadata !72, metadata !50, metadata !66, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<65, true> &"}
!73 = metadata !{null, metadata !1, metadata !2, metadata !74, metadata !4, metadata !21, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!75 = metadata !{null, metadata !47, metadata !48, metadata !76, metadata !50, metadata !66, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!77 = metadata !{null, metadata !47, metadata !48, metadata !78, metadata !50, metadata !61, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"ulong"}
!79 = metadata !{null, metadata !1, metadata !2, metadata !80, metadata !4, metadata !21, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!81 = metadata !{null, metadata !47, metadata !48, metadata !82, metadata !50, metadata !66, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<64, false> &"}
!83 = metadata !{null, metadata !1, metadata !2, metadata !84, metadata !4, metadata !21, metadata !6}
!84 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &"}
!85 = metadata !{null, metadata !47, metadata !48, metadata !86, metadata !50, metadata !66, metadata !6}
!86 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!87 = metadata !{null, metadata !47, metadata !48, metadata !88, metadata !50, metadata !61, metadata !6}
!88 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!89 = metadata !{null, metadata !1, metadata !2, metadata !90, metadata !4, metadata !21, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!91 = metadata !{null, metadata !47, metadata !48, metadata !92, metadata !50, metadata !66, metadata !6}
!92 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!93 = metadata !{null, metadata !1, metadata !2, metadata !94, metadata !4, metadata !21, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!95 = metadata !{null, metadata !1, metadata !2, metadata !96, metadata !4, metadata !21, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!97 = metadata !{null, metadata !47, metadata !48, metadata !98, metadata !50, metadata !66, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<33, true> &"}
!99 = metadata !{null, metadata !1, metadata !2, metadata !100, metadata !4, metadata !21, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!101 = metadata !{null, metadata !47, metadata !48, metadata !102, metadata !50, metadata !66, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &", metadata !"int"}
!103 = metadata !{null, metadata !47, metadata !48, metadata !104, metadata !50, metadata !61, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"uint"}
!105 = metadata !{null, metadata !47, metadata !48, metadata !106, metadata !50, metadata !66, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, false> &"}
!107 = metadata !{null, metadata !47, metadata !48, metadata !108, metadata !50, metadata !66, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"int"}
!109 = metadata !{null, metadata !47, metadata !48, metadata !110, metadata !50, metadata !66, metadata !6}
!110 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<32, true> &"}
!111 = metadata !{null, metadata !47, metadata !48, metadata !108, metadata !50, metadata !61, metadata !6}
!112 = metadata !{null, metadata !1, metadata !2, metadata !38, metadata !4, metadata !21, metadata !6}
!113 = metadata !{null, metadata !1, metadata !2, metadata !114, metadata !4, metadata !115, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis_in &"}
!115 = metadata !{metadata !"kernel_arg_name", metadata !""}
!116 = metadata !{metadata !117, [0 x i32]* @llvm_global_ctors_0}
!117 = metadata !{metadata !118}
!118 = metadata !{i32 0, i32 31, metadata !119}
!119 = metadata !{metadata !120}
!120 = metadata !{metadata !"llvm.global_ctors.0", metadata !121, metadata !"", i32 0, i32 31}
!121 = metadata !{metadata !122}
!122 = metadata !{i32 0, i32 0, i32 1}
!123 = metadata !{metadata !124}
!124 = metadata !{i32 0, i32 47, metadata !125}
!125 = metadata !{metadata !126}
!126 = metadata !{metadata !"eth_address.V", metadata !121, metadata !"uint48", i32 0, i32 47}
!127 = metadata !{metadata !128}
!128 = metadata !{i32 0, i32 63, metadata !129}
!129 = metadata !{metadata !130}
!130 = metadata !{metadata !"stream_in.V.data.V", metadata !121, metadata !"int64", i32 0, i32 63}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 0, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"stream_in.V.last.V", metadata !121, metadata !"uint1", i32 0, i32 0}
!135 = metadata !{metadata !136}
!136 = metadata !{i32 0, i32 63, metadata !137}
!137 = metadata !{metadata !138}
!138 = metadata !{metadata !"stream_out.V.data.V", metadata !121, metadata !"int64", i32 0, i32 63}
!139 = metadata !{metadata !140}
!140 = metadata !{i32 0, i32 7, metadata !141}
!141 = metadata !{metadata !142}
!142 = metadata !{metadata !"stream_out.V.dest.V", metadata !121, metadata !"uint8", i32 0, i32 7}
!143 = metadata !{metadata !144}
!144 = metadata !{i32 0, i32 0, metadata !145}
!145 = metadata !{metadata !146}
!146 = metadata !{metadata !"stream_out.V.last.V", metadata !121, metadata !"uint1", i32 0, i32 0}
!147 = metadata !{metadata !148}
!148 = metadata !{i32 0, i32 47, metadata !149}
!149 = metadata !{metadata !150}
!150 = metadata !{metadata !"observedAddress_out.V", metadata !121, metadata !"uint48", i32 0, i32 47}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 15, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"dest_out.V", metadata !121, metadata !"uint16", i32 0, i32 15}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 0, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"match_out.V", metadata !121, metadata !"int1", i32 0, i32 0}
