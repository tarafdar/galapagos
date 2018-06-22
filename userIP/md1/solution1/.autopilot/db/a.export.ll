; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/md1/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@world_rank = global i32 0, align 4
@stream_out_V_user_V = global i40 0
@stream_out_V_last_V = global i1 false
@stream_out_V_id_V = global i8 0
@stream_out_V_dest_V = global i8 0
@stream_out_V_data_V = global i64 0
@stream_out_V = global i121 0
@stream_in_V_user_V = global i40 0
@stream_in_V_last_V = global i1 false
@stream_in_V_id_V = global i8 0
@stream_in_V_dest_V = global i8 0
@stream_in_V_data_V = global i64 0
@stream_in_V = global i121 0
@start_time = global i64 0, align 8
@processorCount = global i32 0, align 4
@md1_str = internal unnamed_addr constant [4 x i8] c"md1\00"
@llvm_global_ctors_1 = appending global [4 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a10, void ()* @_GLOBAL__I_a16, void ()* @_GLOBAL__I_a22]
@llvm_global_ctors_0 = appending global [4 x i32] [i32 65535, i32 65535, i32 65535, i32 65535]
@id_in_V = global i16 0
@end_time = global i64 0, align 8
@p_str13 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str12 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @md1(i16 %id_V) {
.preheader.preheader:
  call void (...)* @_ssdm_op_SpecBitsMap(i16 %id_V), !map !233
  call void (...)* @_ssdm_op_SpecTopModule([4 x i8]* @md1_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str12, i32 0, i32 0, [1 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str11, [1 x i8]* @p_str11) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i121* @stream_out_V, [1 x i8]* @p_str11, [11 x i8]* @p_str13, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  call void (...)* @_ssdm_op_SpecIFCore(i121* @stream_in_V, [1 x i8]* @p_str11, [11 x i8]* @p_str13, [1 x i8]* @p_str11, i32 -1, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11, [1 x i8]* @p_str11)
  %id_V_read = call i16 @_ssdm_op_Read.ap_auto.i16(i16 %id_V)
  store i16 %id_V_read, i16* @id_in_V, align 2
  %tmp = zext i16 %id_V_read to i32
  store i32 %tmp, i32* @world_rank, align 4
  store i32 46, i32* @processorCount, align 4
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader
  br label %.preheader
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
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

define weak i16 @_ssdm_op_Read.ap_auto.i16(i16) {
entry:
  ret i16 %0
}

declare void @_GLOBAL__I_a22() nounwind section ".text.startup"

declare void @_GLOBAL__I_a16() nounwind section ".text.startup"

declare void @_GLOBAL__I_a10() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

!opencl.kernels = !{!0, !7, !10, !16, !18, !20, !21, !27, !21, !33, !37, !21, !40, !43, !21, !46, !21, !21, !21, !48, !51, !51, !21, !53, !56, !56, !21, !21, !21, !21, !59, !53, !21, !61, !64, !21, !21, !21, !66, !66, !67, !67, !69, !71, !21, !21, !21, !21, !69, !71, !66, !66, !73, !73, !75, !78, !78, !21, !21, !21, !80, !82, !21, !21, !21, !66, !66, !84, !84, !86, !53, !27, !51, !51, !21, !88, !90, !92, !93, !48, !53, !21, !21, !21, !95, !59, !53, !97, !99, !75, !78, !78, !102, !104, !104, !21, !21, !21, !110, !110, !21, !21, !110, !110, !21, !21, !110, !110, !21, !21, !110, !110, !21, !21, !21, !21, !21, !111, !111, !111, !21, !21, !21, !113, !111, !111, !111, !115, !111, !111, !111, !117, !117, !119, !110, !110, !121, !123, !123, !124, !125, !126, !126, !127, !84, !84, !128, !129, !129, !102, !130, !130, !132, !133, !135, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!137, !144, !149, !154, !159, !164, !169, !174, !179, !184, !189, !194, !199, !204, !211, !216, !221, !227}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"struct envelope*", metadata !"struct stream_packet*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"envlp", metadata !"packet"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !1, metadata !2, metadata !8, metadata !4, metadata !9, metadata !6}
!8 = metadata !{metadata !"kernel_arg_type", metadata !"struct stream_packet*", metadata !"struct envelope*"}
!9 = metadata !{metadata !"kernel_arg_name", metadata !"packet", metadata !"envlp"}
!10 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !15, metadata !6}
!11 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!12 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!13 = metadata !{metadata !"kernel_arg_type", metadata !"int*", metadata !"int", metadata !"enum MPI_DATA_TYPE", metadata !"int", metadata !"int", metadata !"int"}
!14 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!15 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"count", metadata !"dataType", metadata !"dest", metadata !"tag", metadata !"MPI_Comm"}
!16 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !15, metadata !6}
!17 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"enum MPI_DATA_TYPE", metadata !"int", metadata !"int", metadata !"int"}
!18 = metadata !{null, metadata !11, metadata !12, metadata !13, metadata !14, metadata !19, metadata !6}
!19 = metadata !{metadata !"kernel_arg_name", metadata !"buf", metadata !"count", metadata !"dataType", metadata !"source", metadata !"tag", metadata !"MPI_Comm"}
!20 = metadata !{null, metadata !11, metadata !12, metadata !17, metadata !14, metadata !19, metadata !6}
!21 = metadata !{null, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !6}
!22 = metadata !{metadata !"kernel_arg_addr_space"}
!23 = metadata !{metadata !"kernel_arg_access_qual"}
!24 = metadata !{metadata !"kernel_arg_type"}
!25 = metadata !{metadata !"kernel_arg_type_qual"}
!26 = metadata !{metadata !"kernel_arg_name"}
!27 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !32, metadata !6}
!28 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!29 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!30 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!31 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!32 = metadata !{metadata !"kernel_arg_name", metadata !""}
!33 = metadata !{null, metadata !34, metadata !2, metadata !35, metadata !4, metadata !36, metadata !6}
!34 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"float", metadata !"float"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"a", metadata !"b"}
!37 = metadata !{null, metadata !28, metadata !29, metadata !38, metadata !31, metadata !39, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"float"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"x"}
!40 = metadata !{null, metadata !34, metadata !2, metadata !41, metadata !4, metadata !42, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!42 = metadata !{metadata !"kernel_arg_name", metadata !"atomCount", metadata !"stepCount"}
!43 = metadata !{null, metadata !28, metadata !29, metadata !44, metadata !31, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<16>"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"id"}
!46 = metadata !{null, metadata !28, metadata !29, metadata !38, metadata !31, metadata !47, metadata !6}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"__f"}
!48 = metadata !{null, metadata !34, metadata !2, metadata !49, metadata !4, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &", metadata !"int"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!51 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !52, metadata !6}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!53 = metadata !{null, metadata !28, metadata !29, metadata !54, metadata !31, metadata !55, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!55 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!56 = metadata !{null, metadata !28, metadata !29, metadata !57, metadata !31, metadata !58, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!58 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!59 = metadata !{null, metadata !34, metadata !2, metadata !60, metadata !4, metadata !50, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!61 = metadata !{null, metadata !34, metadata !2, metadata !62, metadata !4, metadata !63, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"int"}
!63 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!64 = metadata !{null, metadata !34, metadata !2, metadata !65, metadata !4, metadata !50, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &", metadata !"const ap_int_base<32, true> &"}
!66 = metadata !{null, metadata !28, metadata !29, metadata !54, metadata !31, metadata !52, metadata !6}
!67 = metadata !{null, metadata !28, metadata !29, metadata !68, metadata !31, metadata !52, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<65, true> &"}
!69 = metadata !{null, metadata !34, metadata !2, metadata !70, metadata !4, metadata !63, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"int"}
!71 = metadata !{null, metadata !34, metadata !2, metadata !72, metadata !4, metadata !50, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &", metadata !"const ap_int_base<32, true> &"}
!73 = metadata !{null, metadata !28, metadata !29, metadata !74, metadata !31, metadata !52, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, true> &"}
!75 = metadata !{null, metadata !28, metadata !29, metadata !76, metadata !31, metadata !77, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!77 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!78 = metadata !{null, metadata !28, metadata !29, metadata !79, metadata !31, metadata !52, metadata !6}
!79 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!80 = metadata !{null, metadata !34, metadata !2, metadata !81, metadata !4, metadata !63, metadata !6}
!81 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"int"}
!82 = metadata !{null, metadata !34, metadata !2, metadata !83, metadata !4, metadata !50, metadata !6}
!83 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<32, true> &"}
!84 = metadata !{null, metadata !28, metadata !29, metadata !85, metadata !31, metadata !52, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!86 = metadata !{null, metadata !34, metadata !2, metadata !87, metadata !4, metadata !50, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"int"}
!88 = metadata !{null, metadata !28, metadata !29, metadata !89, metadata !31, metadata !55, metadata !6}
!89 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!90 = metadata !{null, metadata !28, metadata !29, metadata !91, metadata !31, metadata !55, metadata !6}
!91 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!92 = metadata !{null, metadata !28, metadata !29, metadata !85, metadata !31, metadata !55, metadata !6}
!93 = metadata !{null, metadata !28, metadata !29, metadata !94, metadata !31, metadata !55, metadata !6}
!94 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!95 = metadata !{null, metadata !28, metadata !29, metadata !96, metadata !31, metadata !55, metadata !6}
!96 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!97 = metadata !{null, metadata !28, metadata !29, metadata !98, metadata !31, metadata !55, metadata !6}
!98 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!99 = metadata !{null, metadata !28, metadata !29, metadata !100, metadata !31, metadata !101, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const struct stream_packet &"}
!101 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!102 = metadata !{null, metadata !34, metadata !2, metadata !41, metadata !4, metadata !103, metadata !6}
!103 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!104 = metadata !{null, metadata !105, metadata !106, metadata !107, metadata !108, metadata !109, metadata !6}
!105 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!106 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!107 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!108 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!109 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!110 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !77, metadata !6}
!111 = metadata !{null, metadata !28, metadata !29, metadata !112, metadata !31, metadata !58, metadata !6}
!112 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!113 = metadata !{null, metadata !28, metadata !29, metadata !114, metadata !31, metadata !55, metadata !6}
!114 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!115 = metadata !{null, metadata !28, metadata !29, metadata !116, metadata !31, metadata !55, metadata !6}
!116 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<32> &"}
!117 = metadata !{null, metadata !28, metadata !29, metadata !118, metadata !31, metadata !52, metadata !6}
!118 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!119 = metadata !{null, metadata !28, metadata !29, metadata !120, metadata !31, metadata !55, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!121 = metadata !{null, metadata !28, metadata !29, metadata !122, metadata !31, metadata !55, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!123 = metadata !{null, metadata !28, metadata !29, metadata !120, metadata !31, metadata !52, metadata !6}
!124 = metadata !{null, metadata !28, metadata !29, metadata !118, metadata !31, metadata !55, metadata !6}
!125 = metadata !{null, metadata !28, metadata !29, metadata !91, metadata !31, metadata !77, metadata !6}
!126 = metadata !{null, metadata !28, metadata !29, metadata !91, metadata !31, metadata !52, metadata !6}
!127 = metadata !{null, metadata !28, metadata !29, metadata !85, metadata !31, metadata !77, metadata !6}
!128 = metadata !{null, metadata !28, metadata !29, metadata !94, metadata !31, metadata !77, metadata !6}
!129 = metadata !{null, metadata !28, metadata !29, metadata !94, metadata !31, metadata !52, metadata !6}
!130 = metadata !{null, metadata !105, metadata !106, metadata !131, metadata !108, metadata !109, metadata !6}
!131 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!132 = metadata !{null, metadata !28, metadata !29, metadata !100, metadata !31, metadata !32, metadata !6}
!133 = metadata !{null, metadata !28, metadata !29, metadata !134, metadata !31, metadata !55, metadata !6}
!134 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!135 = metadata !{null, metadata !28, metadata !29, metadata !136, metadata !31, metadata !32, metadata !6}
!136 = metadata !{metadata !"kernel_arg_type", metadata !"const struct envelope &"}
!137 = metadata !{metadata !138, i32* @world_rank}
!138 = metadata !{metadata !139}
!139 = metadata !{i32 0, i32 31, metadata !140}
!140 = metadata !{metadata !141}
!141 = metadata !{metadata !"world_rank", metadata !142, metadata !"int", i32 0, i32 31}
!142 = metadata !{metadata !143}
!143 = metadata !{i32 0, i32 0, i32 1}
!144 = metadata !{metadata !145, i40* @stream_out_V_user_V}
!145 = metadata !{metadata !146}
!146 = metadata !{i32 0, i32 39, metadata !147}
!147 = metadata !{metadata !148}
!148 = metadata !{metadata !"stream_out.V.user.V", metadata !142, metadata !"uint40", i32 0, i32 39}
!149 = metadata !{metadata !150, i1* @stream_out_V_last_V}
!150 = metadata !{metadata !151}
!151 = metadata !{i32 0, i32 0, metadata !152}
!152 = metadata !{metadata !153}
!153 = metadata !{metadata !"stream_out.V.last.V", metadata !142, metadata !"uint1", i32 0, i32 0}
!154 = metadata !{metadata !155, i8* @stream_out_V_id_V}
!155 = metadata !{metadata !156}
!156 = metadata !{i32 0, i32 7, metadata !157}
!157 = metadata !{metadata !158}
!158 = metadata !{metadata !"stream_out.V.id.V", metadata !142, metadata !"uint8", i32 0, i32 7}
!159 = metadata !{metadata !160, i8* @stream_out_V_dest_V}
!160 = metadata !{metadata !161}
!161 = metadata !{i32 0, i32 7, metadata !162}
!162 = metadata !{metadata !163}
!163 = metadata !{metadata !"stream_out.V.dest.V", metadata !142, metadata !"uint8", i32 0, i32 7}
!164 = metadata !{metadata !165, i64* @stream_out_V_data_V}
!165 = metadata !{metadata !166}
!166 = metadata !{i32 0, i32 63, metadata !167}
!167 = metadata !{metadata !168}
!168 = metadata !{metadata !"stream_out.V.data.V", metadata !142, metadata !"uint64", i32 0, i32 63}
!169 = metadata !{metadata !170, i40* @stream_in_V_user_V}
!170 = metadata !{metadata !171}
!171 = metadata !{i32 0, i32 39, metadata !172}
!172 = metadata !{metadata !173}
!173 = metadata !{metadata !"stream_in.V.user.V", metadata !142, metadata !"uint40", i32 0, i32 39}
!174 = metadata !{metadata !175, i1* @stream_in_V_last_V}
!175 = metadata !{metadata !176}
!176 = metadata !{i32 0, i32 0, metadata !177}
!177 = metadata !{metadata !178}
!178 = metadata !{metadata !"stream_in.V.last.V", metadata !142, metadata !"uint1", i32 0, i32 0}
!179 = metadata !{metadata !180, i8* @stream_in_V_id_V}
!180 = metadata !{metadata !181}
!181 = metadata !{i32 0, i32 7, metadata !182}
!182 = metadata !{metadata !183}
!183 = metadata !{metadata !"stream_in.V.id.V", metadata !142, metadata !"uint8", i32 0, i32 7}
!184 = metadata !{metadata !185, i8* @stream_in_V_dest_V}
!185 = metadata !{metadata !186}
!186 = metadata !{i32 0, i32 7, metadata !187}
!187 = metadata !{metadata !188}
!188 = metadata !{metadata !"stream_in.V.dest.V", metadata !142, metadata !"uint8", i32 0, i32 7}
!189 = metadata !{metadata !190, i64* @stream_in_V_data_V}
!190 = metadata !{metadata !191}
!191 = metadata !{i32 0, i32 63, metadata !192}
!192 = metadata !{metadata !193}
!193 = metadata !{metadata !"stream_in.V.data.V", metadata !142, metadata !"uint64", i32 0, i32 63}
!194 = metadata !{metadata !195, i64* @start_time}
!195 = metadata !{metadata !196}
!196 = metadata !{i32 0, i32 63, metadata !197}
!197 = metadata !{metadata !198}
!198 = metadata !{metadata !"start_time", metadata !142, metadata !"long int", i32 0, i32 63}
!199 = metadata !{metadata !200, i32* @processorCount}
!200 = metadata !{metadata !201}
!201 = metadata !{i32 0, i32 31, metadata !202}
!202 = metadata !{metadata !203}
!203 = metadata !{metadata !"processorCount", metadata !142, metadata !"int", i32 0, i32 31}
!204 = metadata !{metadata !205, [4 x i32]* @llvm_global_ctors_0}
!205 = metadata !{metadata !206}
!206 = metadata !{i32 0, i32 31, metadata !207}
!207 = metadata !{metadata !208}
!208 = metadata !{metadata !"llvm.global_ctors.0", metadata !209, metadata !"", i32 0, i32 31}
!209 = metadata !{metadata !210}
!210 = metadata !{i32 0, i32 3, i32 1}
!211 = metadata !{metadata !212, i16* @id_in_V}
!212 = metadata !{metadata !213}
!213 = metadata !{i32 0, i32 15, metadata !214}
!214 = metadata !{metadata !215}
!215 = metadata !{metadata !"id_in.V", metadata !142, metadata !"uint16", i32 0, i32 15}
!216 = metadata !{metadata !217, i64* @end_time}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 63, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"end_time", metadata !142, metadata !"long int", i32 0, i32 63}
!221 = metadata !{metadata !222, i121* @stream_out_V}
!222 = metadata !{metadata !166, metadata !223, metadata !224, metadata !225, metadata !226}
!223 = metadata !{i32 64, i32 71, metadata !162}
!224 = metadata !{i32 72, i32 72, metadata !152}
!225 = metadata !{i32 73, i32 80, metadata !157}
!226 = metadata !{i32 81, i32 120, metadata !147}
!227 = metadata !{metadata !228, i121* @stream_in_V}
!228 = metadata !{metadata !191, metadata !229, metadata !230, metadata !231, metadata !232}
!229 = metadata !{i32 64, i32 71, metadata !187}
!230 = metadata !{i32 72, i32 72, metadata !177}
!231 = metadata !{i32 73, i32 80, metadata !182}
!232 = metadata !{i32 81, i32 120, metadata !172}
!233 = metadata !{metadata !234}
!234 = metadata !{i32 0, i32 15, metadata !235}
!235 = metadata !{metadata !236}
!236 = metadata !{metadata !"id.V", metadata !237, metadata !"uint16", i32 0, i32 15}
!237 = metadata !{metadata !238}
!238 = metadata !{i32 0, i32 0, i32 0}
