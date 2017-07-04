; ModuleID = '/home/tarafdar/thesis/gitStuff/hlsIP_8k5/roundRobin/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@roundRobin_str = internal unnamed_addr constant [11 x i8] c"roundRobin\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str4 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define void @roundRobin(i64* %packetIn_V_packet_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, i64* %packetOut_V_packet_V, i1* %packetOut_V_last_V, i8* %packetOut_V_dest_V, i8* %base_V, i8* %max_V) {
  %val_assign = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetIn_V_packet_V), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetIn_V_last_V), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetIn_V_dest_V), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetOut_V_packet_V), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetOut_V_last_V), !map !64
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetOut_V_dest_V), !map !68
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %base_V), !map !72
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %max_V), !map !76
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @roundRobin_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %max_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %base_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetOut_V_packet_V, i1* %packetOut_V_last_V, i8* %packetOut_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetIn_V_packet_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %base_V_read = call i8 @_ssdm_op_Read.ap_none.i8P(i8* %base_V)
  %index = sext i8 %base_V_read to i32
  %index_cast = sext i8 %base_V_read to i9
  store i32 %index, i32* %val_assign
  br label %1

; <label>:1                                       ; preds = %._crit_edge, %0
  %val_assign_load = load i32* %val_assign
  %empty = call { i64, i1, i8 } @_ssdm_op_Read.axis.volatile.i64P.i1P.i8P(i64* %packetIn_V_packet_V, i1* %packetIn_V_last_V, i8* %packetIn_V_dest_V)
  %tmp_packet_V = extractvalue { i64, i1, i8 } %empty, 0
  %tmp_last_V = extractvalue { i64, i1, i8 } %empty, 1
  br i1 %tmp_last_V, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %max_V_read = call i8 @_ssdm_op_Read.ap_none.i8P(i8* %max_V)
  %tmp = sext i8 %max_V_read to i32
  %tmp_1 = icmp eq i32 %val_assign_load, %tmp
  %tmp_2 = trunc i32 %val_assign_load to i9
  %index_1_cast = add i9 1, %tmp_2
  %index_1_index = select i1 %tmp_1, i9 %index_1_cast, i9 %index_cast
  %index_1_index_cast = sext i9 %index_1_index to i32
  store i32 %index_1_index_cast, i32* %val_assign
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %1
  %tmp_3 = trunc i32 %val_assign_load to i8
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_packet_V, i1* %packetOut_V_last_V, i8* %packetOut_V_dest_V, i64 %tmp_packet_V, i1 %tmp_last_V, i8 %tmp_3)
  br label %1
}

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
  %empty_3 = load i1* %1
  %empty_4 = load i8* %2
  %mrv_0 = insertvalue { i64, i1, i8 } undef, i64 %empty, 0
  %mrv1 = insertvalue { i64, i1, i8 } %mrv_0, i1 %empty_3, 1
  %mrv2 = insertvalue { i64, i1, i8 } %mrv1, i8 %empty_4, 2
  ret { i64, i1, i8 } %mrv2
}

define weak i8 @_ssdm_op_Read.ap_none.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

declare i9 @_ssdm_op_PartSelect.i9.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !19, !19, !22, !28, !31, !31, !22, !22, !33, !35, !37, !22, !22, !39, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22, !22}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!41}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis>", metadata !"hls::stream<ap_axis>", metadata !"ap_int<8>*", metadata !"ap_int<8>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"packetIn", metadata !"packetOut", metadata !"base", metadata !"max"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!22 = metadata !{null, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !6}
!23 = metadata !{metadata !"kernel_arg_addr_space"}
!24 = metadata !{metadata !"kernel_arg_access_qual"}
!25 = metadata !{metadata !"kernel_arg_type"}
!26 = metadata !{metadata !"kernel_arg_type_qual"}
!27 = metadata !{metadata !"kernel_arg_name"}
!28 = metadata !{null, metadata !8, metadata !9, metadata !29, metadata !11, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !32, metadata !6}
!32 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !30, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !30, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !30, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!39 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !40, metadata !6}
!40 = metadata !{metadata !"kernel_arg_name", metadata !""}
!41 = metadata !{metadata !42, [1 x i32]* @llvm_global_ctors_0}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 31, metadata !44}
!44 = metadata !{metadata !45}
!45 = metadata !{metadata !"llvm.global_ctors.0", metadata !46, metadata !"", i32 0, i32 31}
!46 = metadata !{metadata !47}
!47 = metadata !{i32 0, i32 0, i32 1}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 63, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"packetIn.V.packet.V", metadata !46, metadata !"int64", i32 0, i32 63}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 0, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"packetIn.V.last.V", metadata !46, metadata !"uint1", i32 0, i32 0}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 7, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"packetIn.V.dest.V", metadata !46, metadata !"uint8", i32 0, i32 7}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 63, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"packetOut.V.packet.V", metadata !46, metadata !"int64", i32 0, i32 63}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 0, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"packetOut.V.last.V", metadata !46, metadata !"uint1", i32 0, i32 0}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 7, metadata !70}
!70 = metadata !{metadata !71}
!71 = metadata !{metadata !"packetOut.V.dest.V", metadata !46, metadata !"uint8", i32 0, i32 7}
!72 = metadata !{metadata !73}
!73 = metadata !{i32 0, i32 7, metadata !74}
!74 = metadata !{metadata !75}
!75 = metadata !{metadata !"base.V", metadata !46, metadata !"int8", i32 0, i32 7}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 7, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"max.V", metadata !46, metadata !"int8", i32 0, i32 7}
