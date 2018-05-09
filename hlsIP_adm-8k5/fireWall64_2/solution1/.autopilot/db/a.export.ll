; ModuleID = '/nfs/ug/thesis/thesis0/pc/Graham/galapagos/hlsIP_adm-8k5/fireWall64_2/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@fireWall64_2_str = internal unnamed_addr constant [13 x i8] c"fireWall64_2\00"
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @fireWall64_2(i64* %stream_in_V_data_V, i8* %stream_in_V_dest_V, i1* %stream_in_V_last_V, i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, i64* %stream_garbage_V_data_V, i8* %stream_garbage_V_dest_V, i1* %stream_garbage_V_last_V, i1* %match_in_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_in_V_data_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_in_V_dest_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_in_V_last_V), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_out_V_data_V), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_out_V_dest_V), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_out_V_last_V), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %stream_garbage_V_data_V), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %stream_garbage_V_dest_V), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %stream_garbage_V_last_V), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %match_in_V), !map !76
  call void (...)* @_ssdm_op_SpecTopModule([13 x i8]* @fireWall64_2_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %match_in_V, [7 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_garbage_V_data_V, i8* %stream_garbage_V_dest_V, i1* %stream_garbage_V_last_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %stream_in_V_data_V, i8* %stream_in_V_dest_V, i1* %stream_in_V_last_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %4, %0
  %empty = call { i64, i8, i1 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i1P(i64* %stream_in_V_data_V, i8* %stream_in_V_dest_V, i1* %stream_in_V_last_V)
  %tmp_data_V = extractvalue { i64, i8, i1 } %empty, 0
  %tmp_dest_V = extractvalue { i64, i8, i1 } %empty, 1
  %tmp_last_V = extractvalue { i64, i8, i1 } %empty, 2
  %match_in_V_read = call i1 @_ssdm_op_Read.ap_vld.i1P(i1* %match_in_V)
  br i1 %match_in_V_read, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.axis.volatile.i64P.i8P.i1P(i64* %stream_out_V_data_V, i8* %stream_out_V_dest_V, i1* %stream_out_V_last_V, i64 %tmp_data_V, i8 %tmp_dest_V, i1 %tmp_last_V)
  br label %4

; <label>:3                                       ; preds = %1
  call void @_ssdm_op_Write.axis.volatile.i64P.i8P.i1P(i64* %stream_garbage_V_data_V, i8* %stream_garbage_V_dest_V, i1* %stream_garbage_V_last_V, i64 %tmp_data_V, i8 %tmp_dest_V, i1 %tmp_last_V)
  br label %4

; <label>:4                                       ; preds = %3, %2
  br label %1
}

define weak void @_ssdm_op_Write.axis.volatile.i64P.i8P.i1P(i64*, i8*, i1*, i64, i8, i1) {
entry:
  store i64 %3, i64* %0
  store i8 %4, i8* %1
  store i1 %5, i1* %2
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

define weak { i64, i8, i1 } @_ssdm_op_Read.axis.volatile.i64P.i8P.i1P(i64*, i8*, i1*) {
entry:
  %empty = load i64* %0
  %empty_3 = load i8* %1
  %empty_4 = load i1* %2
  %mrv_0 = insertvalue { i64, i8, i1 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i8, i1 } %mrv_0, i8 %empty_3, 1
  %mrv2 = insertvalue { i64, i8, i1 } %mrv1, i1 %empty_4, 2
  ret { i64, i8, i1 } %mrv2
}

define weak i1 @_ssdm_op_Read.ap_vld.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

!opencl.kernels = !{!0, !7, !13, !13, !13, !19, !19, !13, !13, !22, !13, !13, !25, !27, !29, !31, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!33}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis>", metadata !"hls::stream<ap_axis>", metadata !"hls::stream<ap_axis>", metadata !"ap_int<1>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"stream_in", metadata !"stream_out", metadata !"stream_garbage", metadata !"match_in"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<1> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !26, metadata !6}
!26 = metadata !{metadata !"kernel_arg_name", metadata !""}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !24, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!29 = metadata !{null, metadata !8, metadata !9, metadata !30, metadata !11, metadata !24, metadata !6}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !24, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!33 = metadata !{metadata !34, [0 x i32]* @llvm_global_ctors_0}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"llvm.global_ctors.0", metadata !38, metadata !"", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 1}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 63, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"stream_in.V.data.V", metadata !38, metadata !"int64", i32 0, i32 63}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 7, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"stream_in.V.dest.V", metadata !38, metadata !"uint8", i32 0, i32 7}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 0, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"stream_in.V.last.V", metadata !38, metadata !"uint1", i32 0, i32 0}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 63, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"stream_out.V.data.V", metadata !38, metadata !"int64", i32 0, i32 63}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 7, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"stream_out.V.dest.V", metadata !38, metadata !"uint8", i32 0, i32 7}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 0, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"stream_out.V.last.V", metadata !38, metadata !"uint1", i32 0, i32 0}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 63, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"stream_garbage.V.data.V", metadata !38, metadata !"int64", i32 0, i32 63}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 7, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"stream_garbage.V.dest.V", metadata !38, metadata !"uint8", i32 0, i32 7}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 0, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"stream_garbage.V.last.V", metadata !38, metadata !"uint1", i32 0, i32 0}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 0, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"match_in.V", metadata !38, metadata !"int1", i32 0, i32 0}
