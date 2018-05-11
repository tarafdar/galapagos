; ModuleID = '/nfs/ug/thesis/thesis0/pc/Graham/galapagos_test/hlsIP_adm-8k5/axiStreamGate/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@axiStreamGate_str = internal unnamed_addr constant [14 x i8] c"axiStreamGate\00"
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axiStreamGate(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V, i32* %programming, i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i32* %programSafe) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetIn_V_data_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetIn_V_last_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_keep_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %programming), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetOut_V_data_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetOut_V_last_V), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetOut_V_keep_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %programSafe), !map !79
  call void (...)* @_ssdm_op_SpecTopModule([14 x i8]* @axiStreamGate_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %programSafe, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %programming, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  call void @_ssdm_op_Write.s_axilite.volatile.i32P(i32* %programSafe, i32 0)
  %programming_read = call i32 @_ssdm_op_Read.s_axilite.volatile.i32P(i32* %programming)
  %tmp = icmp eq i32 %programming_read, 0
  br i1 %tmp, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %tmp_1 = call i1 @_ssdm_op_NbReadReq.axis.i64P.i1P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V, i32 1)
  br i1 %tmp_1, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %2
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %empty = call { i64, i1, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P(i64* %packetIn_V_data_V, i1* %packetIn_V_last_V, i8* %packetIn_V_keep_V)
  %tmp_data_V = extractvalue { i64, i1, i8 } %empty, 0
  %tmp_last_V = extractvalue { i64, i1, i8 } %empty, 1
  %tmp_keep_V = extractvalue { i64, i1, i8 } %empty, 2
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_data_V, i1* %packetOut_V_last_V, i8* %packetOut_V_keep_V, i64 %tmp_data_V, i1 %tmp_last_V, i8 %tmp_keep_V)
  br i1 %tmp_last_V, label %.loopexit.loopexit, label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.loopexit, %1
  call void @_ssdm_op_Write.s_axilite.volatile.i32P(i32* %programSafe, i32 1)
  call void (...)* @_ssdm_op_Wait(i32 1) nounwind
  br label %1
}

define weak void @_ssdm_op_Write.s_axilite.volatile.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

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

define weak i32 @_ssdm_op_Read.s_axilite.volatile.i32P(i32*) {
entry:
  %empty = load i32* %0
  ret i32 %empty
}

define weak { i64, i1, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P(i64*, i1*, i8*) {
entry:
  %empty = load i64* %0
  %empty_3 = load i1* %1
  %empty_4 = load i8* %2
  %mrv_0 = insertvalue { i64, i1, i8 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i1, i8 } %mrv_0, i1 %empty_3, 1
  %mrv2 = insertvalue { i64, i1, i8 } %mrv1, i8 %empty_4, 2
  ret { i64, i1, i8 } %mrv2
}

define weak i1 @_ssdm_op_NbReadReq.axis.i64P.i1P.i8P(i64*, i1*, i8*, i32) {
entry:
  ret i1 true
}

!opencl.kernels = !{!0, !7, !13, !13, !19, !25, !28, !31, !31, !19, !19, !33, !19, !19, !35, !35, !37, !39, !41, !42, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!44}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis>", metadata !"int*", metadata !"hls::stream<ap_axis>", metadata !"int*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"", metadata !"volatile"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"packetIn", metadata !"programming", metadata !"packetOut", metadata !"programSafe"}
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
!28 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!31 = metadata !{null, metadata !14, metadata !15, metadata !32, metadata !17, metadata !18, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!33 = metadata !{null, metadata !14, metadata !15, metadata !34, metadata !17, metadata !27, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!35 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !36, metadata !6}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!37 = metadata !{null, metadata !14, metadata !15, metadata !29, metadata !17, metadata !38, metadata !6}
!38 = metadata !{metadata !"kernel_arg_name", metadata !""}
!39 = metadata !{null, metadata !14, metadata !15, metadata !40, metadata !17, metadata !27, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!41 = metadata !{null, metadata !14, metadata !15, metadata !32, metadata !17, metadata !27, metadata !6}
!42 = metadata !{null, metadata !14, metadata !15, metadata !43, metadata !17, metadata !27, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!44 = metadata !{metadata !45, [0 x i32]* @llvm_global_ctors_0}
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
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"programming", metadata !49, metadata !"int", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 63, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"packetOut.V.data.V", metadata !49, metadata !"int64", i32 0, i32 63}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 0, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"packetOut.V.last.V", metadata !49, metadata !"uint1", i32 0, i32 0}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 7, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"packetOut.V.keep.V", metadata !49, metadata !"uint8", i32 0, i32 7}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 31, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"programSafe", metadata !49, metadata !"int", i32 0, i32 31}
