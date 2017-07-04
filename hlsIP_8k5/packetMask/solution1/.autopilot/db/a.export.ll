; ModuleID = '/home/tarafdar/thesis/gitStuff/hlsIP_8k5/packetMask/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@packetMask_str = internal unnamed_addr constant [11 x i8] c"packetMask\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

define void @packetMask(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V, i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i32* %id_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetIn_V_data_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetIn_V_last_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_keep_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetOut_V_data_V), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetOut_V_last_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetOut_V_keep_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %id_V), !map !75
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @packetMask_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_V, [8 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %1, %0
  %empty = call { i64, i1, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V)
  %tmp_data_V_2 = extractvalue { i64, i1, i8 } %empty, 0
  %tmp_last_V = extractvalue { i64, i1, i8 } %empty, 1
  %tmp = call i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64 %tmp_data_V_2, i32 24, i32 31)
  %tmp_1 = trunc i64 %tmp_data_V_2 to i8
  %r_V = call i32 @_ssdm_op_BitConcatenate.i32.i8.i16.i8(i8 %tmp, i16 0, i8 %tmp_1)
  %tmp_data_V_1 = zext i32 %r_V to i64
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V_1, i1 %tmp_last_V, i8 undef)
  br label %1
}

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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
  %empty_5 = load i1* %1
  %empty_6 = load i8* %2
  %mrv_0 = insertvalue { i64, i1, i8 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i1, i8 } %mrv_0, i1 %empty_5, 1
  %mrv2 = insertvalue { i64, i1, i8 } %mrv1, i8 %empty_6, 2
  ret { i64, i1, i8 } %mrv2
}

define weak i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_7 = trunc i64 %empty to i8
  ret i8 %empty_7
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i8.i16.i8(i8, i16, i8) nounwind readnone {
entry:
  %empty = zext i16 %1 to i24
  %empty_8 = zext i8 %2 to i24
  %empty_9 = shl i24 %empty, 8
  %empty_10 = or i24 %empty_9, %empty_8
  %empty_11 = zext i8 %0 to i32
  %empty_12 = zext i24 %empty_10 to i32
  %empty_13 = shl i32 %empty_11, 24
  %empty_14 = or i32 %empty_13, %empty_12
  ret i32 %empty_14
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !28, !28, !16, !30, !16, !33, !33, !35, !38, !16, !40, !42, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!44}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis>", metadata !"hls::stream<ap_axis>", metadata !"ap_uint<32>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"packetIn", metadata !"packetOut", metadata !"id"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!24 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"uint"}
!26 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !15, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!30 = metadata !{null, metadata !23, metadata !24, metadata !31, metadata !26, metadata !32, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, false> &"}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !15, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !37, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!40 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !""}
!42 = metadata !{null, metadata !8, metadata !9, metadata !43, metadata !11, metadata !37, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!44 = metadata !{metadata !45, [1 x i32]* @llvm_global_ctors_0}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"llvm.global_ctors.0", metadata !49, metadata !"", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 0, i32 1}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 63, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"packetIn.V.data.V", metadata !49, metadata !"int64", i32 0, i32 63}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 0, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"packetIn.V.last.V", metadata !49, metadata !"uint1", i32 0, i32 0}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 7, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"packetIn.V.keep.V", metadata !49, metadata !"uint8", i32 0, i32 7}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 63, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"packetOut.V.data.V", metadata !49, metadata !"int64", i32 0, i32 63}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"packetOut.V.last.V", metadata !49, metadata !"uint1", i32 0, i32 0}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 7, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"packetOut.V.keep.V", metadata !49, metadata !"uint8", i32 0, i32 7}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"id.V", metadata !49, metadata !"uint32", i32 0, i32 31}
