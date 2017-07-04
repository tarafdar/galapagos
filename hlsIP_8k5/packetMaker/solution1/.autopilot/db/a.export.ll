; ModuleID = '/home/tarafdar/thesis/gitStuff/hlsIP_8k5/packetMaker/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@packetMaker_str = internal unnamed_addr constant [12 x i8] c"packetMaker\00"
@packet1 = internal unnamed_addr constant [25 x i32] [i32 100992003, i32 100991489, i32 197637, i32 -1412606464, i32 387323156, i32 454695192, i32 522067228, i32 589439264, i32 656811300, i32 724183336, i32 791555372, i32 858927408, i32 926299444, i32 993671480, i32 1061043516, i32 1128415552, i32 1195787588, i32 1263159624, i32 1330531660, i32 1397903696, i32 1465275732, i32 1532647768, i32 1600019804, i32 1667391840, i32 -5583634]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str5 = private unnamed_addr constant [19 x i8] c"packetMaker_label3\00", align 1
@p_str4 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define void @packetMaker(i64* %packetOut_V_packet_V, i1* %packetOut_V_last_V, i8* %packetOut_V_dest_V, i32* %id_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %packetOut_V_packet_V), !map !36
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %packetOut_V_last_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %packetOut_V_dest_V), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %id_V), !map !48
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @packetMaker_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %id_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %packetOut_V_packet_V, i1* %packetOut_V_last_V, i8* %packetOut_V_dest_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [11 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %0
  %loop_begin = call i32 (...)* @_ssdm_op_SpecLoopBegin() nounwind
  br label %1

; <label>:1                                       ; preds = %2, %.loopexit
  %i = phi i5 [ 0, %.loopexit ], [ %i_1, %2 ]
  %exitcond = icmp eq i5 %i, -7
  %i_1 = add i5 %i, 1
  br i1 %exitcond, label %.loopexit.loopexit, label %2

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 25, i64 25, i64 25)
  call void (...)* @_ssdm_op_SpecLoopName([19 x i8]* @p_str5) nounwind
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([19 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = zext i5 %i to i64
  %packet1_addr = getelementptr inbounds [25 x i32]* @packet1, i64 0, i64 %tmp
  %packet1_load = load i32* %packet1_addr, align 4
  %tmp_packet_V = sext i32 %packet1_load to i64
  %tmp_last_V = icmp eq i5 %i, -8
  call void @_ssdm_op_Write.axis.volatile.i64P.i1P.i8P(i64* %packetOut_V_packet_V, i1* %packetOut_V_last_V, i8* %packetOut_V_dest_V, i64 %tmp_packet_V, i1 %tmp_last_V, i8 0)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecRegionEnd([19 x i8]* @p_str5, i32 %tmp_2)
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

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
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

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !13, !13, !16, !16, !22, !13, !13, !16, !16, !25, !13, !13, !16, !16, !27, !16, !16, !16, !16, !16, !16, !16, !16}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!29}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<ap_axis>", metadata !"ap_int<32>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"packetOut", metadata !"id"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_axis &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !15, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!16 = metadata !{null, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !6}
!17 = metadata !{metadata !"kernel_arg_addr_space"}
!18 = metadata !{metadata !"kernel_arg_access_qual"}
!19 = metadata !{metadata !"kernel_arg_type"}
!20 = metadata !{metadata !"kernel_arg_type_qual"}
!21 = metadata !{metadata !"kernel_arg_name"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !24, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !24, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!27 = metadata !{null, metadata !8, metadata !9, metadata !28, metadata !11, metadata !24, metadata !6}
!28 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!29 = metadata !{metadata !30, [1 x i32]* @llvm_global_ctors_0}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 31, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"llvm.global_ctors.0", metadata !34, metadata !"", i32 0, i32 31}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, i32 1}
!36 = metadata !{metadata !37}
!37 = metadata !{i32 0, i32 63, metadata !38}
!38 = metadata !{metadata !39}
!39 = metadata !{metadata !"packetOut.V.packet.V", metadata !34, metadata !"int64", i32 0, i32 63}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 0, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"packetOut.V.last.V", metadata !34, metadata !"uint1", i32 0, i32 0}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 7, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"packetOut.V.dest.V", metadata !34, metadata !"uint8", i32 0, i32 7}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"id.V", metadata !34, metadata !"int32", i32 0, i32 31}
