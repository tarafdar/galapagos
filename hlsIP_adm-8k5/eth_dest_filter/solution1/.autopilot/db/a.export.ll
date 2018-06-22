; ModuleID = '/home/tarafdar/workDir/galapagos/hlsIP_adm-8k5/eth_dest_filter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@eth_dest_filter_str = internal unnamed_addr constant [16 x i8] c"eth_dest_filter\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str2 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str1 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare i81 @llvm.part.select.i81(i81, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @eth_dest_filter([256 x i32]* %mac_table_V, i32 %mac_addr, i81* %stream_in_V, i81* %stream_out_switch_V, i81* %stream_out_network_V) {
  call void (...)* @_ssdm_op_SpecInterface(i81* %stream_out_network_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %stream_out_switch_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i81* %stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %stream_out_network_V), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %stream_out_switch_V), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i81* %stream_in_V), !map !61
  %mac_addr_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %mac_addr)
  call void (...)* @_ssdm_op_SpecBitsMap([256 x i32]* %mac_table_V), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %mac_addr), !map !80
  call void (...)* @_ssdm_op_SpecTopModule([16 x i8]* @eth_dest_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i81* %stream_in_V, [1 x i8]* @p_str, [11 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %stream_out_switch_V, [1 x i8]* @p_str, [11 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecIFCore(i81* %stream_out_network_V, [1 x i8]* @p_str, [11 x i8]* @p_str1, [1 x i8]* @p_str, i32 -1, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81* %stream_in_V, i32 1)
  br i1 %tmp, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  %tmp22 = call i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81* %stream_in_V)
  %tmp_tdest_V = call i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81 %tmp22, i32 65, i32 72)
  %tmp_2 = zext i8 %tmp_tdest_V to i64
  %mac_table_V_addr = getelementptr [256 x i32]* %mac_table_V, i64 0, i64 %tmp_2
  %mac_addr_in = load i32* %mac_table_V_addr, align 4
  %inFPGA = icmp eq i32 %mac_addr_in, %mac_addr_read
  br i1 %inFPGA, label %2, label %3

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %stream_out_switch_V, i81 %tmp22)
  br label %4

; <label>:3                                       ; preds = %1
  call void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81* %stream_out_network_V, i81 %tmp22)
  br label %4

; <label>:4                                       ; preds = %3, %2
  br label %._crit_edge

._crit_edge:                                      ; preds = %4, %0
  ret void
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i81P(i81*, i81) {
entry:
  %empty = call i81 @_autotb_FifoWrite_i81(i81* %0, i81 %1)
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i81 @_ssdm_op_Read.ap_fifo.volatile.i81P(i81*) {
entry:
  %empty = call i81 @_autotb_FifoRead_i81(i81* %0)
  ret i81 %empty
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i8 @_ssdm_op_PartSelect.i8.i81.i32.i32(i81, i32, i32) nounwind readnone {
entry:
  %empty = call i81 @llvm.part.select.i81(i81 %0, i32 %1, i32 %2)
  %empty_5 = trunc i81 %empty to i8
  ret i8 %empty_5
}

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i81P(i81*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i81(i81* %0)
  ret i1 %empty
}

declare i81 @_autotb_FifoWrite_i81(i81*, i81)

declare i81 @_autotb_FifoRead_i81(i81*)

declare i1 @_autotb_FifoCanRead_i81(i81*)

!opencl.kernels = !{!0, !7, !13, !13, !13, !13, !19, !21, !24, !26, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!28}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<32>*", metadata !"int", metadata !"hls::stream<ap_axis>*", metadata !"hls::stream<ap_axis>*", metadata !"hls::stream<ap_axis>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"const", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mac_table", metadata !"mac_addr", metadata !"stream_in", metadata !"stream_out_switch", metadata !"stream_out_network"}
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
!19 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !20, metadata !6}
!20 = metadata !{metadata !"kernel_arg_name", metadata !""}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !23, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!26 = metadata !{null, metadata !8, metadata !9, metadata !27, metadata !11, metadata !23, metadata !6}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int<64> &"}
!28 = metadata !{metadata !29, [0 x i32]* @llvm_global_ctors_0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"llvm.global_ctors.0", metadata !33, metadata !"", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, i32 1}
!35 = metadata !{metadata !36, metadata !39, metadata !42, metadata !45}
!36 = metadata !{i32 0, i32 63, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"stream_out_network.V.data.V", metadata !33, metadata !"int64", i32 0, i32 63}
!39 = metadata !{i32 64, i32 64, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"stream_out_network.V.last.V", metadata !33, metadata !"uint1", i32 0, i32 0}
!42 = metadata !{i32 65, i32 72, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"stream_out_network.V.tdest.V", metadata !33, metadata !"uint8", i32 0, i32 7}
!45 = metadata !{i32 73, i32 80, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"stream_out_network.V.tkeep.V", metadata !33, metadata !"uint8", i32 0, i32 7}
!48 = metadata !{metadata !49, metadata !52, metadata !55, metadata !58}
!49 = metadata !{i32 0, i32 63, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"stream_out_switch.V.data.V", metadata !33, metadata !"int64", i32 0, i32 63}
!52 = metadata !{i32 64, i32 64, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"stream_out_switch.V.last.V", metadata !33, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{i32 65, i32 72, metadata !56}
!56 = metadata !{metadata !57}
!57 = metadata !{metadata !"stream_out_switch.V.tdest.V", metadata !33, metadata !"uint8", i32 0, i32 7}
!58 = metadata !{i32 73, i32 80, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"stream_out_switch.V.tkeep.V", metadata !33, metadata !"uint8", i32 0, i32 7}
!61 = metadata !{metadata !62, metadata !65, metadata !68, metadata !71}
!62 = metadata !{i32 0, i32 63, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"stream_in.V.data.V", metadata !33, metadata !"int64", i32 0, i32 63}
!65 = metadata !{i32 64, i32 64, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"stream_in.V.last.V", metadata !33, metadata !"uint1", i32 0, i32 0}
!68 = metadata !{i32 65, i32 72, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"stream_in.V.tdest.V", metadata !33, metadata !"uint8", i32 0, i32 7}
!71 = metadata !{i32 73, i32 80, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"stream_in.V.tkeep.V", metadata !33, metadata !"uint8", i32 0, i32 7}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 31, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"mac_table.V", metadata !78, metadata !"uint32", i32 0, i32 31}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 255, i32 1}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 31, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"mac_addr", metadata !84, metadata !"int", i32 0, i32 31}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 0, i32 0}
