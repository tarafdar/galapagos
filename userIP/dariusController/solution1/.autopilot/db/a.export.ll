; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/dariusController/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@time_V = internal unnamed_addr global i64 0
@stream_out_V_user_V = global i40 0
@stream_out_V_last_V = global i1 false
@stream_out_V_keep_V = global i8 0
@stream_out_V_id_V = global i8 0
@stream_out_V_dest_V = global i8 0
@stream_out_V_data_V = global i64 0
@stream_out_V = global i129 0
@stream_in_V_user_V = global i40 0
@stream_in_V_last_V = global i1 false
@stream_in_V_keep_V = global i8 0
@stream_in_V_id_V = global i8 0
@stream_in_V_dest_V = global i8 0
@stream_in_V_data_V = global i64 0
@stream_in_V = global i129 0
@state_1 = internal unnamed_addr global i2 0, align 1
@state = internal unnamed_addr global i2 0, align 1
@llvm_global_ctors_1 = appending global [2 x void ()*] [void ()* @_GLOBAL__I_a, void ()* @_GLOBAL__I_a10]
@llvm_global_ctors_0 = appending global [2 x i32] [i32 65535, i32 65535]
@int_request_array_TA = internal unnamed_addr global [512 x i8] zeroinitializer
@int_request_array_SR = internal unnamed_addr global [512 x i8] zeroinitializer
@int_request_array_PK = internal unnamed_addr global [512 x i1] zeroinitializer
@int_request_array_MS = internal unnamed_addr global [512 x i16] zeroinitializer
@int_request_array_DE = internal unnamed_addr global [512 x i16] zeroinitializer
@int_request_array_DA_1 = internal unnamed_addr global [512 x i4] zeroinitializer
@int_request_array_DA = internal unnamed_addr global [512 x i4] zeroinitializer
@int_req_num = internal unnamed_addr global i32 0, align 4
@int_clr_num = internal unnamed_addr global i32 0, align 4
@int_clr2snd_array_TA = internal unnamed_addr global [512 x i8] zeroinitializer
@int_clr2snd_array_SR = internal unnamed_addr global [512 x i8] zeroinitializer
@int_clr2snd_array_PK = internal unnamed_addr global [512 x i1] zeroinitializer
@int_clr2snd_array_MS = internal unnamed_addr global [512 x i16] zeroinitializer
@int_clr2snd_array_DE = internal unnamed_addr global [512 x i16] zeroinitializer
@int_clr2snd_array_DA = internal unnamed_addr global [512 x i4] zeroinitializer
@id_in_V = external global i16
@float_request_array_7 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_request_array_6 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_request_array_5 = internal unnamed_addr global [512 x i8] zeroinitializer
@float_request_array_4 = internal unnamed_addr global [512 x i8] zeroinitializer
@float_request_array_3 = internal unnamed_addr global [512 x i16] zeroinitializer
@float_request_array_1 = internal unnamed_addr global [512 x i16] zeroinitializer
@float_request_array_s = internal unnamed_addr global [512 x i8] zeroinitializer
@float_req_num = internal unnamed_addr global i32 0, align 4
@float_clr_num = internal unnamed_addr global i32 0, align 4
@float_clr2snd_array_6 = internal unnamed_addr global [512 x i4] zeroinitializer
@float_clr2snd_array_5 = internal unnamed_addr global [512 x i8] zeroinitializer
@float_clr2snd_array_4 = internal unnamed_addr global [512 x i1] zeroinitializer
@float_clr2snd_array_3 = internal unnamed_addr global [512 x i16] zeroinitializer
@float_clr2snd_array_1 = internal unnamed_addr global [512 x i16] zeroinitializer
@float_clr2snd_array_s = internal unnamed_addr global [512 x i8] zeroinitializer
@envlp_SRC_V_1 = internal unnamed_addr global i8 0
@envlp_SRC_V = internal unnamed_addr global i8 0
@envlp_MSG_SIZE_V_1 = internal unnamed_addr global i16 0
@envlp_MSG_SIZE_V = internal unnamed_addr global i16 0
@envlp_DEST_V_1 = internal unnamed_addr global i16 0
@envlp_DEST_V = internal unnamed_addr global i16 0
@dariusController_str = internal unnamed_addr constant [17 x i8] c"dariusController\00"
@ap_fifo_str = internal unnamed_addr constant [8 x i8] c"ap_fifo\00"
@p_str9 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str13 = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1
@p_str12 = private unnamed_addr constant [6 x i8] c"AXI4M\00", align 1
@p_str11 = private unnamed_addr constant [7 x i8] c"ap_bus\00", align 1
@p_str10 = private unnamed_addr constant [11 x i8] c"AXI4Stream\00", align 1
@p_str = internal unnamed_addr constant [1 x i8] zeroinitializer

declare i40 @llvm.part.set.i40.i8(i40, i8, i32, i32) nounwind readnone

declare i40 @llvm.part.set.i40.i4(i40, i4, i32, i32) nounwind readnone

declare i40 @llvm.part.set.i40.i32(i40, i32, i32, i32) nounwind readnone

declare i129 @llvm.part.set.i129.i8(i129, i8, i32, i32) nounwind readnone

declare i129 @llvm.part.set.i129.i72(i129, i72, i32, i32) nounwind readnone

declare i129 @llvm.part.set.i129.i64(i129, i64, i32, i32) nounwind readnone

declare i129 @llvm.part.set.i129.i40(i129, i40, i32, i32) nounwind readnone

declare i79 @llvm.part.select.i79(i79, i32, i32) nounwind readnone

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i129 @llvm.part.select.i129(i129, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @dariusController(float* %mem, i32* %darius_driver) {
  %parameter_mem_info_f = alloca float
  %parameter_mem_info_f_1 = alloca float
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem), !map !211
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %darius_driver), !map !217
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @dariusController_str) nounwind
  %darius_info = alloca [7 x i32], align 16
  %cumulative_cycle_cou = alloca [1 x i32], align 4
  %darius_info_float = alloca [7 x float], align 16
  call void (...)* @_ssdm_op_SpecIFCore(i129* @stream_out_V, [1 x i8]* @p_str8, [11 x i8]* @p_str10, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i129* @stream_in_V, [1 x i8]* @p_str8, [11 x i8]* @p_str10, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [7 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str8, i32 0, i64 2147483648, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecIFCore(float* %mem, [1 x i8]* @p_str8, [6 x i8]* @p_str12, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecInterface(i32* %darius_driver, [7 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %darius_driver, [1 x i8]* @p_str8, [6 x i8]* @p_str12, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str13, i32 0, i32 0, [1 x i8]* @p_str8, i32 0, i32 0, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str8, [1 x i8]* @p_str8) nounwind
  %id_in_V_load = load i16* @id_in_V, align 2
  %rank = zext i16 %id_in_V_load to i32
  %rank_cast = zext i16 %id_in_V_load to i17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge, %0
  %parameter_mem_info_f_2 = load float* %parameter_mem_info_f
  %parameter_mem_info_f_3 = load float* %parameter_mem_info_f_1
  %call_ret1 = call fastcc { i32, float, float } @MPI_Recv.1.2211(float %parameter_mem_info_f_2, float %parameter_mem_info_f_3) nounwind
  %tmp = extractvalue { i32, float, float } %call_ret1, 0
  %parameter_mem_info_f_4 = extractvalue { i32, float, float } %call_ret1, 1
  %parameter_mem_info_f_5 = extractvalue { i32, float, float } %call_ret1, 2
  %tmp_s = icmp eq i32 %tmp, 0
  store float %parameter_mem_info_f_5, float* %parameter_mem_info_f_1
  store float %parameter_mem_info_f_4, float* %parameter_mem_info_f
  br i1 %tmp_s, label %._crit_edge, label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %._crit_edge
  %parameter_mem_info_1 = alloca i32
  %parameter_mem_info_1_1 = alloca i32
  br label %.preheader9

.preheader9:                                      ; preds = %.preheader9.preheader, %1
  %i = phi i2 [ %i_1, %1 ], [ 0, %.preheader9.preheader ]
  %exitcond3 = icmp eq i2 %i, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2, i64 2, i64 2) nounwind
  %i_1 = add i2 %i, 1
  br i1 %exitcond3, label %.preheader8.preheader, label %1

.preheader8.preheader:                            ; preds = %.preheader9
  %parameter_mem_info_1_2 = load i32* %parameter_mem_info_1
  %parameter_mem_info_1_3 = load i32* %parameter_mem_info_1_1
  %tmp_2 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %parameter_mem_info_1_2, i32 2, i32 31)
  %tmp_3 = sext i30 %tmp_2 to i62
  %tmp_4 = zext i62 %tmp_3 to i64
  %tmp_6 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %parameter_mem_info_1_3, i32 2, i32 31)
  br label %.preheader8

; <label>:1                                       ; preds = %.preheader9
  %parameter_mem_info_1_4 = load i32* %parameter_mem_info_1
  %parameter_mem_info_1_5 = load i32* %parameter_mem_info_1_1
  %tmp_1 = trunc i2 %i to i1
  %x_assign = select i1 %tmp_1, float %parameter_mem_info_f_5, float %parameter_mem_info_f_4
  %p_Val2_1 = bitcast float %x_assign to i32
  %p_Result_s = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_1, i32 31)
  %loc_V = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_1, i32 23, i32 30) nounwind
  %loc_V_1 = trunc i32 %p_Val2_1 to i23
  %tmp_4_i_i_i = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_1, i1 false)
  %tmp_4_i_i_i_cast9 = zext i25 %tmp_4_i_i_i to i79
  %tmp_i_i_i_i_cast8 = zext i8 %loc_V to i9
  %sh_assign = add i9 -127, %tmp_i_i_i_i_cast8
  %isNeg = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign, i32 8)
  %tmp_6_i_i_i = sub i8 127, %loc_V
  %tmp_6_i_i_i_cast = sext i8 %tmp_6_i_i_i to i9
  %sh_assign_1 = select i1 %isNeg, i9 %tmp_6_i_i_i_cast, i9 %sh_assign
  %sh_assign_1_cast = sext i9 %sh_assign_1 to i32
  %sh_assign_1_cast_cas = sext i9 %sh_assign_1 to i25
  %tmp_8_i_i_i = zext i32 %sh_assign_1_cast to i79
  %tmp_9_i_i_i = lshr i25 %tmp_4_i_i_i, %sh_assign_1_cast_cas
  %tmp_1_i_i_i = shl i79 %tmp_4_i_i_i_cast9, %tmp_8_i_i_i
  %tmp_28 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_9_i_i_i, i32 24)
  %tmp_5 = zext i1 %tmp_28 to i32
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79 %tmp_1_i_i_i, i32 24, i32 55)
  %p_Val2_3 = select i1 %isNeg, i32 %tmp_5, i32 %tmp_8
  %p_Val2_i_i_i = sub i32 0, %p_Val2_3
  %p_Val2_17 = select i1 %p_Result_s, i32 %p_Val2_i_i_i, i32 %p_Val2_3
  %parameter_mem_info_1_6 = select i1 %tmp_1, i32 %p_Val2_17, i32 %parameter_mem_info_1_5
  %parameter_mem_info_1_7 = select i1 %tmp_1, i32 %parameter_mem_info_1_4, i32 %p_Val2_17
  store i32 %parameter_mem_info_1_6, i32* %parameter_mem_info_1_1
  store i32 %parameter_mem_info_1_7, i32* %parameter_mem_info_1
  br label %.preheader9

.preheader8:                                      ; preds = %.preheader8, %.preheader8.preheader
  %tmp_12 = call fastcc i1 @MPI_Recv.1.2(float* %mem, i64 %tmp_4, i30 %tmp_6, i18 0)
  br i1 %tmp_12, label %.preheader7.preheader, label %.preheader8

.preheader7.preheader:                            ; preds = %.preheader8
  %data_mem_info_float_s = alloca float
  %data_mem_info_float_1 = alloca float
  %data_mem_info_float_2 = alloca float
  %data_mem_info_float_3 = alloca float
  br label %.preheader7

.preheader7:                                      ; preds = %.preheader7.preheader, %.preheader7
  %data_mem_info_float_4 = load float* %data_mem_info_float_s
  %data_mem_info_float_5 = load float* %data_mem_info_float_1
  %data_mem_info_float_6 = load float* %data_mem_info_float_2
  %data_mem_info_float_7 = load float* %data_mem_info_float_3
  %call_ret = call fastcc { i32, float, float, float, float } @MPI_Recv.1.2210(float %data_mem_info_float_4, float %data_mem_info_float_5, float %data_mem_info_float_6, float %data_mem_info_float_7) nounwind
  %tmp_7 = extractvalue { i32, float, float, float, float } %call_ret, 0
  %data_mem_info_float_8 = extractvalue { i32, float, float, float, float } %call_ret, 1
  %data_mem_info_float_9 = extractvalue { i32, float, float, float, float } %call_ret, 2
  %data_mem_info_float_10 = extractvalue { i32, float, float, float, float } %call_ret, 3
  %data_mem_info_float_11 = extractvalue { i32, float, float, float, float } %call_ret, 4
  %tmp_9 = icmp eq i32 %tmp_7, 0
  store float %data_mem_info_float_11, float* %data_mem_info_float_3
  store float %data_mem_info_float_10, float* %data_mem_info_float_2
  store float %data_mem_info_float_9, float* %data_mem_info_float_1
  store float %data_mem_info_float_8, float* %data_mem_info_float_s
  br i1 %tmp_9, label %.preheader7, label %.preheader6.preheader

.preheader6.preheader:                            ; preds = %.preheader7
  %data_mem_info_1 = alloca i32
  %data_mem_info_1_1 = alloca i32
  br label %.preheader6

.preheader6:                                      ; preds = %.preheader6.backedge, %.preheader6.preheader
  %i1 = phi i3 [ 0, %.preheader6.preheader ], [ %i_2, %.preheader6.backedge ]
  %exitcond2 = icmp eq i3 %i1, -4
  %empty_33 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4, i64 4, i64 4) nounwind
  %i_2 = add i3 %i1, 1
  br i1 %exitcond2, label %.preheader5.preheader, label %2

.preheader5.preheader:                            ; preds = %.preheader6
  br label %.preheader5

; <label>:2                                       ; preds = %.preheader6
  %tmp_29 = trunc i3 %i1 to i2
  %x_assign_1 = call float @_ssdm_op_Mux.ap_auto.4float.i2(float %data_mem_info_float_8, float %data_mem_info_float_9, float %data_mem_info_float_10, float %data_mem_info_float_11, i2 %tmp_29) nounwind
  %p_Val2_6 = bitcast float %x_assign_1 to i32
  %p_Result_1 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_6, i32 31)
  %loc_V_2 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_6, i32 23, i32 30) nounwind
  %loc_V_3 = trunc i32 %p_Val2_6 to i23
  %tmp_4_i_i_i1 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_3, i1 false)
  %tmp_4_i_i_i1_cast6 = zext i25 %tmp_4_i_i_i1 to i79
  %tmp_i_i_i_i1_cast5 = zext i8 %loc_V_2 to i9
  %sh_assign_2 = add i9 -127, %tmp_i_i_i_i1_cast5
  %isNeg_1 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_2, i32 8)
  %tmp_6_i_i_i1 = sub i8 127, %loc_V_2
  %tmp_6_i_i_i1_cast = sext i8 %tmp_6_i_i_i1 to i9
  %sh_assign_3 = select i1 %isNeg_1, i9 %tmp_6_i_i_i1_cast, i9 %sh_assign_2
  %sh_assign_3_cast = sext i9 %sh_assign_3 to i32
  %sh_assign_3_cast_cas = sext i9 %sh_assign_3 to i25
  %tmp_8_i_i_i1 = zext i32 %sh_assign_3_cast to i79
  %tmp_9_i_i_i1 = lshr i25 %tmp_4_i_i_i1, %sh_assign_3_cast_cas
  %tmp_1_i_i_i1 = shl i79 %tmp_4_i_i_i1_cast6, %tmp_8_i_i_i1
  %tmp_33 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_9_i_i_i1, i32 24)
  %tmp_16 = zext i1 %tmp_33 to i32
  %tmp_20 = call i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79 %tmp_1_i_i_i1, i32 24, i32 55)
  %p_Val2_8 = select i1 %isNeg_1, i32 %tmp_16, i32 %tmp_20
  %p_Val2_i_i_i1 = sub i32 0, %p_Val2_8
  %p_Val2_18 = select i1 %p_Result_1, i32 %p_Val2_i_i_i1, i32 %p_Val2_8
  switch i2 %tmp_29, label %.preheader6.backedge [
    i2 0, label %branch2
    i2 1, label %branch3
  ]

.preheader5:                                      ; preds = %.preheader5.preheader, %.preheader5
  %tmp_10 = call fastcc i1 @MPI_Recv.1.1([7 x float]* %darius_info_float) nounwind
  br i1 %tmp_10, label %.preheader4.preheader, label %.preheader5

.preheader4.preheader:                            ; preds = %.preheader5
  br label %.preheader4

.preheader4:                                      ; preds = %.preheader4.preheader, %3
  %i2 = phi i3 [ %i_3, %3 ], [ 0, %.preheader4.preheader ]
  %exitcond1 = icmp eq i3 %i2, -1
  %empty_34 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 7, i64 7, i64 7) nounwind
  %i_3 = add i3 %i2, 1
  br i1 %exitcond1, label %.loopexit, label %3

; <label>:3                                       ; preds = %.preheader4
  %tmp_18 = zext i3 %i2 to i64
  %darius_info_float_ad = getelementptr inbounds [7 x float]* %darius_info_float, i64 0, i64 %tmp_18
  %darius_info_float_lo = load float* %darius_info_float_ad, align 4
  %p_Val2_s = bitcast float %darius_info_float_lo to i32
  %p_Result_2 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %p_Val2_s, i32 31)
  %loc_V_4 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %p_Val2_s, i32 23, i32 30) nounwind
  %loc_V_5 = trunc i32 %p_Val2_s to i23
  %tmp_4_i_i_i2 = call i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1 true, i23 %loc_V_5, i1 false)
  %tmp_4_i_i_i2_cast3 = zext i25 %tmp_4_i_i_i2 to i79
  %tmp_i_i_i_i2_cast2 = zext i8 %loc_V_4 to i9
  %sh_assign_4 = add i9 -127, %tmp_i_i_i_i2_cast2
  %isNeg_2 = call i1 @_ssdm_op_BitSelect.i1.i9.i32(i9 %sh_assign_4, i32 8)
  %tmp_6_i_i_i2 = sub i8 127, %loc_V_4
  %tmp_6_i_i_i2_cast = sext i8 %tmp_6_i_i_i2 to i9
  %sh_assign_5 = select i1 %isNeg_2, i9 %tmp_6_i_i_i2_cast, i9 %sh_assign_4
  %sh_assign_5_cast = sext i9 %sh_assign_5 to i32
  %sh_assign_5_cast_cas = sext i9 %sh_assign_5 to i25
  %tmp_8_i_i_i2 = zext i32 %sh_assign_5_cast to i79
  %tmp_9_i_i_i2 = lshr i25 %tmp_4_i_i_i2, %sh_assign_5_cast_cas
  %tmp_1_i_i_i2 = shl i79 %tmp_4_i_i_i2_cast3, %tmp_8_i_i_i2
  %tmp_37 = call i1 @_ssdm_op_BitSelect.i1.i25.i32(i25 %tmp_9_i_i_i2, i32 24)
  %tmp_21 = zext i1 %tmp_37 to i32
  %tmp_23 = call i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79 %tmp_1_i_i_i2, i32 24, i32 55)
  %p_Val2_14 = select i1 %isNeg_2, i32 %tmp_21, i32 %tmp_23
  %p_Val2_i_i_i2 = sub i32 0, %p_Val2_14
  %p_Val2_16 = select i1 %p_Result_2, i32 %p_Val2_i_i_i2, i32 %p_Val2_14
  %darius_info_addr_2 = getelementptr inbounds [7 x i32]* %darius_info, i64 0, i64 %tmp_18
  store i32 %p_Val2_16, i32* %darius_info_addr_2, align 4
  br label %.preheader4

.loopexit:                                        ; preds = %.preheader4
  %data_mem_info_1_loa = load i32* %data_mem_info_1
  %data_mem_info_1_1_l = load i32* %data_mem_info_1_1
  %darius_info_addr = getelementptr inbounds [7 x i32]* %darius_info, i64 0, i64 5
  %batch_size = load i32* %darius_info_addr, align 4
  %tmp_11 = icmp ugt i32 %rank, %batch_size
  %prev_rank = add i17 %rank_cast, -1
  %prev_rank_1 = select i1 %tmp_11, i17 %prev_rank, i17 0
  %cumulative_cycle_cou_1 = getelementptr inbounds [1 x i32]* %cumulative_cycle_cou, i64 0, i64 0
  %tmp_13 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %data_mem_info_1_loa, i32 2, i32 31)
  %tmp_14 = sext i30 %tmp_13 to i62
  %tmp_15 = zext i62 %tmp_14 to i64
  %tmp_17 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %data_mem_info_1_1_l, i32 2, i32 31)
  %darius_info_addr_1 = getelementptr inbounds [7 x i32]* %darius_info, i64 0, i64 0
  %darius_info_load = load i32* %darius_info_addr_1, align 16
  %darius_driver_addr = getelementptr i32* %darius_driver, i64 24
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %._crit_edge10, %.loopexit
  %tmp_19 = call fastcc i1 @MPI_Recv([1 x i32]* %cumulative_cycle_cou, i17 %prev_rank_1) nounwind
  br i1 %tmp_19, label %4, label %._crit_edge10

; <label>:4                                       ; preds = %._crit_edge10
  store i32 0, i32* %cumulative_cycle_cou_1, align 4
  %prev_rank_1_cast_cas = sext i17 %prev_rank_1 to i18
  br label %._crit_edge11

._crit_edge11:                                    ; preds = %._crit_edge11, %4
  %tmp_22 = call fastcc i1 @MPI_Recv.1.2(float* %mem, i64 %tmp_15, i30 %tmp_17, i18 %prev_rank_1_cast_cas)
  br i1 %tmp_22, label %5, label %._crit_edge11

; <label>:5                                       ; preds = %._crit_edge11
  %darius_driver_addr_r = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %darius_driver_addr, i32 1)
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %darius_driver_addr, i32 %darius_info_load)
  %darius_driver_addr_1 = getelementptr i32* %darius_driver, i64 28
  br label %6

; <label>:6                                       ; preds = %burstWrDataBB, %5
  %i3 = phi i3 [ 0, %5 ], [ %i_4, %burstWrDataBB ]
  %exitcond = icmp eq i3 %i3, -2
  %empty_35 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 6, i64 6, i64 6) nounwind
  %i_4 = add i3 %i3, 1
  br i1 %exitcond, label %8, label %7

; <label>:7                                       ; preds = %6
  %tmp_24 = zext i3 %i_4 to i64
  %darius_info_addr_3 = getelementptr inbounds [7 x i32]* %darius_info, i64 0, i64 %tmp_24
  %darius_info_load_1 = load i32* %darius_info_addr_3, align 4
  %is_0iter = icmp eq i3 %i3, 0
  br i1 %is_0iter, label %burstWrReqBB, label %burstWrDataBB

burstWrReqBB:                                     ; preds = %7
  %darius_driver_addr_1_1 = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %darius_driver_addr_1, i32 6)
  br label %burstWrDataBB

burstWrDataBB:                                    ; preds = %burstWrReqBB, %7
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %darius_driver_addr_1, i32 %darius_info_load_1)
  br label %6

; <label>:8                                       ; preds = %6
  %darius_driver_req = call i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32* %darius_driver, i32 1)
  call void @_ssdm_op_Write.ap_bus.i32P(i32* %darius_driver, i32 1)
  br label %9

; <label>:9                                       ; preds = %9, %8
  br label %9

branch2:                                          ; preds = %2
  store i32 %p_Val2_18, i32* %data_mem_info_1
  br label %.preheader6.backedge

branch3:                                          ; preds = %2
  store i32 %p_Val2_18, i32* %data_mem_info_1_1
  br label %.preheader6.backedge

.preheader6.backedge:                             ; preds = %branch3, %branch2, %2
  br label %.preheader6
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.i32P(i32*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.ap_bus.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129*, i129) {
entry:
  %empty = call i129 @_autotb_FifoWrite_i129(i129* %0, i129 %1)
  ret void
}

define weak void @_ssdm_op_Write.ap_bus.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_bus.floatP(float*, float) {
entry:
  store float %1, float* %0
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

define weak i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129*) {
entry:
  %empty = call i129 @_autotb_FifoRead_i129(i129* %0)
  ret i129 %empty
}

define weak i64 @_ssdm_op_Read.ap_auto.i64(i64) {
entry:
  ret i64 %0
}

define weak i30 @_ssdm_op_Read.ap_auto.i30(i30) {
entry:
  ret i30 %0
}

define weak i18 @_ssdm_op_Read.ap_auto.i18(i18) {
entry:
  ret i18 %0
}

define weak i17 @_ssdm_op_Read.ap_auto.i17(i17) {
entry:
  ret i17 %0
}

define weak float @_ssdm_op_Read.ap_auto.float(float) {
entry:
  ret float %0
}

define weak i40 @_ssdm_op_PartSet.i40.i40.i8.i32.i32(i40, i8, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.set.i40.i8(i40 %0, i8 %1, i32 %2, i32 %3)
  ret i40 %empty
}

define weak i129 @_ssdm_op_PartSet.i129.i129.i72.i32.i32(i129, i72, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.set.i129.i72(i129 %0, i72 %1, i32 %2, i32 %3)
  ret i129 %empty
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_36 = trunc i32 %empty to i8
  ret i8 %empty_36
}

declare i8 @_ssdm_op_PartSelect.i8.i16.i32.i32(i16, i32, i32) nounwind readnone

define weak i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_37 = trunc i129 %empty to i8
  ret i8 %empty_37
}

define weak i64 @_ssdm_op_PartSelect.i64.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_38 = trunc i129 %empty to i64
  ret i64 %empty_38
}

define weak i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_39 = trunc i129 %empty to i4
  ret i4 %empty_39
}

declare i33 @_ssdm_op_PartSelect.i33.i64.i32.i32(i64, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i79.i32.i32(i79, i32, i32) nounwind readnone {
entry:
  %empty = call i79 @llvm.part.select.i79(i79 %0, i32 %1, i32 %2)
  %empty_40 = trunc i79 %empty to i32
  ret i32 %empty_40
}

define weak i32 @_ssdm_op_PartSelect.i32.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_41 = trunc i129 %empty to i32
  ret i32 %empty_41
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_42 = trunc i32 %empty to i31
  ret i31 %empty_42
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_43 = trunc i32 %empty to i30
  ret i30 %empty_43
}

declare i3 @_ssdm_op_PartSelect.i3.i4.i32.i32(i4, i32, i32) nounwind readnone

declare i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i2 @_ssdm_op_PartSelect.i2.i3.i32.i32(i3, i32, i32) nounwind readnone

declare i17 @_ssdm_op_PartSelect.i17.i18.i32.i32(i18, i32, i32) nounwind readnone

declare i16 @_ssdm_op_PartSelect.i16.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129, i32, i32) nounwind readnone {
entry:
  %empty = call i129 @llvm.part.select.i129(i129 %0, i32 %1, i32 %2)
  %empty_44 = trunc i129 %empty to i16
  ret i16 %empty_44
}

define weak i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_45 = trunc i32 %empty to i15
  ret i15 %empty_45
}

declare i12 @_ssdm_op_PartSelect.i12.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i1 @_ssdm_op_PartSelect.i1.i2.i32.i32(i2, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129*, i32) {
entry:
  %empty = call i1 @_autotb_FifoCanRead_i129(i129* %0)
  ret i1 %empty
}

define weak float @_ssdm_op_Mux.ap_auto.4float.i2(float, float, float, float, i2) {
entry:
  switch i2 %4, label %case3 [
    i2 0, label %case0
    i2 1, label %case1
    i2 -2, label %case2
  ]

case0:                                            ; preds = %case3, %case2, %case1, %entry
  %merge = phi float [ %0, %entry ], [ %1, %case1 ], [ %2, %case2 ], [ %3, %case3 ]
  ret float %merge

case1:                                            ; preds = %entry
  br label %case0

case2:                                            ; preds = %entry
  br label %case0

case3:                                            ; preds = %entry
  br label %case0
}

define weak i129 @_ssdm_op_BitSet.i129.i129.i32.i1(i129, i32, i1) nounwind readnone {
entry:
  %empty = icmp ne i1 %2, false
  %empty_46 = zext i1 %empty to i129
  %empty_47 = zext i32 %1 to i129
  %empty_48 = shl i129 %empty_46, %empty_47
  %empty_49 = shl i129 1, %empty_47
  %empty_50 = xor i129 %empty_49, -1
  %empty_51 = and i129 %empty_50, %0
  %empty_52 = or i129 %empty_48, %empty_51
  ret i129 %empty_52
}

define weak i1 @_ssdm_op_BitSelect.i1.i9.i32(i9, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i9
  %empty_53 = shl i9 1, %empty
  %empty_54 = and i9 %0, %empty_53
  %empty_55 = icmp ne i9 %empty_54, 0
  ret i1 %empty_55
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_56 = and i32 %0, %empty
  %empty_57 = icmp ne i32 %empty_56, 0
  ret i1 %empty_57
}

define weak i1 @_ssdm_op_BitSelect.i1.i25.i32(i25, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i25
  %empty_58 = shl i25 1, %empty
  %empty_59 = and i25 %0, %empty_58
  %empty_60 = icmp ne i25 %empty_59, 0
  ret i1 %empty_60
}

define weak i1 @_ssdm_op_BitSelect.i1.i129.i32(i129, i32) nounwind readnone {
entry:
  %empty = zext i32 %1 to i129
  %empty_61 = shl i129 1, %empty
  %empty_62 = and i129 %0, %empty_61
  %empty_63 = icmp ne i129 %empty_62, 0
  ret i1 %empty_63
}

declare i72 @_ssdm_op_BitConcatenate.i72.i8.i64(i8, i64) nounwind readnone

define weak i72 @_ssdm_op_BitConcatenate.i72.i8.i4.i4.i8.i16.i8.i8.i16(i8, i4, i4, i8, i16, i8, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %6 to i24
  %empty_64 = zext i16 %7 to i24
  %empty_65 = shl i24 %empty, 16
  %empty_66 = or i24 %empty_65, %empty_64
  %empty_67 = zext i8 %5 to i32
  %empty_68 = zext i24 %empty_66 to i32
  %empty_69 = shl i32 %empty_67, 24
  %empty_70 = or i32 %empty_69, %empty_68
  %empty_71 = zext i16 %4 to i48
  %empty_72 = zext i32 %empty_70 to i48
  %empty_73 = shl i48 %empty_71, 32
  %empty_74 = or i48 %empty_73, %empty_72
  %empty_75 = zext i8 %3 to i56
  %empty_76 = zext i48 %empty_74 to i56
  %empty_77 = shl i56 %empty_75, 48
  %empty_78 = or i56 %empty_77, %empty_76
  %empty_79 = zext i4 %2 to i60
  %empty_80 = zext i56 %empty_78 to i60
  %empty_81 = shl i60 %empty_79, 56
  %empty_82 = or i60 %empty_81, %empty_80
  %empty_83 = zext i4 %1 to i64
  %empty_84 = zext i60 %empty_82 to i64
  %empty_85 = shl i64 %empty_83, 60
  %empty_86 = or i64 %empty_85, %empty_84
  %empty_87 = zext i8 %0 to i72
  %empty_88 = zext i64 %empty_86 to i72
  %empty_89 = shl i72 %empty_87, 64
  %empty_90 = or i72 %empty_89, %empty_88
  ret i72 %empty_90
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i4.i4.i8.i16.i8.i8.i16(i4, i4, i8, i16, i8, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %5 to i24
  %empty_91 = zext i16 %6 to i24
  %empty_92 = shl i24 %empty, 16
  %empty_93 = or i24 %empty_92, %empty_91
  %empty_94 = zext i8 %4 to i32
  %empty_95 = zext i24 %empty_93 to i32
  %empty_96 = shl i32 %empty_94, 24
  %empty_97 = or i32 %empty_96, %empty_95
  %empty_98 = zext i16 %3 to i48
  %empty_99 = zext i32 %empty_97 to i48
  %empty_100 = shl i48 %empty_98, 32
  %empty_101 = or i48 %empty_100, %empty_99
  %empty_102 = zext i8 %2 to i56
  %empty_103 = zext i48 %empty_101 to i56
  %empty_104 = shl i56 %empty_102, 48
  %empty_105 = or i56 %empty_104, %empty_103
  %empty_106 = zext i4 %1 to i60
  %empty_107 = zext i56 %empty_105 to i60
  %empty_108 = shl i60 %empty_106, 56
  %empty_109 = or i60 %empty_108, %empty_107
  %empty_110 = zext i4 %0 to i64
  %empty_111 = zext i60 %empty_109 to i64
  %empty_112 = shl i64 %empty_110, 60
  %empty_113 = or i64 %empty_112, %empty_111
  ret i64 %empty_113
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_114 = zext i3 %1 to i6
  %empty_115 = shl i6 %empty, 3
  %empty_116 = or i6 %empty_115, %empty_114
  ret i6 %empty_116
}

define weak i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2, i3) nounwind readnone {
entry:
  %empty = zext i2 %0 to i5
  %empty_117 = zext i3 %1 to i5
  %empty_118 = shl i5 %empty, 3
  %empty_119 = or i5 %empty_118, %empty_117
  ret i5 %empty_119
}

declare i32 @_ssdm_op_BitConcatenate.i32.i29.i3(i29, i3) nounwind readnone

define weak i25 @_ssdm_op_BitConcatenate.i25.i1.i23.i1(i1, i23, i1) nounwind readnone {
entry:
  %empty = zext i23 %1 to i24
  %empty_120 = zext i1 %2 to i24
  %empty_121 = shl i24 %empty, 1
  %empty_122 = or i24 %empty_121, %empty_120
  %empty_123 = zext i1 %0 to i25
  %empty_124 = zext i24 %empty_122 to i25
  %empty_125 = shl i25 %empty_123, 24
  %empty_126 = or i25 %empty_125, %empty_124
  ret i25 %empty_126
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i24.i8.i16(i48, i8, i1, i8, i4, i4, i8, i24, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %8 to i24
  %empty_127 = zext i16 %9 to i24
  %empty_128 = shl i24 %empty, 16
  %empty_129 = or i24 %empty_128, %empty_127
  %empty_130 = zext i24 %7 to i48
  %empty_131 = zext i24 %empty_129 to i48
  %empty_132 = shl i48 %empty_130, 24
  %empty_133 = or i48 %empty_132, %empty_131
  %empty_134 = zext i8 %6 to i56
  %empty_135 = zext i48 %empty_133 to i56
  %empty_136 = shl i56 %empty_134, 48
  %empty_137 = or i56 %empty_136, %empty_135
  %empty_138 = zext i4 %5 to i60
  %empty_139 = zext i56 %empty_137 to i60
  %empty_140 = shl i60 %empty_138, 56
  %empty_141 = or i60 %empty_140, %empty_139
  %empty_142 = zext i4 %4 to i64
  %empty_143 = zext i60 %empty_141 to i64
  %empty_144 = shl i64 %empty_142, 60
  %empty_145 = or i64 %empty_144, %empty_143
  %empty_146 = zext i8 %3 to i72
  %empty_147 = zext i64 %empty_145 to i72
  %empty_148 = shl i72 %empty_146, 64
  %empty_149 = or i72 %empty_148, %empty_147
  %empty_150 = zext i1 %2 to i73
  %empty_151 = zext i72 %empty_149 to i73
  %empty_152 = shl i73 %empty_150, 72
  %empty_153 = or i73 %empty_152, %empty_151
  %empty_154 = zext i8 %1 to i81
  %empty_155 = zext i73 %empty_153 to i81
  %empty_156 = shl i81 %empty_154, 73
  %empty_157 = or i81 %empty_156, %empty_155
  %empty_158 = zext i48 %0 to i129
  %empty_159 = zext i81 %empty_157 to i129
  %empty_160 = shl i129 %empty_158, 81
  %empty_161 = or i129 %empty_160, %empty_159
  ret i129 %empty_161
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i16.i8.i8.i16(i48, i8, i1, i8, i4, i4, i8, i16, i8, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %9 to i24
  %empty_162 = zext i16 %10 to i24
  %empty_163 = shl i24 %empty, 16
  %empty_164 = or i24 %empty_163, %empty_162
  %empty_165 = zext i8 %8 to i32
  %empty_166 = zext i24 %empty_164 to i32
  %empty_167 = shl i32 %empty_165, 24
  %empty_168 = or i32 %empty_167, %empty_166
  %empty_169 = zext i16 %7 to i48
  %empty_170 = zext i32 %empty_168 to i48
  %empty_171 = shl i48 %empty_169, 32
  %empty_172 = or i48 %empty_171, %empty_170
  %empty_173 = zext i8 %6 to i56
  %empty_174 = zext i48 %empty_172 to i56
  %empty_175 = shl i56 %empty_173, 48
  %empty_176 = or i56 %empty_175, %empty_174
  %empty_177 = zext i4 %5 to i60
  %empty_178 = zext i56 %empty_176 to i60
  %empty_179 = shl i60 %empty_177, 56
  %empty_180 = or i60 %empty_179, %empty_178
  %empty_181 = zext i4 %4 to i64
  %empty_182 = zext i60 %empty_180 to i64
  %empty_183 = shl i64 %empty_181, 60
  %empty_184 = or i64 %empty_183, %empty_182
  %empty_185 = zext i8 %3 to i72
  %empty_186 = zext i64 %empty_184 to i72
  %empty_187 = shl i72 %empty_185, 64
  %empty_188 = or i72 %empty_187, %empty_186
  %empty_189 = zext i1 %2 to i73
  %empty_190 = zext i72 %empty_188 to i73
  %empty_191 = shl i73 %empty_189, 72
  %empty_192 = or i73 %empty_191, %empty_190
  %empty_193 = zext i8 %1 to i81
  %empty_194 = zext i73 %empty_192 to i81
  %empty_195 = shl i81 %empty_193, 73
  %empty_196 = or i81 %empty_195, %empty_194
  %empty_197 = zext i48 %0 to i129
  %empty_198 = zext i81 %empty_196 to i129
  %empty_199 = shl i129 %empty_197, 81
  %empty_200 = or i129 %empty_199, %empty_198
  ret i129 %empty_200
}

define weak i129 @_ssdm_op_BitConcatenate.i129.i40.i8.i8.i1.i8.i4.i4.i8.i16.i8.i8.i16(i40, i8, i8, i1, i8, i4, i4, i8, i16, i8, i8, i16) nounwind readnone {
entry:
  %empty = zext i8 %10 to i24
  %empty_201 = zext i16 %11 to i24
  %empty_202 = shl i24 %empty, 16
  %empty_203 = or i24 %empty_202, %empty_201
  %empty_204 = zext i8 %9 to i32
  %empty_205 = zext i24 %empty_203 to i32
  %empty_206 = shl i32 %empty_204, 24
  %empty_207 = or i32 %empty_206, %empty_205
  %empty_208 = zext i16 %8 to i48
  %empty_209 = zext i32 %empty_207 to i48
  %empty_210 = shl i48 %empty_208, 32
  %empty_211 = or i48 %empty_210, %empty_209
  %empty_212 = zext i8 %7 to i56
  %empty_213 = zext i48 %empty_211 to i56
  %empty_214 = shl i56 %empty_212, 48
  %empty_215 = or i56 %empty_214, %empty_213
  %empty_216 = zext i4 %6 to i60
  %empty_217 = zext i56 %empty_215 to i60
  %empty_218 = shl i60 %empty_216, 56
  %empty_219 = or i60 %empty_218, %empty_217
  %empty_220 = zext i4 %5 to i64
  %empty_221 = zext i60 %empty_219 to i64
  %empty_222 = shl i64 %empty_220, 60
  %empty_223 = or i64 %empty_222, %empty_221
  %empty_224 = zext i8 %4 to i72
  %empty_225 = zext i64 %empty_223 to i72
  %empty_226 = shl i72 %empty_224, 64
  %empty_227 = or i72 %empty_226, %empty_225
  %empty_228 = zext i1 %3 to i73
  %empty_229 = zext i72 %empty_227 to i73
  %empty_230 = shl i73 %empty_228, 72
  %empty_231 = or i73 %empty_230, %empty_229
  %empty_232 = zext i8 %2 to i81
  %empty_233 = zext i73 %empty_231 to i81
  %empty_234 = shl i81 %empty_232, 73
  %empty_235 = or i81 %empty_234, %empty_233
  %empty_236 = zext i8 %1 to i89
  %empty_237 = zext i81 %empty_235 to i89
  %empty_238 = shl i89 %empty_236, 81
  %empty_239 = or i89 %empty_238, %empty_237
  %empty_240 = zext i40 %0 to i129
  %empty_241 = zext i89 %empty_239 to i129
  %empty_242 = shl i129 %empty_240, 89
  %empty_243 = or i129 %empty_242, %empty_241
  ret i129 %empty_243
}

declare i129 @_autotb_FifoWrite_i129(i129*, i129)

declare i129 @_autotb_FifoRead_i129(i129*)

declare i1 @_autotb_FifoCanRead_i129(i129*)

declare void @_GLOBAL__I_a10() nounwind section ".text.startup"

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define internal fastcc { i32, float, float } @MPI_Recv.1.2211(float %p_read, float %p_read1) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_read_1 = call float @_ssdm_op_Read.ap_auto.float(float %p_read1)
  %p_read11 = call float @_ssdm_op_Read.ap_auto.float(float %p_read)
  %state_1_load = load i2* @state_1, align 1
  %pkt_out_dest_V = load i8* @envlp_SRC_V_1, align 1
  switch i2 %state_1_load, label %._crit_edge17 [
    i2 0, label %.preheader632.preheader
    i2 1, label %47
    i2 -2, label %.preheader622.preheader
    i2 -1, label %68
  ]

.preheader622.preheader:                          ; preds = %codeRepl
  %buf1 = alloca float
  %write_flag = alloca i1
  %write_flag4 = alloca i1
  %buf = alloca float
  store i1 false, i1* %write_flag4
  store i1 false, i1* %write_flag
  br label %.preheader622

.preheader632.preheader:                          ; preds = %codeRepl
  %float_req_num_load = load i32* @float_req_num, align 4
  %id_in_V_load = load i16* @id_in_V, align 2
  br label %.preheader632

.preheader632:                                    ; preds = %._crit_edge18, %.preheader632.preheader
  %j = phi i31 [ %i_5, %._crit_edge18 ], [ 0, %.preheader632.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_25 = icmp slt i32 %j_cast, %float_req_num_load
  %i_5 = add i31 %j, 1
  br i1 %tmp_25, label %0, label %6

; <label>:0                                       ; preds = %.preheader632
  %tmp_26 = zext i31 %j to i64
  %float_request_array_8 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_26
  %float_request_array_9 = load i8* %float_request_array_8, align 1
  %tmp_27 = icmp eq i8 %float_request_array_9, 0
  br i1 %tmp_27, label %1, label %._crit_edge18

; <label>:1                                       ; preds = %0
  %float_request_array_10 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_26
  %float_request_array_11 = load i16* %float_request_array_10, align 2
  %tmp_28 = icmp eq i16 %float_request_array_11, %id_in_V_load
  br i1 %tmp_28, label %2, label %._crit_edge18

; <label>:2                                       ; preds = %1
  %float_request_array_12 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_26
  %float_request_array_13 = load i8* %float_request_array_12, align 2
  %tmp_30 = icmp eq i8 %float_request_array_13, 0
  br i1 %tmp_30, label %3, label %._crit_edge18

; <label>:3                                       ; preds = %2
  store i16 %id_in_V_load, i16* @envlp_DEST_V, align 2
  store i8 0, i8* @envlp_SRC_V_1, align 2
  %float_request_array_14 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_26
  %float_request_array_15 = load i16* %float_request_array_14, align 2
  store i16 %float_request_array_15, i16* @envlp_MSG_SIZE_V_1, align 2
  store i2 1, i2* @state_1, align 1
  %tmp_36 = add nsw i32 %float_req_num_load, -1
  store i32 %tmp_36, i32* @float_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j1 = phi i32 [ %j_cast, %3 ], [ %j_1, %5 ]
  %tmp_41 = icmp slt i32 %j1, %tmp_36
  br i1 %tmp_41, label %5, label %.loopexit624.loopexit20

; <label>:5                                       ; preds = %4
  %tmp_46 = sext i32 %j1 to i64
  %j_1 = add nsw i32 %j1, 1
  %tmp_47 = sext i32 %j_1 to i64
  %float_request_array_16 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_47
  %float_request_array_17 = load i16* %float_request_array_16, align 2
  %float_request_array_18 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_46
  store i16 %float_request_array_17, i16* %float_request_array_18, align 2
  %float_request_array_19 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_47
  %float_request_array_20 = load i8* %float_request_array_19, align 2
  %float_request_array_21 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_46
  store i8 %float_request_array_20, i8* %float_request_array_21, align 2
  %float_request_array_22 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_47
  %float_request_array_23 = load i8* %float_request_array_22, align 1
  %float_request_array_24 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_46
  store i8 %float_request_array_23, i8* %float_request_array_24, align 1
  %float_request_array_25 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_47
  %float_request_array_26 = load i16* %float_request_array_25, align 2
  %float_request_array_27 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_46
  store i16 %float_request_array_26, i16* %float_request_array_27, align 2
  %float_request_array_28 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_47
  %float_request_array_29 = load i8* %float_request_array_28, align 2
  %float_request_array_30 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_46
  store i8 %float_request_array_29, i8* %float_request_array_30, align 2
  %float_request_array_31 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_47
  %float_request_array_32 = load i4* %float_request_array_31, align 1
  %float_request_array_33 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_46
  store i4 %float_request_array_32, i4* %float_request_array_33, align 1
  %float_request_array_34 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_47
  %float_request_array_35 = load i4* %float_request_array_34, align 2
  %float_request_array_36 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_46
  store i4 %float_request_array_35, i4* %float_request_array_36, align 2
  br label %4

._crit_edge18:                                    ; preds = %2, %1, %0
  br label %.preheader632

; <label>:6                                       ; preds = %.preheader632
  %tmp155 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 64, i32 71)
  %tmp_103 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp155, i32 72)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V = phi i1 [ %tmp_103, %6 ], [ %tmp_104, %8 ]
  br i1 %last_V, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_1 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %tmp_104 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_1, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %temp_diff_src_or_typ = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_1 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 16, i32 23)
  %temp_diff_src_or_typ_2 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 24, i32 31)
  %temp_diff_src_or_typ_3 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp155, i32 32, i32 47)
  %temp_diff_src_or_typ_4 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 48, i32 55)
  %temp_diff_src_or_typ_5 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 60, i32 63)
  store i16 %temp_diff_src_or_typ, i16* @envlp_DEST_V, align 2
  store i8 %temp_diff_src_or_typ_1, i8* @envlp_SRC_V_1, align 1
  store i16 %temp_diff_src_or_typ_3, i16* @envlp_MSG_SIZE_V_1, align 2
  %tmp_31 = icmp eq i8 %temp_diff_src_or_typ_2, 0
  %tmp_32 = icmp eq i16 %temp_diff_src_or_typ, %id_in_V_load
  %tmp_33 = icmp eq i8 %temp_diff_src_or_typ_1, 0
  %tmp1 = and i1 %tmp_32, %tmp_33
  %or_cond1 = and i1 %tmp1, %tmp_31
  br i1 %or_cond1, label %10, label %._crit_edge21

; <label>:10                                      ; preds = %9
  store i2 1, i2* @state_1, align 1
  br label %.loopexit624

._crit_edge21:                                    ; preds = %9
  %p_Result_2 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 93, i32 96)
  %tmp_37 = icmp eq i4 %p_Result_2, 0
  br i1 %tmp_37, label %11, label %._crit_edge24

; <label>:11                                      ; preds = %._crit_edge21
  %p_Result_3 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 89, i32 92)
  %tmp_42 = icmp eq i4 %p_Result_3, 0
  br i1 %tmp_42, label %12, label %29

; <label>:12                                      ; preds = %11
  br i1 %tmp_31, label %.preheader629.preheader, label %20

.preheader629.preheader:                          ; preds = %12
  %int_req_num_load_1 = load i32* @int_req_num, align 4
  br label %.preheader629

.preheader629:                                    ; preds = %._crit_edge25, %.preheader629.preheader
  %i1 = phi i31 [ %i_10, %._crit_edge25 ], [ 0, %.preheader629.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_59 = icmp slt i32 %i1_cast, %int_req_num_load_1
  %i_10 = add i31 %i1, 1
  br i1 %tmp_59, label %13, label %19

; <label>:13                                      ; preds = %.preheader629
  %tmp_63 = zext i31 %i1 to i64
  %int_request_array_SR_1 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_63
  %int_request_array_SR_2 = load i8* %int_request_array_SR_1, align 2
  %tmp_64 = icmp eq i8 %int_request_array_SR_2, %temp_diff_src_or_typ_1
  br i1 %tmp_64, label %14, label %._crit_edge25

; <label>:14                                      ; preds = %13
  %int_request_array_DE_1 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_63
  %int_request_array_DE_2 = load i16* %int_request_array_DE_1, align 2
  %tmp_69 = icmp eq i16 %int_request_array_DE_2, %temp_diff_src_or_typ
  br i1 %tmp_69, label %15, label %._crit_edge25

; <label>:15                                      ; preds = %14
  %int_request_array_PK_1 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_63
  %int_request_array_PK_2 = load i1* %int_request_array_PK_1, align 1
  br i1 %int_request_array_PK_2, label %._crit_edge25, label %16

; <label>:16                                      ; preds = %15
  %int_request_array_MS_1 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_63
  %int_request_array_MS_2 = load i16* %int_request_array_MS_1, align 2
  %tmp_84 = icmp eq i16 %int_request_array_MS_2, %temp_diff_src_or_typ_3
  br i1 %tmp_84, label %17, label %._crit_edge25

; <label>:17                                      ; preds = %16
  %int_request_array_TA_1 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_63
  %int_request_array_TA_2 = load i8* %int_request_array_TA_1, align 2
  %tmp_87 = icmp eq i8 %int_request_array_TA_2, %temp_diff_src_or_typ_4
  br i1 %tmp_87, label %18, label %._crit_edge25

; <label>:18                                      ; preds = %17
  %int_request_array_DA_2 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_63
  %int_request_array_DA_3 = load i4* %int_request_array_DA_2, align 1
  %tmp_90 = icmp eq i4 %int_request_array_DA_3, %temp_diff_src_or_typ_5
  br i1 %tmp_90, label %.loopexit624.loopexit19, label %._crit_edge25

._crit_edge25:                                    ; preds = %18, %17, %16, %15, %14, %13
  br label %.preheader629

; <label>:19                                      ; preds = %.preheader629
  %tmp_65 = sext i32 %int_req_num_load_1 to i64
  %int_request_array_DE_3 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_65
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_3, align 2
  %int_request_array_SR_3 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_65
  store i8 %temp_diff_src_or_typ_1, i8* %int_request_array_SR_3, align 2
  %int_request_array_PK_3 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_65
  store i1 false, i1* %int_request_array_PK_3, align 1
  %int_request_array_MS_3 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_65
  store i16 %temp_diff_src_or_typ_3, i16* %int_request_array_MS_3, align 2
  %int_request_array_TA_3 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_65
  store i8 %temp_diff_src_or_typ_4, i8* %int_request_array_TA_3, align 2
  %int_request_array_DA_4 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_65
  store i4 %temp_diff_src_or_typ_5, i4* %int_request_array_DA_4, align 1
  %tmp_66 = add nsw i32 %int_req_num_load_1, 1
  store i32 %tmp_66, i32* @int_req_num, align 4
  br label %28

; <label>:20                                      ; preds = %12
  %tmp_53 = icmp eq i8 %temp_diff_src_or_typ_2, 1
  br i1 %tmp_53, label %.preheader627.preheader, label %._crit_edge31

.preheader627.preheader:                          ; preds = %20
  %int_clr_num_load_1 = load i32* @int_clr_num, align 4
  br label %.preheader627

.preheader627:                                    ; preds = %._crit_edge32, %.preheader627.preheader
  %i2 = phi i31 [ %i_1, %._crit_edge32 ], [ 0, %.preheader627.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_67 = icmp slt i32 %i2_cast, %int_clr_num_load_1
  %i_1 = add i31 %i2, 1
  br i1 %tmp_67, label %21, label %27

; <label>:21                                      ; preds = %.preheader627
  %tmp_s = zext i31 %i2 to i64
  %int_clr2snd_array_SR_1 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_s
  %int_clr2snd_array_SR_2 = load i8* %int_clr2snd_array_SR_1, align 2
  %tmp_70 = icmp eq i8 %int_clr2snd_array_SR_2, %temp_diff_src_or_typ_1
  br i1 %tmp_70, label %22, label %._crit_edge32

; <label>:22                                      ; preds = %21
  %int_clr2snd_array_DE_1 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_s
  %int_clr2snd_array_DE_2 = load i16* %int_clr2snd_array_DE_1, align 2
  %tmp_78 = icmp eq i16 %int_clr2snd_array_DE_2, %temp_diff_src_or_typ
  br i1 %tmp_78, label %23, label %._crit_edge32

; <label>:23                                      ; preds = %22
  %int_clr2snd_array_PK_1 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_s
  %int_clr2snd_array_PK_2 = load i1* %int_clr2snd_array_PK_1, align 1
  br i1 %int_clr2snd_array_PK_2, label %24, label %._crit_edge32

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_MS_1 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_s
  %int_clr2snd_array_MS_2 = load i16* %int_clr2snd_array_MS_1, align 2
  %tmp_88 = icmp eq i16 %int_clr2snd_array_MS_2, %temp_diff_src_or_typ_3
  br i1 %tmp_88, label %25, label %._crit_edge32

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_TA_1 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_s
  %int_clr2snd_array_TA_2 = load i8* %int_clr2snd_array_TA_1, align 2
  %tmp_91 = icmp eq i8 %int_clr2snd_array_TA_2, %temp_diff_src_or_typ_4
  br i1 %tmp_91, label %26, label %._crit_edge32

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_DA_1 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_s
  %int_clr2snd_array_DA_2 = load i4* %int_clr2snd_array_DA_1, align 1
  %tmp_94 = icmp eq i4 %int_clr2snd_array_DA_2, %temp_diff_src_or_typ_5
  br i1 %tmp_94, label %.loopexit624.loopexit18, label %._crit_edge32

._crit_edge32:                                    ; preds = %26, %25, %24, %23, %22, %21
  br label %.preheader627

; <label>:27                                      ; preds = %.preheader627
  %tmp_71 = sext i32 %int_clr_num_load_1 to i64
  %int_clr2snd_array_DE_3 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_71
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_3, align 2
  %int_clr2snd_array_SR_3 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_71
  store i8 %temp_diff_src_or_typ_1, i8* %int_clr2snd_array_SR_3, align 2
  %int_clr2snd_array_PK_3 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_71
  store i1 true, i1* %int_clr2snd_array_PK_3, align 1
  %int_clr2snd_array_MS_3 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_71
  store i16 %temp_diff_src_or_typ_3, i16* %int_clr2snd_array_MS_3, align 2
  %int_clr2snd_array_TA_3 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_71
  store i8 %temp_diff_src_or_typ_4, i8* %int_clr2snd_array_TA_3, align 2
  %int_clr2snd_array_DA_3 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_71
  store i4 %temp_diff_src_or_typ_5, i4* %int_clr2snd_array_DA_3, align 1
  %tmp_72 = add nsw i32 %int_clr_num_load_1, 1
  store i32 %tmp_72, i32* @int_clr_num, align 4
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %27, %20
  br label %28

; <label>:28                                      ; preds = %._crit_edge31, %19
  br label %.loopexit624

; <label>:29                                      ; preds = %11
  %tmp_48 = icmp eq i4 %p_Result_3, 1
  br i1 %tmp_48, label %30, label %._crit_edge24

; <label>:30                                      ; preds = %29
  br i1 %tmp_31, label %.preheader625.preheader, label %38

.preheader625.preheader:                          ; preds = %30
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.preheader, %._crit_edge39
  %i4 = phi i31 [ %i_2, %._crit_edge39 ], [ 0, %.preheader625.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_68 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_2 = add i31 %i4, 1
  br i1 %tmp_68, label %31, label %37

; <label>:31                                      ; preds = %.preheader625
  %tmp_73 = zext i31 %i4 to i64
  %float_request_array_37 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_73
  %float_request_array_38 = load i8* %float_request_array_37, align 2
  %tmp_74 = icmp eq i8 %float_request_array_38, %temp_diff_src_or_typ_1
  br i1 %tmp_74, label %32, label %._crit_edge39

; <label>:32                                      ; preds = %31
  %float_request_array_39 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_73
  %float_request_array_40 = load i16* %float_request_array_39, align 2
  %tmp_79 = icmp eq i16 %float_request_array_40, %temp_diff_src_or_typ
  br i1 %tmp_79, label %33, label %._crit_edge39

; <label>:33                                      ; preds = %32
  %float_request_array_41 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_73
  %float_request_array_42 = load i8* %float_request_array_41, align 1
  %tmp_85 = icmp eq i8 %float_request_array_42, 0
  br i1 %tmp_85, label %34, label %._crit_edge39

; <label>:34                                      ; preds = %33
  %float_request_array_43 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_73
  %float_request_array_44 = load i16* %float_request_array_43, align 2
  %tmp_89 = icmp eq i16 %float_request_array_44, %temp_diff_src_or_typ_3
  br i1 %tmp_89, label %35, label %._crit_edge39

; <label>:35                                      ; preds = %34
  %float_request_array_45 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_73
  %float_request_array_46 = load i8* %float_request_array_45, align 2
  %tmp_92 = icmp eq i8 %float_request_array_46, %temp_diff_src_or_typ_4
  br i1 %tmp_92, label %36, label %._crit_edge39

; <label>:36                                      ; preds = %35
  %float_request_array_47 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_73
  %float_request_array_48 = load i4* %float_request_array_47, align 1
  %tmp_95 = icmp eq i4 %float_request_array_48, %temp_diff_src_or_typ_5
  br i1 %tmp_95, label %.loopexit624.loopexit17, label %._crit_edge39

._crit_edge39:                                    ; preds = %36, %35, %34, %33, %32, %31
  br label %.preheader625

; <label>:37                                      ; preds = %.preheader625
  %tmp_75 = sext i32 %float_req_num_load to i64
  %float_request_array_49 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_75
  store i16 %temp_diff_src_or_typ, i16* %float_request_array_49, align 2
  %float_request_array_50 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_75
  store i8 %temp_diff_src_or_typ_1, i8* %float_request_array_50, align 2
  %float_request_array_51 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_75
  store i8 0, i8* %float_request_array_51, align 1
  %float_request_array_52 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_75
  store i16 %temp_diff_src_or_typ_3, i16* %float_request_array_52, align 2
  %float_request_array_53 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_75
  store i8 %temp_diff_src_or_typ_4, i8* %float_request_array_53, align 2
  %float_request_array_54 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_75
  store i4 %temp_diff_src_or_typ_5, i4* %float_request_array_54, align 1
  %tmp_76 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_76, i32* @float_req_num, align 4
  br label %46

; <label>:38                                      ; preds = %30
  %tmp_60 = icmp eq i8 %temp_diff_src_or_typ_2, 1
  br i1 %tmp_60, label %.preheader623.preheader, label %._crit_edge45

.preheader623.preheader:                          ; preds = %38
  %float_clr_num_load_1 = load i32* @float_clr_num, align 4
  br label %.preheader623

.preheader623:                                    ; preds = %._crit_edge46, %.preheader623.preheader
  %i5 = phi i31 [ %i_3, %._crit_edge46 ], [ 0, %.preheader623.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_77 = icmp slt i32 %i5_cast, %float_clr_num_load_1
  %i_3 = add i31 %i5, 1
  br i1 %tmp_77, label %39, label %45

; <label>:39                                      ; preds = %.preheader623
  %tmp_80 = zext i31 %i5 to i64
  %float_clr2snd_array_7 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_80
  %float_clr2snd_array_8 = load i8* %float_clr2snd_array_7, align 2
  %tmp_81 = icmp eq i8 %float_clr2snd_array_8, %temp_diff_src_or_typ_1
  br i1 %tmp_81, label %40, label %._crit_edge46

; <label>:40                                      ; preds = %39
  %float_clr2snd_array_9 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_80
  %float_clr2snd_array_10 = load i16* %float_clr2snd_array_9, align 2
  %tmp_86 = icmp eq i16 %float_clr2snd_array_10, %temp_diff_src_or_typ
  br i1 %tmp_86, label %41, label %._crit_edge46

; <label>:41                                      ; preds = %40
  %float_clr2snd_array_11 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_80
  %float_clr2snd_array_12 = load i1* %float_clr2snd_array_11, align 1
  br i1 %float_clr2snd_array_12, label %42, label %._crit_edge46

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_13 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_80
  %float_clr2snd_array_14 = load i16* %float_clr2snd_array_13, align 2
  %tmp_93 = icmp eq i16 %float_clr2snd_array_14, %temp_diff_src_or_typ_3
  br i1 %tmp_93, label %43, label %._crit_edge46

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_15 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_80
  %float_clr2snd_array_16 = load i8* %float_clr2snd_array_15, align 2
  %tmp_96 = icmp eq i8 %float_clr2snd_array_16, %temp_diff_src_or_typ_4
  br i1 %tmp_96, label %44, label %._crit_edge46

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_17 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_80
  %float_clr2snd_array_18 = load i4* %float_clr2snd_array_17, align 1
  %tmp_97 = icmp eq i4 %float_clr2snd_array_18, %temp_diff_src_or_typ_5
  br i1 %tmp_97, label %.loopexit624.loopexit, label %._crit_edge46

._crit_edge46:                                    ; preds = %44, %43, %42, %41, %40, %39
  br label %.preheader623

; <label>:45                                      ; preds = %.preheader623
  %tmp_82 = sext i32 %float_clr_num_load_1 to i64
  %float_clr2snd_array_19 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_82
  store i16 %temp_diff_src_or_typ, i16* %float_clr2snd_array_19, align 2
  %float_clr2snd_array_20 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_82
  store i8 %temp_diff_src_or_typ_1, i8* %float_clr2snd_array_20, align 2
  %float_clr2snd_array_21 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_82
  store i1 true, i1* %float_clr2snd_array_21, align 1
  %float_clr2snd_array_22 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_82
  store i16 %temp_diff_src_or_typ_3, i16* %float_clr2snd_array_22, align 2
  %float_clr2snd_array_23 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_82
  store i8 %temp_diff_src_or_typ_4, i8* %float_clr2snd_array_23, align 2
  %float_clr2snd_array_24 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_82
  store i4 %temp_diff_src_or_typ_5, i4* %float_clr2snd_array_24, align 1
  %tmp_83 = add nsw i32 %float_clr_num_load_1, 1
  store i32 %tmp_83, i32* @float_clr_num, align 4
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %45, %38
  br label %46

; <label>:46                                      ; preds = %._crit_edge45, %37
  br label %.loopexit624

._crit_edge24:                                    ; preds = %29, %._crit_edge21
  br label %._crit_edge17

; <label>:47                                      ; preds = %codeRepl
  %clr2snd_DEST_V = zext i8 %pkt_out_dest_V to i16
  %envlp_DEST_V_load = load i16* @envlp_DEST_V, align 2
  %clr2snd_SRC_V = trunc i16 %envlp_DEST_V_load to i8
  %clr2snd_MSG_SIZE_V = load i16* @envlp_MSG_SIZE_V_1, align 2
  %id_in_V_load_1 = load i16* @id_in_V, align 2
  %pkt_out_id_V = trunc i16 %id_in_V_load_1 to i8
  %tmp_2127 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i16.i8.i8.i16(i48 511, i8 %pkt_out_id_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V, i16 %clr2snd_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_2127)
  store i2 -2, i2* @state_1, align 1
  br label %.loopexit624

.preheader622:                                    ; preds = %.preheader622.preheader, %66
  %i7 = phi i32 [ %i_9, %66 ], [ 0, %.preheader622.preheader ]
  %buf1_load = load float* %buf1
  %write_flag_load = load i1* %write_flag
  %write_flag4_load = load i1* %write_flag4
  %buf_load = load float* %buf
  %tmp_102 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %i7, i32 1, i32 31)
  %icmp = icmp slt i31 %tmp_102, 1
  br i1 %icmp, label %48, label %67

; <label>:48                                      ; preds = %.preheader622
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8) nounwind
  %tmp_2 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* @stream_in_V, i32 1)
  br i1 %tmp_2, label %49, label %65

; <label>:49                                      ; preds = %48
  %tmp_3 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 64, i32 71)
  %recv_data_keep_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 81, i32 88)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 93, i32 96)
  %tmp_29 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_29, label %50, label %52

; <label>:50                                      ; preds = %49
  %tmp_34 = icmp eq i8 %recv_data_keep_V, -1
  br i1 %tmp_34, label %.preheader621.0, label %51

; <label>:51                                      ; preds = %50
  %tmp_39 = icmp eq i8 %recv_data_keep_V, 15
  br i1 %tmp_39, label %.preheader.0, label %.loopexit

.preheader.0:                                     ; preds = %51
  %tmp_107 = trunc i129 %tmp_3 to i32
  %tmp_43 = bitcast i32 %tmp_107 to float
  %tmp_108 = trunc i32 %i7 to i1
  %buf_0_tmp_s = select i1 %tmp_108, float %buf_load, float %tmp_43
  %p_write_flag4 = or i1 %tmp_108, %write_flag4_load
  %not_i7_t7 = xor i1 %tmp_108, true
  %write_flag_0_s = or i1 %write_flag_load, %not_i7_t7
  %tmp_116_0_buf = select i1 %tmp_108, float %tmp_43, float %buf1_load
  %i = add nsw i32 -1, %i7
  store float %buf_0_tmp_s, float* %buf
  store i1 %p_write_flag4, i1* %write_flag4
  store i1 %write_flag_0_s, i1* %write_flag
  store float %tmp_116_0_buf, float* %buf1
  br label %.loopexit

; <label>:52                                      ; preds = %49
  %tmp_35 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_35, label %53, label %._crit_edge52

; <label>:53                                      ; preds = %52
  %p_Result_1 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 89, i32 92)
  %tmp_40 = icmp eq i4 %p_Result_1, 0
  br i1 %tmp_40, label %54, label %59

; <label>:54                                      ; preds = %53
  %temp_diff_src_or_typ_6 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_7 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_8 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_9 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_10 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_11 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_44 = icmp eq i8 %temp_diff_src_or_typ_8, 0
  br i1 %tmp_44, label %55, label %56

; <label>:55                                      ; preds = %54
  %int_req_num_load = load i32* @int_req_num, align 4
  %tmp_49 = sext i32 %int_req_num_load to i64
  %int_request_array_DE_4 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_49
  store i16 %temp_diff_src_or_typ_6, i16* %int_request_array_DE_4, align 2
  %int_request_array_SR_4 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_49
  store i8 %temp_diff_src_or_typ_7, i8* %int_request_array_SR_4, align 2
  %int_request_array_PK_4 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_49
  store i1 false, i1* %int_request_array_PK_4, align 1
  %int_request_array_MS_4 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_49
  store i16 %temp_diff_src_or_typ_9, i16* %int_request_array_MS_4, align 2
  %int_request_array_TA_4 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_49
  store i8 %temp_diff_src_or_typ_10, i8* %int_request_array_TA_4, align 2
  %int_request_array_DA_5 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_49
  store i4 %temp_diff_src_or_typ_11, i4* %int_request_array_DA_5, align 1
  %tmp_50 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_50, i32* @int_req_num, align 4
  br label %58

; <label>:56                                      ; preds = %54
  %tmp_51 = icmp eq i8 %temp_diff_src_or_typ_8, 1
  br i1 %tmp_51, label %57, label %._crit_edge53

; <label>:57                                      ; preds = %56
  %int_clr_num_load = load i32* @int_clr_num, align 4
  %tmp_54 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_DE_4 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_54
  store i16 %temp_diff_src_or_typ_6, i16* %int_clr2snd_array_DE_4, align 2
  %int_clr2snd_array_SR_4 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_54
  store i8 %temp_diff_src_or_typ_7, i8* %int_clr2snd_array_SR_4, align 2
  %int_clr2snd_array_PK_4 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_54
  store i1 true, i1* %int_clr2snd_array_PK_4, align 1
  %int_clr2snd_array_MS_4 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_54
  store i16 %temp_diff_src_or_typ_9, i16* %int_clr2snd_array_MS_4, align 2
  %int_clr2snd_array_TA_4 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_54
  store i8 %temp_diff_src_or_typ_10, i8* %int_clr2snd_array_TA_4, align 2
  %int_clr2snd_array_DA_4 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_54
  store i4 %temp_diff_src_or_typ_11, i4* %int_clr2snd_array_DA_4, align 1
  %tmp_55 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_55, i32* @int_clr_num, align 4
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %57, %56
  br label %58

; <label>:58                                      ; preds = %._crit_edge53, %55
  %i_7 = add nsw i32 %i7, -2
  br label %66

; <label>:59                                      ; preds = %53
  %tmp_45 = icmp eq i4 %p_Result_1, 1
  br i1 %tmp_45, label %60, label %._crit_edge52

; <label>:60                                      ; preds = %59
  %temp_diff_src_or_typ_12 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_13 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_14 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_15 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_16 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_17 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_52 = icmp eq i8 %temp_diff_src_or_typ_14, 0
  br i1 %tmp_52, label %61, label %62

; <label>:61                                      ; preds = %60
  %float_req_num_load_1 = load i32* @float_req_num, align 4
  %tmp_56 = sext i32 %float_req_num_load_1 to i64
  %float_request_array_55 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_56
  store i16 %temp_diff_src_or_typ_12, i16* %float_request_array_55, align 2
  %float_request_array_56 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_56
  store i8 %temp_diff_src_or_typ_13, i8* %float_request_array_56, align 2
  %float_request_array_57 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_56
  store i8 0, i8* %float_request_array_57, align 1
  %float_request_array_58 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_56
  store i16 %temp_diff_src_or_typ_15, i16* %float_request_array_58, align 2
  %float_request_array_59 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_56
  store i8 %temp_diff_src_or_typ_16, i8* %float_request_array_59, align 2
  %float_request_array_60 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_56
  store i4 %temp_diff_src_or_typ_17, i4* %float_request_array_60, align 1
  %tmp_57 = add nsw i32 %float_req_num_load_1, 1
  store i32 %tmp_57, i32* @float_req_num, align 4
  br label %64

; <label>:62                                      ; preds = %60
  %tmp_58 = icmp eq i8 %temp_diff_src_or_typ_14, 1
  br i1 %tmp_58, label %63, label %._crit_edge55

; <label>:63                                      ; preds = %62
  %float_clr_num_load = load i32* @float_clr_num, align 4
  %tmp_61 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_25 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_61
  store i16 %temp_diff_src_or_typ_12, i16* %float_clr2snd_array_25, align 2
  %float_clr2snd_array_26 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_61
  store i8 %temp_diff_src_or_typ_13, i8* %float_clr2snd_array_26, align 2
  %float_clr2snd_array_27 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_61
  store i1 true, i1* %float_clr2snd_array_27, align 1
  %float_clr2snd_array_28 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_61
  store i16 %temp_diff_src_or_typ_15, i16* %float_clr2snd_array_28, align 2
  %float_clr2snd_array_29 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_61
  store i8 %temp_diff_src_or_typ_16, i8* %float_clr2snd_array_29, align 2
  %float_clr2snd_array_30 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_61
  store i4 %temp_diff_src_or_typ_17, i4* %float_clr2snd_array_30, align 1
  %tmp_62 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_62, i32* @float_clr_num, align 4
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %63, %62
  br label %64

; <label>:64                                      ; preds = %._crit_edge55, %61
  %i_8 = add nsw i32 %i7, -2
  br label %66

._crit_edge52:                                    ; preds = %59, %52
  br label %.loopexit

; <label>:65                                      ; preds = %48
  %i_6 = add nsw i32 %i7, -2
  br label %.loopexit

.preheader621.0:                                  ; preds = %50
  %tmp_105 = trunc i129 %tmp_3 to i32
  %tmp_38 = bitcast i32 %tmp_105 to float
  %tmp_106 = trunc i32 %i7 to i1
  %p_Result_72_1 = call i32 @_ssdm_op_PartSelect.i32.i129.i32.i32(i129 %tmp_3, i32 32, i32 63)
  %tmp_104_1 = bitcast i32 %p_Result_72_1 to float
  %tmp_104_1_buf_2 = select i1 %tmp_106, float %tmp_104_1, float %tmp_38
  %buf16_2_tmp_104_1 = select i1 %tmp_106, float %tmp_38, float %tmp_104_1
  store float %tmp_104_1_buf_2, float* %buf
  store i1 true, i1* %write_flag4
  store i1 true, i1* %write_flag
  store float %buf16_2_tmp_104_1, float* %buf1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader621.0, %65, %._crit_edge52, %.preheader.0, %51
  %i7_4 = phi i32 [ %i, %.preheader.0 ], [ %i7, %51 ], [ %i7, %._crit_edge52 ], [ %i_6, %65 ], [ %i7, %.preheader621.0 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp)
  br label %66

; <label>:66                                      ; preds = %.loopexit, %64, %58
  %i7_5 = phi i32 [ %i7_4, %.loopexit ], [ %i_7, %58 ], [ %i_8, %64 ]
  %i_9 = add nsw i32 %i7_5, 2
  br label %.preheader622

; <label>:67                                      ; preds = %.preheader622
  store i2 -1, i2* @state_1, align 1
  br label %.loopexit624

; <label>:68                                      ; preds = %codeRepl
  store i2 0, i2* @state_1, align 1
  %error_DEST_V = zext i8 %pkt_out_dest_V to i16
  %id_in_V_load_2 = load i16* @id_in_V, align 2
  %error_SRC_V = trunc i16 %id_in_V_load_2 to i8
  %tmp_4 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i24.i8.i16(i48 511, i8 %error_SRC_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i24 5, i8 %error_SRC_V, i16 %error_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_4)
  br label %.loopexit624

._crit_edge17:                                    ; preds = %._crit_edge24, %codeRepl
  br label %.loopexit624

.loopexit624.loopexit:                            ; preds = %44
  br label %.loopexit624

.loopexit624.loopexit17:                          ; preds = %36
  br label %.loopexit624

.loopexit624.loopexit18:                          ; preds = %26
  br label %.loopexit624

.loopexit624.loopexit19:                          ; preds = %18
  br label %.loopexit624

.loopexit624.loopexit20:                          ; preds = %4
  br label %.loopexit624

.loopexit624:                                     ; preds = %.loopexit624.loopexit20, %.loopexit624.loopexit19, %.loopexit624.loopexit18, %.loopexit624.loopexit17, %.loopexit624.loopexit, %._crit_edge17, %68, %67, %47, %46, %28, %10
  %buf_6 = phi float [ undef, %._crit_edge17 ], [ undef, %68 ], [ %buf_load, %67 ], [ undef, %47 ], [ undef, %10 ], [ undef, %28 ], [ undef, %46 ], [ undef, %.loopexit624.loopexit ], [ undef, %.loopexit624.loopexit17 ], [ undef, %.loopexit624.loopexit18 ], [ undef, %.loopexit624.loopexit19 ], [ undef, %.loopexit624.loopexit20 ]
  %write_flag4_6 = phi i1 [ false, %._crit_edge17 ], [ false, %68 ], [ %write_flag4_load, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit17 ], [ false, %.loopexit624.loopexit18 ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ]
  %write_flag_6 = phi i1 [ false, %._crit_edge17 ], [ false, %68 ], [ %write_flag_load, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit17 ], [ false, %.loopexit624.loopexit18 ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ]
  %buf16_6 = phi float [ undef, %._crit_edge17 ], [ undef, %68 ], [ %buf1_load, %67 ], [ undef, %47 ], [ undef, %10 ], [ undef, %28 ], [ undef, %46 ], [ undef, %.loopexit624.loopexit ], [ undef, %.loopexit624.loopexit17 ], [ undef, %.loopexit624.loopexit18 ], [ undef, %.loopexit624.loopexit19 ], [ undef, %.loopexit624.loopexit20 ]
  %p_s = phi i1 [ false, %._crit_edge17 ], [ true, %68 ], [ false, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit17 ], [ false, %.loopexit624.loopexit18 ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ]
  %p_cast = zext i1 %p_s to i32
  %mrv_sel = select i1 %write_flag_6, float %buf_6, float %p_read11
  %mrv_sel9 = select i1 %write_flag4_6, float %buf16_6, float %p_read_1
  %mrv = insertvalue { i32, float, float } undef, i32 %p_cast, 0
  %mrv_1 = insertvalue { i32, float, float } %mrv, float %mrv_sel, 1
  %mrv_2 = insertvalue { i32, float, float } %mrv_1, float %mrv_sel9, 2
  ret { i32, float, float } %mrv_2
}

define internal fastcc { i32, float, float, float, float } @MPI_Recv.1.2210(float %p_read, float %p_read1, float %p_read2, float %p_read3) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %p_read_2 = call float @_ssdm_op_Read.ap_auto.float(float %p_read3)
  %p_read_3 = call float @_ssdm_op_Read.ap_auto.float(float %p_read2)
  %p_read_4 = call float @_ssdm_op_Read.ap_auto.float(float %p_read1)
  %p_read11 = call float @_ssdm_op_Read.ap_auto.float(float %p_read)
  %state_1_load = load i2* @state_1, align 1
  %pkt_out_dest_V = load i8* @envlp_SRC_V_1, align 1
  switch i2 %state_1_load, label %._crit_edge17 [
    i2 0, label %.preheader632.preheader
    i2 1, label %47
    i2 -2, label %.preheader622.preheader
    i2 -1, label %68
  ]

.preheader622.preheader:                          ; preds = %codeRepl
  %buf3 = alloca float
  %write_flag = alloca i1
  %write_flag1 = alloca i1
  %buf2 = alloca float
  %buf = alloca float
  %write_flag8 = alloca i1
  %buf4 = alloca float
  %write_flag4 = alloca i1
  store i1 false, i1* %write_flag4
  store i1 false, i1* %write_flag8
  store i1 false, i1* %write_flag1
  store i1 false, i1* %write_flag
  br label %.preheader622

.preheader632.preheader:                          ; preds = %codeRepl
  %float_req_num_load = load i32* @float_req_num, align 4
  %id_in_V_load = load i16* @id_in_V, align 2
  br label %.preheader632

.preheader632:                                    ; preds = %._crit_edge18, %.preheader632.preheader
  %j = phi i31 [ %i_5, %._crit_edge18 ], [ 0, %.preheader632.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_70 = icmp slt i32 %j_cast, %float_req_num_load
  %i_5 = add i31 %j, 1
  br i1 %tmp_70, label %0, label %6

; <label>:0                                       ; preds = %.preheader632
  %tmp_71 = zext i31 %j to i64
  %float_request_array_61 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_71
  %float_request_array_62 = load i8* %float_request_array_61, align 1
  %tmp_72 = icmp eq i8 %float_request_array_62, 0
  br i1 %tmp_72, label %1, label %._crit_edge18

; <label>:1                                       ; preds = %0
  %float_request_array_63 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_71
  %float_request_array_64 = load i16* %float_request_array_63, align 2
  %tmp_75 = icmp eq i16 %float_request_array_64, %id_in_V_load
  br i1 %tmp_75, label %2, label %._crit_edge18

; <label>:2                                       ; preds = %1
  %float_request_array_65 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_71
  %float_request_array_66 = load i8* %float_request_array_65, align 2
  %tmp_78 = icmp eq i8 %float_request_array_66, 0
  br i1 %tmp_78, label %3, label %._crit_edge18

; <label>:3                                       ; preds = %2
  store i16 %id_in_V_load, i16* @envlp_DEST_V, align 2
  store i8 0, i8* @envlp_SRC_V_1, align 2
  %float_request_array_67 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_71
  %float_request_array_68 = load i16* %float_request_array_67, align 2
  store i16 %float_request_array_68, i16* @envlp_MSG_SIZE_V_1, align 2
  store i2 1, i2* @state_1, align 1
  %tmp_85 = add nsw i32 %float_req_num_load, -1
  store i32 %tmp_85, i32* @float_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j1 = phi i32 [ %j_cast, %3 ], [ %j_2, %5 ]
  %tmp_89 = icmp slt i32 %j1, %tmp_85
  br i1 %tmp_89, label %5, label %.loopexit624.loopexit22

; <label>:5                                       ; preds = %4
  %tmp_95 = sext i32 %j1 to i64
  %j_2 = add nsw i32 %j1, 1
  %tmp_97 = sext i32 %j_2 to i64
  %float_request_array_69 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_97
  %float_request_array_70 = load i16* %float_request_array_69, align 2
  %float_request_array_71 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_95
  store i16 %float_request_array_70, i16* %float_request_array_71, align 2
  %float_request_array_72 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_97
  %float_request_array_73 = load i8* %float_request_array_72, align 2
  %float_request_array_74 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_95
  store i8 %float_request_array_73, i8* %float_request_array_74, align 2
  %float_request_array_75 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_97
  %float_request_array_76 = load i8* %float_request_array_75, align 1
  %float_request_array_77 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_95
  store i8 %float_request_array_76, i8* %float_request_array_77, align 1
  %float_request_array_78 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_97
  %float_request_array_79 = load i16* %float_request_array_78, align 2
  %float_request_array_80 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_95
  store i16 %float_request_array_79, i16* %float_request_array_80, align 2
  %float_request_array_81 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_97
  %float_request_array_82 = load i8* %float_request_array_81, align 2
  %float_request_array_83 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_95
  store i8 %float_request_array_82, i8* %float_request_array_83, align 2
  %float_request_array_84 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_97
  %float_request_array_85 = load i4* %float_request_array_84, align 1
  %float_request_array_86 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_95
  store i4 %float_request_array_85, i4* %float_request_array_86, align 1
  %float_request_array_87 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_97
  %float_request_array_88 = load i4* %float_request_array_87, align 2
  %float_request_array_89 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_95
  store i4 %float_request_array_88, i4* %float_request_array_89, align 2
  br label %4

._crit_edge18:                                    ; preds = %2, %1, %0
  br label %.preheader632

; <label>:6                                       ; preds = %.preheader632
  %tmp155 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 64, i32 71)
  %tmp_157 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp155, i32 72)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V = phi i1 [ %tmp_157, %6 ], [ %tmp_158, %8 ]
  br i1 %last_V, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_1 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %tmp_158 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_1, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %temp_diff_src_or_typ = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_18 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 16, i32 23)
  %temp_diff_src_or_typ_19 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 24, i32 31)
  %temp_diff_src_or_typ_20 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp155, i32 32, i32 47)
  %temp_diff_src_or_typ_21 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 48, i32 55)
  %temp_diff_src_or_typ_22 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 60, i32 63)
  store i16 %temp_diff_src_or_typ, i16* @envlp_DEST_V, align 2
  store i8 %temp_diff_src_or_typ_18, i8* @envlp_SRC_V_1, align 1
  store i16 %temp_diff_src_or_typ_20, i16* @envlp_MSG_SIZE_V_1, align 2
  %tmp_80 = icmp eq i8 %temp_diff_src_or_typ_19, 0
  %tmp_86 = icmp eq i16 %temp_diff_src_or_typ, %id_in_V_load
  %tmp_91 = icmp eq i8 %temp_diff_src_or_typ_18, 0
  %tmp26 = and i1 %tmp_86, %tmp_91
  %or_cond1 = and i1 %tmp26, %tmp_80
  br i1 %or_cond1, label %10, label %._crit_edge21

; <label>:10                                      ; preds = %9
  store i2 1, i2* @state_1, align 1
  br label %.loopexit624

._crit_edge21:                                    ; preds = %9
  %p_Result_5 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 93, i32 96)
  %tmp_92 = icmp eq i4 %p_Result_5, 0
  br i1 %tmp_92, label %11, label %._crit_edge24

; <label>:11                                      ; preds = %._crit_edge21
  %p_Result_6 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 89, i32 92)
  %tmp_98 = icmp eq i4 %p_Result_6, 0
  br i1 %tmp_98, label %12, label %29

; <label>:12                                      ; preds = %11
  br i1 %tmp_80, label %.preheader629.preheader, label %20

.preheader629.preheader:                          ; preds = %12
  %int_req_num_load_1 = load i32* @int_req_num, align 4
  br label %.preheader629

.preheader629:                                    ; preds = %._crit_edge25, %.preheader629.preheader
  %i1 = phi i31 [ %i_12, %._crit_edge25 ], [ 0, %.preheader629.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_114 = icmp slt i32 %i1_cast, %int_req_num_load_1
  %i_12 = add i31 %i1, 1
  br i1 %tmp_114, label %13, label %19

; <label>:13                                      ; preds = %.preheader629
  %tmp_118 = zext i31 %i1 to i64
  %int_request_array_SR_5 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_118
  %int_request_array_SR_6 = load i8* %int_request_array_SR_5, align 2
  %tmp_119 = icmp eq i8 %int_request_array_SR_6, %temp_diff_src_or_typ_18
  br i1 %tmp_119, label %14, label %._crit_edge25

; <label>:14                                      ; preds = %13
  %int_request_array_DE_5 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_118
  %int_request_array_DE_6 = load i16* %int_request_array_DE_5, align 2
  %tmp_124 = icmp eq i16 %int_request_array_DE_6, %temp_diff_src_or_typ
  br i1 %tmp_124, label %15, label %._crit_edge25

; <label>:15                                      ; preds = %14
  %int_request_array_PK_5 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_118
  %int_request_array_PK_6 = load i1* %int_request_array_PK_5, align 1
  br i1 %int_request_array_PK_6, label %._crit_edge25, label %16

; <label>:16                                      ; preds = %15
  %int_request_array_MS_5 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_118
  %int_request_array_MS_6 = load i16* %int_request_array_MS_5, align 2
  %tmp_139 = icmp eq i16 %int_request_array_MS_6, %temp_diff_src_or_typ_20
  br i1 %tmp_139, label %17, label %._crit_edge25

; <label>:17                                      ; preds = %16
  %int_request_array_TA_5 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_118
  %int_request_array_TA_6 = load i8* %int_request_array_TA_5, align 2
  %tmp_142 = icmp eq i8 %int_request_array_TA_6, %temp_diff_src_or_typ_21
  br i1 %tmp_142, label %18, label %._crit_edge25

; <label>:18                                      ; preds = %17
  %int_request_array_DA_6 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_118
  %int_request_array_DA_7 = load i4* %int_request_array_DA_6, align 1
  %tmp_145 = icmp eq i4 %int_request_array_DA_7, %temp_diff_src_or_typ_22
  br i1 %tmp_145, label %.loopexit624.loopexit21, label %._crit_edge25

._crit_edge25:                                    ; preds = %18, %17, %16, %15, %14, %13
  br label %.preheader629

; <label>:19                                      ; preds = %.preheader629
  %tmp_120 = sext i32 %int_req_num_load_1 to i64
  %int_request_array_DE_7 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_120
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_7, align 2
  %int_request_array_SR_7 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_120
  store i8 %temp_diff_src_or_typ_18, i8* %int_request_array_SR_7, align 2
  %int_request_array_PK_7 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_120
  store i1 false, i1* %int_request_array_PK_7, align 1
  %int_request_array_MS_7 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_120
  store i16 %temp_diff_src_or_typ_20, i16* %int_request_array_MS_7, align 2
  %int_request_array_TA_7 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_120
  store i8 %temp_diff_src_or_typ_21, i8* %int_request_array_TA_7, align 2
  %int_request_array_DA_8 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_120
  store i4 %temp_diff_src_or_typ_22, i4* %int_request_array_DA_8, align 1
  %tmp_121 = add nsw i32 %int_req_num_load_1, 1
  store i32 %tmp_121, i32* @int_req_num, align 4
  br label %28

; <label>:20                                      ; preds = %12
  %tmp_108 = icmp eq i8 %temp_diff_src_or_typ_19, 1
  br i1 %tmp_108, label %.preheader627.preheader, label %._crit_edge31

.preheader627.preheader:                          ; preds = %20
  %int_clr_num_load_1 = load i32* @int_clr_num, align 4
  br label %.preheader627

.preheader627:                                    ; preds = %._crit_edge32, %.preheader627.preheader
  %i2 = phi i31 [ %i_4, %._crit_edge32 ], [ 0, %.preheader627.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_122 = icmp slt i32 %i2_cast, %int_clr_num_load_1
  %i_4 = add i31 %i2, 1
  br i1 %tmp_122, label %21, label %27

; <label>:21                                      ; preds = %.preheader627
  %tmp_s = zext i31 %i2 to i64
  %int_clr2snd_array_SR_5 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_s
  %int_clr2snd_array_SR_6 = load i8* %int_clr2snd_array_SR_5, align 2
  %tmp_125 = icmp eq i8 %int_clr2snd_array_SR_6, %temp_diff_src_or_typ_18
  br i1 %tmp_125, label %22, label %._crit_edge32

; <label>:22                                      ; preds = %21
  %int_clr2snd_array_DE_5 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_s
  %int_clr2snd_array_DE_6 = load i16* %int_clr2snd_array_DE_5, align 2
  %tmp_133 = icmp eq i16 %int_clr2snd_array_DE_6, %temp_diff_src_or_typ
  br i1 %tmp_133, label %23, label %._crit_edge32

; <label>:23                                      ; preds = %22
  %int_clr2snd_array_PK_5 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_s
  %int_clr2snd_array_PK_6 = load i1* %int_clr2snd_array_PK_5, align 1
  br i1 %int_clr2snd_array_PK_6, label %24, label %._crit_edge32

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_MS_5 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_s
  %int_clr2snd_array_MS_6 = load i16* %int_clr2snd_array_MS_5, align 2
  %tmp_143 = icmp eq i16 %int_clr2snd_array_MS_6, %temp_diff_src_or_typ_20
  br i1 %tmp_143, label %25, label %._crit_edge32

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_TA_5 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_s
  %int_clr2snd_array_TA_6 = load i8* %int_clr2snd_array_TA_5, align 2
  %tmp_146 = icmp eq i8 %int_clr2snd_array_TA_6, %temp_diff_src_or_typ_21
  br i1 %tmp_146, label %26, label %._crit_edge32

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_DA_5 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_s
  %int_clr2snd_array_DA_6 = load i4* %int_clr2snd_array_DA_5, align 1
  %tmp_149 = icmp eq i4 %int_clr2snd_array_DA_6, %temp_diff_src_or_typ_22
  br i1 %tmp_149, label %.loopexit624.loopexit20, label %._crit_edge32

._crit_edge32:                                    ; preds = %26, %25, %24, %23, %22, %21
  br label %.preheader627

; <label>:27                                      ; preds = %.preheader627
  %tmp_126 = sext i32 %int_clr_num_load_1 to i64
  %int_clr2snd_array_DE_7 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_126
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_7, align 2
  %int_clr2snd_array_SR_7 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_126
  store i8 %temp_diff_src_or_typ_18, i8* %int_clr2snd_array_SR_7, align 2
  %int_clr2snd_array_PK_7 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_126
  store i1 true, i1* %int_clr2snd_array_PK_7, align 1
  %int_clr2snd_array_MS_7 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_126
  store i16 %temp_diff_src_or_typ_20, i16* %int_clr2snd_array_MS_7, align 2
  %int_clr2snd_array_TA_7 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_126
  store i8 %temp_diff_src_or_typ_21, i8* %int_clr2snd_array_TA_7, align 2
  %int_clr2snd_array_DA_7 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_126
  store i4 %temp_diff_src_or_typ_22, i4* %int_clr2snd_array_DA_7, align 1
  %tmp_127 = add nsw i32 %int_clr_num_load_1, 1
  store i32 %tmp_127, i32* @int_clr_num, align 4
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %27, %20
  br label %28

; <label>:28                                      ; preds = %._crit_edge31, %19
  br label %.loopexit624

; <label>:29                                      ; preds = %11
  %tmp_102 = icmp eq i4 %p_Result_6, 1
  br i1 %tmp_102, label %30, label %._crit_edge24

; <label>:30                                      ; preds = %29
  br i1 %tmp_80, label %.preheader625.preheader, label %38

.preheader625.preheader:                          ; preds = %30
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.preheader, %._crit_edge39
  %i4 = phi i31 [ %i_10, %._crit_edge39 ], [ 0, %.preheader625.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_123 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_10 = add i31 %i4, 1
  br i1 %tmp_123, label %31, label %37

; <label>:31                                      ; preds = %.preheader625
  %tmp_128 = zext i31 %i4 to i64
  %float_request_array_90 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_128
  %float_request_array_91 = load i8* %float_request_array_90, align 2
  %tmp_129 = icmp eq i8 %float_request_array_91, %temp_diff_src_or_typ_18
  br i1 %tmp_129, label %32, label %._crit_edge39

; <label>:32                                      ; preds = %31
  %float_request_array_92 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_128
  %float_request_array_93 = load i16* %float_request_array_92, align 2
  %tmp_134 = icmp eq i16 %float_request_array_93, %temp_diff_src_or_typ
  br i1 %tmp_134, label %33, label %._crit_edge39

; <label>:33                                      ; preds = %32
  %float_request_array_94 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_128
  %float_request_array_95 = load i8* %float_request_array_94, align 1
  %tmp_140 = icmp eq i8 %float_request_array_95, 0
  br i1 %tmp_140, label %34, label %._crit_edge39

; <label>:34                                      ; preds = %33
  %float_request_array_96 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_128
  %float_request_array_97 = load i16* %float_request_array_96, align 2
  %tmp_144 = icmp eq i16 %float_request_array_97, %temp_diff_src_or_typ_20
  br i1 %tmp_144, label %35, label %._crit_edge39

; <label>:35                                      ; preds = %34
  %float_request_array_98 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_128
  %float_request_array_99 = load i8* %float_request_array_98, align 2
  %tmp_147 = icmp eq i8 %float_request_array_99, %temp_diff_src_or_typ_21
  br i1 %tmp_147, label %36, label %._crit_edge39

; <label>:36                                      ; preds = %35
  %float_request_array_100 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_128
  %float_request_array_101 = load i4* %float_request_array_100, align 1
  %tmp_150 = icmp eq i4 %float_request_array_101, %temp_diff_src_or_typ_22
  br i1 %tmp_150, label %.loopexit624.loopexit19, label %._crit_edge39

._crit_edge39:                                    ; preds = %36, %35, %34, %33, %32, %31
  br label %.preheader625

; <label>:37                                      ; preds = %.preheader625
  %tmp_130 = sext i32 %float_req_num_load to i64
  %float_request_array_102 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_130
  store i16 %temp_diff_src_or_typ, i16* %float_request_array_102, align 2
  %float_request_array_103 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_130
  store i8 %temp_diff_src_or_typ_18, i8* %float_request_array_103, align 2
  %float_request_array_104 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_130
  store i8 0, i8* %float_request_array_104, align 1
  %float_request_array_105 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_130
  store i16 %temp_diff_src_or_typ_20, i16* %float_request_array_105, align 2
  %float_request_array_106 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_130
  store i8 %temp_diff_src_or_typ_21, i8* %float_request_array_106, align 2
  %float_request_array_107 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_130
  store i4 %temp_diff_src_or_typ_22, i4* %float_request_array_107, align 1
  %tmp_131 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_131, i32* @float_req_num, align 4
  br label %46

; <label>:38                                      ; preds = %30
  %tmp_115 = icmp eq i8 %temp_diff_src_or_typ_19, 1
  br i1 %tmp_115, label %.preheader623.preheader, label %._crit_edge45

.preheader623.preheader:                          ; preds = %38
  %float_clr_num_load_1 = load i32* @float_clr_num, align 4
  br label %.preheader623

.preheader623:                                    ; preds = %._crit_edge46, %.preheader623.preheader
  %i5 = phi i31 [ %i_11, %._crit_edge46 ], [ 0, %.preheader623.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_132 = icmp slt i32 %i5_cast, %float_clr_num_load_1
  %i_11 = add i31 %i5, 1
  br i1 %tmp_132, label %39, label %45

; <label>:39                                      ; preds = %.preheader623
  %tmp_135 = zext i31 %i5 to i64
  %float_clr2snd_array_31 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_135
  %float_clr2snd_array_32 = load i8* %float_clr2snd_array_31, align 2
  %tmp_136 = icmp eq i8 %float_clr2snd_array_32, %temp_diff_src_or_typ_18
  br i1 %tmp_136, label %40, label %._crit_edge46

; <label>:40                                      ; preds = %39
  %float_clr2snd_array_33 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_135
  %float_clr2snd_array_34 = load i16* %float_clr2snd_array_33, align 2
  %tmp_141 = icmp eq i16 %float_clr2snd_array_34, %temp_diff_src_or_typ
  br i1 %tmp_141, label %41, label %._crit_edge46

; <label>:41                                      ; preds = %40
  %float_clr2snd_array_35 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_135
  %float_clr2snd_array_36 = load i1* %float_clr2snd_array_35, align 1
  br i1 %float_clr2snd_array_36, label %42, label %._crit_edge46

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_37 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_135
  %float_clr2snd_array_38 = load i16* %float_clr2snd_array_37, align 2
  %tmp_148 = icmp eq i16 %float_clr2snd_array_38, %temp_diff_src_or_typ_20
  br i1 %tmp_148, label %43, label %._crit_edge46

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_39 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_135
  %float_clr2snd_array_40 = load i8* %float_clr2snd_array_39, align 2
  %tmp_151 = icmp eq i8 %float_clr2snd_array_40, %temp_diff_src_or_typ_21
  br i1 %tmp_151, label %44, label %._crit_edge46

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_41 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_135
  %float_clr2snd_array_42 = load i4* %float_clr2snd_array_41, align 1
  %tmp_152 = icmp eq i4 %float_clr2snd_array_42, %temp_diff_src_or_typ_22
  br i1 %tmp_152, label %.loopexit624.loopexit, label %._crit_edge46

._crit_edge46:                                    ; preds = %44, %43, %42, %41, %40, %39
  br label %.preheader623

; <label>:45                                      ; preds = %.preheader623
  %tmp_137 = sext i32 %float_clr_num_load_1 to i64
  %float_clr2snd_array_43 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_137
  store i16 %temp_diff_src_or_typ, i16* %float_clr2snd_array_43, align 2
  %float_clr2snd_array_44 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_137
  store i8 %temp_diff_src_or_typ_18, i8* %float_clr2snd_array_44, align 2
  %float_clr2snd_array_45 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_137
  store i1 true, i1* %float_clr2snd_array_45, align 1
  %float_clr2snd_array_46 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_137
  store i16 %temp_diff_src_or_typ_20, i16* %float_clr2snd_array_46, align 2
  %float_clr2snd_array_47 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_137
  store i8 %temp_diff_src_or_typ_21, i8* %float_clr2snd_array_47, align 2
  %float_clr2snd_array_48 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_137
  store i4 %temp_diff_src_or_typ_22, i4* %float_clr2snd_array_48, align 1
  %tmp_138 = add nsw i32 %float_clr_num_load_1, 1
  store i32 %tmp_138, i32* @float_clr_num, align 4
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %45, %38
  br label %46

; <label>:46                                      ; preds = %._crit_edge45, %37
  br label %.loopexit624

._crit_edge24:                                    ; preds = %29, %._crit_edge21
  br label %._crit_edge17

; <label>:47                                      ; preds = %codeRepl
  %clr2snd_DEST_V = zext i8 %pkt_out_dest_V to i16
  %envlp_DEST_V_load = load i16* @envlp_DEST_V, align 2
  %clr2snd_SRC_V = trunc i16 %envlp_DEST_V_load to i8
  %clr2snd_MSG_SIZE_V = load i16* @envlp_MSG_SIZE_V_1, align 2
  %id_in_V_load_3 = load i16* @id_in_V, align 2
  %pkt_out_id_V = trunc i16 %id_in_V_load_3 to i8
  %tmp_2127 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i16.i8.i8.i16(i48 511, i8 %pkt_out_id_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V, i16 %clr2snd_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_2127)
  store i2 -2, i2* @state_1, align 1
  br label %.loopexit624

.preheader622:                                    ; preds = %.preheader622.preheader, %66
  %i7 = phi i32 [ %i_9, %66 ], [ 0, %.preheader622.preheader ]
  %buf3_load = load float* %buf3
  %write_flag_load = load i1* %write_flag
  %write_flag1_load = load i1* %write_flag1
  %buf2_load = load float* %buf2
  %buf_load = load float* %buf
  %write_flag8_load = load i1* %write_flag8
  %buf4_load = load float* %buf4
  %write_flag4_load = load i1* %write_flag4
  %tmp_156 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %i7, i32 2, i32 31)
  %icmp = icmp slt i30 %tmp_156, 1
  br i1 %icmp, label %48, label %67

; <label>:48                                      ; preds = %.preheader622
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8) nounwind
  %tmp_5 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* @stream_in_V, i32 1)
  br i1 %tmp_5, label %49, label %65

; <label>:49                                      ; preds = %48
  %tmp_3 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 64, i32 71)
  %recv_data_keep_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 81, i32 88)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 93, i32 96)
  %tmp_83 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_83, label %50, label %52

; <label>:50                                      ; preds = %49
  %tmp_87 = icmp eq i8 %recv_data_keep_V, -1
  br i1 %tmp_87, label %.preheader621.0_ifconv, label %51

; <label>:51                                      ; preds = %50
  %tmp_93 = icmp eq i8 %recv_data_keep_V, 15
  br i1 %tmp_93, label %.preheader.0_ifconv, label %.loopexit

.preheader.0_ifconv:                              ; preds = %51
  %tmp_161 = trunc i129 %tmp_3 to i32
  %tmp_103 = bitcast i32 %tmp_161 to float
  %tmp_162 = trunc i32 %i7 to i2
  %sel_tmp8 = icmp eq i2 %tmp_162, 1
  %write_flag4_1 = or i1 %write_flag4_load, %sel_tmp8
  %sel_tmp10 = select i1 %sel_tmp8, float %tmp_103, float %buf4_load
  %sel_tmp11 = icmp eq i2 %tmp_162, 0
  %buf16_1 = select i1 %sel_tmp11, float %buf4_load, float %sel_tmp10
  %sel_tmp12 = icmp eq i2 %tmp_162, -2
  %write_flag8_1 = or i1 %write_flag8_load, %sel_tmp12
  %buf_1 = select i1 %sel_tmp11, float %tmp_103, float %buf_load
  %sel_tmp13 = select i1 %sel_tmp12, float %tmp_103, float %buf2_load
  %sel_tmp14 = select i1 %sel_tmp8, float %buf2_load, float %sel_tmp13
  %buf2_1 = select i1 %sel_tmp11, float %buf2_load, float %sel_tmp14
  %not_sel_tmp3 = icmp ne i2 %tmp_162, -2
  %not_sel_tmp4 = icmp ne i2 %tmp_162, 1
  %not_sel_tmp5 = icmp ne i2 %tmp_162, 0
  %tmp28 = and i1 %not_sel_tmp4, %not_sel_tmp5
  %sel_tmp15 = and i1 %tmp28, %not_sel_tmp3
  %write_flag11_1 = or i1 %write_flag1_load, %sel_tmp15
  %write_flag_1 = or i1 %sel_tmp11, %write_flag_load
  %sel_tmp16 = select i1 %sel_tmp12, float %buf3_load, float %tmp_103
  %sel_tmp17 = select i1 %sel_tmp8, float %buf3_load, float %sel_tmp16
  %buf3_1 = select i1 %sel_tmp11, float %buf3_load, float %sel_tmp17
  %i = add nsw i32 -1, %i7
  store i1 %write_flag4_1, i1* %write_flag4
  store float %buf16_1, float* %buf4
  store i1 %write_flag8_1, i1* %write_flag8
  store float %buf_1, float* %buf
  store float %buf2_1, float* %buf2
  store i1 %write_flag11_1, i1* %write_flag1
  store i1 %write_flag_1, i1* %write_flag
  store float %buf3_1, float* %buf3
  br label %.loopexit

; <label>:52                                      ; preds = %49
  %tmp_88 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_88, label %53, label %._crit_edge52

; <label>:53                                      ; preds = %52
  %p_Result_4 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 89, i32 92)
  %tmp_94 = icmp eq i4 %p_Result_4, 0
  br i1 %tmp_94, label %54, label %59

; <label>:54                                      ; preds = %53
  %temp_diff_src_or_typ_23 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_24 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_25 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_26 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_27 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_28 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_99 = icmp eq i8 %temp_diff_src_or_typ_25, 0
  br i1 %tmp_99, label %55, label %56

; <label>:55                                      ; preds = %54
  %int_req_num_load = load i32* @int_req_num, align 4
  %tmp_104 = sext i32 %int_req_num_load to i64
  %int_request_array_DE_8 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_104
  store i16 %temp_diff_src_or_typ_23, i16* %int_request_array_DE_8, align 2
  %int_request_array_SR_8 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_104
  store i8 %temp_diff_src_or_typ_24, i8* %int_request_array_SR_8, align 2
  %int_request_array_PK_8 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_104
  store i1 false, i1* %int_request_array_PK_8, align 1
  %int_request_array_MS_8 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_104
  store i16 %temp_diff_src_or_typ_26, i16* %int_request_array_MS_8, align 2
  %int_request_array_TA_8 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_104
  store i8 %temp_diff_src_or_typ_27, i8* %int_request_array_TA_8, align 2
  %int_request_array_DA_9 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_104
  store i4 %temp_diff_src_or_typ_28, i4* %int_request_array_DA_9, align 1
  %tmp_105 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_105, i32* @int_req_num, align 4
  br label %58

; <label>:56                                      ; preds = %54
  %tmp_106 = icmp eq i8 %temp_diff_src_or_typ_25, 1
  br i1 %tmp_106, label %57, label %._crit_edge53

; <label>:57                                      ; preds = %56
  %int_clr_num_load = load i32* @int_clr_num, align 4
  %tmp_109 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_DE_8 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_109
  store i16 %temp_diff_src_or_typ_23, i16* %int_clr2snd_array_DE_8, align 2
  %int_clr2snd_array_SR_8 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_109
  store i8 %temp_diff_src_or_typ_24, i8* %int_clr2snd_array_SR_8, align 2
  %int_clr2snd_array_PK_8 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_109
  store i1 true, i1* %int_clr2snd_array_PK_8, align 1
  %int_clr2snd_array_MS_8 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_109
  store i16 %temp_diff_src_or_typ_26, i16* %int_clr2snd_array_MS_8, align 2
  %int_clr2snd_array_TA_8 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_109
  store i8 %temp_diff_src_or_typ_27, i8* %int_clr2snd_array_TA_8, align 2
  %int_clr2snd_array_DA_8 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_109
  store i4 %temp_diff_src_or_typ_28, i4* %int_clr2snd_array_DA_8, align 1
  %tmp_110 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_110, i32* @int_clr_num, align 4
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %57, %56
  br label %58

; <label>:58                                      ; preds = %._crit_edge53, %55
  %i_7 = add nsw i32 %i7, -2
  br label %66

; <label>:59                                      ; preds = %53
  %tmp_100 = icmp eq i4 %p_Result_4, 1
  br i1 %tmp_100, label %60, label %._crit_edge52

; <label>:60                                      ; preds = %59
  %temp_diff_src_or_typ_29 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_30 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_31 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_32 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_33 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_34 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_107 = icmp eq i8 %temp_diff_src_or_typ_31, 0
  br i1 %tmp_107, label %61, label %62

; <label>:61                                      ; preds = %60
  %float_req_num_load_2 = load i32* @float_req_num, align 4
  %tmp_111 = sext i32 %float_req_num_load_2 to i64
  %float_request_array_108 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_111
  store i16 %temp_diff_src_or_typ_29, i16* %float_request_array_108, align 2
  %float_request_array_109 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_111
  store i8 %temp_diff_src_or_typ_30, i8* %float_request_array_109, align 2
  %float_request_array_110 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_111
  store i8 0, i8* %float_request_array_110, align 1
  %float_request_array_111 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_111
  store i16 %temp_diff_src_or_typ_32, i16* %float_request_array_111, align 2
  %float_request_array_112 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_111
  store i8 %temp_diff_src_or_typ_33, i8* %float_request_array_112, align 2
  %float_request_array_113 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_111
  store i4 %temp_diff_src_or_typ_34, i4* %float_request_array_113, align 1
  %tmp_112 = add nsw i32 %float_req_num_load_2, 1
  store i32 %tmp_112, i32* @float_req_num, align 4
  br label %64

; <label>:62                                      ; preds = %60
  %tmp_113 = icmp eq i8 %temp_diff_src_or_typ_31, 1
  br i1 %tmp_113, label %63, label %._crit_edge55

; <label>:63                                      ; preds = %62
  %float_clr_num_load = load i32* @float_clr_num, align 4
  %tmp_116 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_49 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_116
  store i16 %temp_diff_src_or_typ_29, i16* %float_clr2snd_array_49, align 2
  %float_clr2snd_array_50 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_116
  store i8 %temp_diff_src_or_typ_30, i8* %float_clr2snd_array_50, align 2
  %float_clr2snd_array_51 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_116
  store i1 true, i1* %float_clr2snd_array_51, align 1
  %float_clr2snd_array_52 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_116
  store i16 %temp_diff_src_or_typ_32, i16* %float_clr2snd_array_52, align 2
  %float_clr2snd_array_53 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_116
  store i8 %temp_diff_src_or_typ_33, i8* %float_clr2snd_array_53, align 2
  %float_clr2snd_array_54 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_116
  store i4 %temp_diff_src_or_typ_34, i4* %float_clr2snd_array_54, align 1
  %tmp_117 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_117, i32* @float_clr_num, align 4
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %63, %62
  br label %64

; <label>:64                                      ; preds = %._crit_edge55, %61
  %i_8 = add nsw i32 %i7, -2
  br label %66

._crit_edge52:                                    ; preds = %59, %52
  br label %.loopexit

; <label>:65                                      ; preds = %48
  %i_6 = add nsw i32 %i7, -2
  br label %.loopexit

.preheader621.0_ifconv:                           ; preds = %50
  %tmp_159 = trunc i129 %tmp_3 to i32
  %tmp_101 = bitcast i32 %tmp_159 to float
  %tmp_160 = trunc i32 %i7 to i2
  %sel_tmp2 = icmp eq i2 %tmp_160, 1
  %write_flag4_2 = or i1 %write_flag4_load, %sel_tmp2
  %sel_tmp9 = select i1 %sel_tmp2, float %tmp_101, float %buf4_load
  %sel_tmp = icmp eq i2 %tmp_160, 0
  %buf16_2 = select i1 %sel_tmp, float %buf4_load, float %sel_tmp9
  %sel_tmp1 = icmp eq i2 %tmp_160, -2
  %write_flag8_2 = or i1 %write_flag8_load, %sel_tmp1
  %buf_2 = select i1 %sel_tmp, float %tmp_101, float %buf_load
  %sel_tmp3 = select i1 %sel_tmp1, float %tmp_101, float %buf2_load
  %sel_tmp4 = select i1 %sel_tmp2, float %buf2_load, float %sel_tmp3
  %buf2_2 = select i1 %sel_tmp, float %buf2_load, float %sel_tmp4
  %not_sel_tmp = icmp ne i2 %tmp_160, -2
  %not_sel_tmp1 = icmp ne i2 %tmp_160, 1
  %not_sel_tmp2 = icmp ne i2 %tmp_160, 0
  %tmp27 = and i1 %not_sel_tmp1, %not_sel_tmp2
  %sel_tmp5 = and i1 %tmp27, %not_sel_tmp
  %write_flag11_2 = or i1 %write_flag1_load, %sel_tmp5
  %write_flag_2 = or i1 %sel_tmp, %write_flag_load
  %sel_tmp6 = select i1 %sel_tmp1, float %buf3_load, float %tmp_101
  %sel_tmp7 = select i1 %sel_tmp2, float %buf3_load, float %sel_tmp6
  %buf3_2 = select i1 %sel_tmp, float %buf3_load, float %sel_tmp7
  %p_Result_72_1 = call i32 @_ssdm_op_PartSelect.i32.i129.i32.i32(i129 %tmp_3, i32 32, i32 63)
  %tmp_104_1 = bitcast i32 %p_Result_72_1 to float
  switch i2 %tmp_160, label %branch3 [
    i2 -1, label %.preheader621.0_ifconv..loopexit_crit_edge
    i2 0, label %branch1
    i2 1, label %branch2
  ]

.preheader621.0_ifconv..loopexit_crit_edge:       ; preds = %.preheader621.0_ifconv
  store i1 %write_flag4_2, i1* %write_flag4
  store float %buf16_2, float* %buf4
  store i1 %write_flag8_2, i1* %write_flag8
  store float %tmp_104_1, float* %buf
  store float %buf2_2, float* %buf2
  store i1 %write_flag11_2, i1* %write_flag1
  store i1 true, i1* %write_flag
  store float %buf3_2, float* %buf3
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader621.0_ifconv..loopexit_crit_edge, %branch3, %branch2, %branch1, %65, %._crit_edge52, %.preheader.0_ifconv, %51
  %i7_4 = phi i32 [ %i, %.preheader.0_ifconv ], [ %i7, %51 ], [ %i7, %._crit_edge52 ], [ %i_6, %65 ], [ %i7, %branch3 ], [ %i7, %branch2 ], [ %i7, %branch1 ], [ %i7, %.preheader621.0_ifconv..loopexit_crit_edge ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp)
  br label %66

; <label>:66                                      ; preds = %.loopexit, %64, %58
  %i7_5 = phi i32 [ %i7_4, %.loopexit ], [ %i_7, %58 ], [ %i_8, %64 ]
  %i_9 = add nsw i32 %i7_5, 2
  br label %.preheader622

; <label>:67                                      ; preds = %.preheader622
  store i2 -1, i2* @state_1, align 1
  br label %.loopexit624

; <label>:68                                      ; preds = %codeRepl
  store i2 0, i2* @state_1, align 1
  %error_DEST_V = zext i8 %pkt_out_dest_V to i16
  %id_in_V_load_4 = load i16* @id_in_V, align 2
  %error_SRC_V = trunc i16 %id_in_V_load_4 to i8
  %tmp_4 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i24.i8.i16(i48 511, i8 %error_SRC_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i24 5, i8 %error_SRC_V, i16 %error_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_4)
  br label %.loopexit624

._crit_edge17:                                    ; preds = %._crit_edge24, %codeRepl
  br label %.loopexit624

.loopexit624.loopexit:                            ; preds = %44
  br label %.loopexit624

.loopexit624.loopexit19:                          ; preds = %36
  br label %.loopexit624

.loopexit624.loopexit20:                          ; preds = %26
  br label %.loopexit624

.loopexit624.loopexit21:                          ; preds = %18
  br label %.loopexit624

.loopexit624.loopexit22:                          ; preds = %4
  br label %.loopexit624

.loopexit624:                                     ; preds = %.loopexit624.loopexit22, %.loopexit624.loopexit21, %.loopexit624.loopexit20, %.loopexit624.loopexit19, %.loopexit624.loopexit, %._crit_edge17, %68, %67, %47, %46, %28, %10
  %write_flag4_6 = phi i1 [ false, %._crit_edge17 ], [ false, %68 ], [ %write_flag4_load, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ], [ false, %.loopexit624.loopexit21 ], [ false, %.loopexit624.loopexit22 ]
  %buf16_6 = phi float [ undef, %._crit_edge17 ], [ undef, %68 ], [ %buf4_load, %67 ], [ undef, %47 ], [ undef, %10 ], [ undef, %28 ], [ undef, %46 ], [ undef, %.loopexit624.loopexit ], [ undef, %.loopexit624.loopexit19 ], [ undef, %.loopexit624.loopexit20 ], [ undef, %.loopexit624.loopexit21 ], [ undef, %.loopexit624.loopexit22 ]
  %write_flag8_6 = phi i1 [ false, %._crit_edge17 ], [ false, %68 ], [ %write_flag8_load, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ], [ false, %.loopexit624.loopexit21 ], [ false, %.loopexit624.loopexit22 ]
  %buf_6 = phi float [ undef, %._crit_edge17 ], [ undef, %68 ], [ %buf_load, %67 ], [ undef, %47 ], [ undef, %10 ], [ undef, %28 ], [ undef, %46 ], [ undef, %.loopexit624.loopexit ], [ undef, %.loopexit624.loopexit19 ], [ undef, %.loopexit624.loopexit20 ], [ undef, %.loopexit624.loopexit21 ], [ undef, %.loopexit624.loopexit22 ]
  %buf2_6 = phi float [ undef, %._crit_edge17 ], [ undef, %68 ], [ %buf2_load, %67 ], [ undef, %47 ], [ undef, %10 ], [ undef, %28 ], [ undef, %46 ], [ undef, %.loopexit624.loopexit ], [ undef, %.loopexit624.loopexit19 ], [ undef, %.loopexit624.loopexit20 ], [ undef, %.loopexit624.loopexit21 ], [ undef, %.loopexit624.loopexit22 ]
  %write_flag11_6 = phi i1 [ false, %._crit_edge17 ], [ false, %68 ], [ %write_flag1_load, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ], [ false, %.loopexit624.loopexit21 ], [ false, %.loopexit624.loopexit22 ]
  %write_flag_6 = phi i1 [ false, %._crit_edge17 ], [ false, %68 ], [ %write_flag_load, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ], [ false, %.loopexit624.loopexit21 ], [ false, %.loopexit624.loopexit22 ]
  %buf3_6 = phi float [ undef, %._crit_edge17 ], [ undef, %68 ], [ %buf3_load, %67 ], [ undef, %47 ], [ undef, %10 ], [ undef, %28 ], [ undef, %46 ], [ undef, %.loopexit624.loopexit ], [ undef, %.loopexit624.loopexit19 ], [ undef, %.loopexit624.loopexit20 ], [ undef, %.loopexit624.loopexit21 ], [ undef, %.loopexit624.loopexit22 ]
  %p_s = phi i1 [ false, %._crit_edge17 ], [ true, %68 ], [ false, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit19 ], [ false, %.loopexit624.loopexit20 ], [ false, %.loopexit624.loopexit21 ], [ false, %.loopexit624.loopexit22 ]
  %p_cast = zext i1 %p_s to i32
  %mrv_sel = select i1 %write_flag_6, float %buf_6, float %p_read11
  %mrv_sel1 = select i1 %write_flag4_6, float %buf16_6, float %p_read_4
  %mrv_sel2 = select i1 %write_flag8_6, float %buf2_6, float %p_read_3
  %mrv_sel3 = select i1 %write_flag11_6, float %buf3_6, float %p_read_2
  %mrv = insertvalue { i32, float, float, float, float } undef, i32 %p_cast, 0
  %mrv_1 = insertvalue { i32, float, float, float, float } %mrv, float %mrv_sel, 1
  %mrv_2 = insertvalue { i32, float, float, float, float } %mrv_1, float %mrv_sel1, 2
  %mrv_3 = insertvalue { i32, float, float, float, float } %mrv_2, float %mrv_sel2, 3
  %mrv_4 = insertvalue { i32, float, float, float, float } %mrv_3, float %mrv_sel3, 4
  ret { i32, float, float, float, float } %mrv_4

branch1:                                          ; preds = %.preheader621.0_ifconv
  store i1 true, i1* %write_flag4
  store float %tmp_104_1, float* %buf4
  store i1 %write_flag8_2, i1* %write_flag8
  store float %buf_2, float* %buf
  store float %buf2_2, float* %buf2
  store i1 %write_flag11_2, i1* %write_flag1
  store i1 %write_flag_2, i1* %write_flag
  store float %buf3_2, float* %buf3
  br label %.loopexit

branch2:                                          ; preds = %.preheader621.0_ifconv
  store i1 %write_flag4_2, i1* %write_flag4
  store float %buf16_2, float* %buf4
  store i1 true, i1* %write_flag8
  store float %buf_2, float* %buf
  store float %tmp_104_1, float* %buf2
  store i1 %write_flag11_2, i1* %write_flag1
  store i1 %write_flag_2, i1* %write_flag
  store float %buf3_2, float* %buf3
  br label %.loopexit

branch3:                                          ; preds = %.preheader621.0_ifconv
  store i1 %write_flag4_2, i1* %write_flag4
  store float %buf16_2, float* %buf4
  store i1 %write_flag8_2, i1* %write_flag8
  store float %buf_2, float* %buf
  store float %buf2_2, float* %buf2
  store i1 true, i1* %write_flag1
  store i1 %write_flag_2, i1* %write_flag
  store float %tmp_104_1, float* %buf3
  br label %.loopexit
}

define internal fastcc i1 @MPI_Recv.1.2(float* %buf_r, i64 %buf_offset, i30 %count, i18 %source) {
codeRepl:
  %source_read = call i18 @_ssdm_op_Read.ap_auto.i18(i18 %source)
  %count_read = call i30 @_ssdm_op_Read.ap_auto.i30(i30 %count)
  %buf_offset_read = call i64 @_ssdm_op_Read.ap_auto.i64(i64 %buf_offset)
  %count_cast1 = sext i30 %count_read to i32
  call void (...)* @_ssdm_op_SpecIFCore(float* %buf_r, [1 x i8]* @p_str8, [6 x i8]* @p_str12, [1 x i8]* @p_str8, i32 -1, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(float* %buf_r, [7 x i8]* @p_str11, i32 0, i32 0, [1 x i8]* @p_str8, i32 0, i64 2147483648, [1 x i8]* @p_str8, [1 x i8]* @p_str8, [1 x i8]* @p_str8, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str8, [1 x i8]* @p_str8)
  %state_1_load = load i2* @state_1, align 1
  %pkt_out_dest_V = load i8* @envlp_SRC_V_1, align 1
  switch i2 %state_1_load, label %._crit_edge17 [
    i2 0, label %.preheader632.preheader
    i2 1, label %48
    i2 -2, label %49
    i2 -1, label %71
  ]

.preheader632.preheader:                          ; preds = %codeRepl
  %float_req_num_load = load i32* @float_req_num, align 4
  %id_in_V_load = load i16* @id_in_V, align 2
  %tmp_163 = trunc i18 %source_read to i17
  br label %.preheader632

.preheader632:                                    ; preds = %._crit_edge18, %.preheader632.preheader
  %j = phi i31 [ %i_5, %._crit_edge18 ], [ 0, %.preheader632.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_51 = icmp slt i32 %j_cast, %float_req_num_load
  %i_5 = add i31 %j, 1
  br i1 %tmp_51, label %0, label %6

; <label>:0                                       ; preds = %.preheader632
  %tmp_52 = zext i31 %j to i64
  %float_request_array_114 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_52
  %float_request_array_115 = load i8* %float_request_array_114, align 1
  %tmp_53 = icmp eq i8 %float_request_array_115, 0
  br i1 %tmp_53, label %1, label %._crit_edge18

; <label>:1                                       ; preds = %0
  %float_request_array_116 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_52
  %float_request_array_117 = load i16* %float_request_array_116, align 2
  %tmp_55 = icmp eq i16 %float_request_array_117, %id_in_V_load
  br i1 %tmp_55, label %2, label %._crit_edge18

; <label>:2                                       ; preds = %1
  %float_request_array_118 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_52
  %float_request_array_119 = load i8* %float_request_array_118, align 2
  %tmp_57_cast = zext i8 %float_request_array_119 to i17
  %tmp_58 = icmp eq i17 %tmp_57_cast, %tmp_163
  br i1 %tmp_58, label %3, label %._crit_edge18

; <label>:3                                       ; preds = %2
  store i16 %id_in_V_load, i16* @envlp_DEST_V, align 2
  store i8 %float_request_array_119, i8* @envlp_SRC_V_1, align 2
  %float_request_array_120 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_52
  %float_request_array_121 = load i16* %float_request_array_120, align 2
  store i16 %float_request_array_121, i16* @envlp_MSG_SIZE_V_1, align 2
  store i2 1, i2* @state_1, align 1
  %tmp_61 = add nsw i32 %float_req_num_load, -1
  store i32 %tmp_61, i32* @float_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j1 = phi i32 [ %j_cast, %3 ], [ %j_1, %5 ]
  %tmp_65 = icmp slt i32 %j1, %tmp_61
  br i1 %tmp_65, label %5, label %.loopexit624.loopexit562

; <label>:5                                       ; preds = %4
  %tmp_71 = sext i32 %j1 to i64
  %j_1 = add nsw i32 %j1, 1
  %tmp_72 = sext i32 %j_1 to i64
  %float_request_array_122 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_72
  %float_request_array_123 = load i16* %float_request_array_122, align 2
  %float_request_array_124 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_71
  store i16 %float_request_array_123, i16* %float_request_array_124, align 2
  %float_request_array_125 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_72
  %float_request_array_126 = load i8* %float_request_array_125, align 2
  %float_request_array_127 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_71
  store i8 %float_request_array_126, i8* %float_request_array_127, align 2
  %float_request_array_128 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_72
  %float_request_array_129 = load i8* %float_request_array_128, align 1
  %float_request_array_130 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_71
  store i8 %float_request_array_129, i8* %float_request_array_130, align 1
  %float_request_array_131 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_72
  %float_request_array_132 = load i16* %float_request_array_131, align 2
  %float_request_array_133 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_71
  store i16 %float_request_array_132, i16* %float_request_array_133, align 2
  %float_request_array_134 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_72
  %float_request_array_135 = load i8* %float_request_array_134, align 2
  %float_request_array_136 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_71
  store i8 %float_request_array_135, i8* %float_request_array_136, align 2
  %float_request_array_137 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_72
  %float_request_array_138 = load i4* %float_request_array_137, align 1
  %float_request_array_139 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_71
  store i4 %float_request_array_138, i4* %float_request_array_139, align 1
  %float_request_array_140 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_72
  %float_request_array_141 = load i4* %float_request_array_140, align 2
  %float_request_array_142 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_71
  store i4 %float_request_array_141, i4* %float_request_array_142, align 2
  br label %4

._crit_edge18:                                    ; preds = %2, %1, %0
  br label %.preheader632

; <label>:6                                       ; preds = %.preheader632
  %tmp72 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp72, i32 64, i32 71)
  %tmp_168 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp72, i32 72)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V = phi i1 [ %tmp_168, %6 ], [ %tmp_169, %8 ]
  br i1 %last_V, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_191 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %tmp_169 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_191, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %temp_diff_src_or_typ = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_35 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp72, i32 16, i32 23)
  %temp_diff_src_or_typ_36 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp72, i32 24, i32 31)
  %temp_diff_src_or_typ_37 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp72, i32 32, i32 47)
  %temp_diff_src_or_typ_38 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp72, i32 48, i32 55)
  %temp_diff_src_or_typ_39 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp72, i32 60, i32 63)
  store i16 %temp_diff_src_or_typ, i16* @envlp_DEST_V, align 2
  store i8 %temp_diff_src_or_typ_35, i8* @envlp_SRC_V_1, align 1
  store i16 %temp_diff_src_or_typ_37, i16* @envlp_MSG_SIZE_V_1, align 2
  %tmp_59 = icmp eq i8 %temp_diff_src_or_typ_36, 0
  %tmp_62 = icmp eq i16 %temp_diff_src_or_typ, %id_in_V_load
  %or_cond = and i1 %tmp_59, %tmp_62
  br i1 %or_cond, label %10, label %._crit_edge21

; <label>:10                                      ; preds = %9
  %tmp_66_cast = zext i8 %temp_diff_src_or_typ_35 to i17
  %tmp_67 = icmp eq i17 %tmp_66_cast, %tmp_163
  br i1 %tmp_67, label %11, label %._crit_edge21

; <label>:11                                      ; preds = %10
  store i2 1, i2* @state_1, align 1
  br label %.loopexit624

._crit_edge21:                                    ; preds = %10, %9
  %p_Result_7 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp72, i32 93, i32 96)
  %tmp_68 = icmp eq i4 %p_Result_7, 0
  br i1 %tmp_68, label %12, label %._crit_edge24

; <label>:12                                      ; preds = %._crit_edge21
  %p_Result_9 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp72, i32 89, i32 92)
  %tmp_73 = icmp eq i4 %p_Result_9, 0
  br i1 %tmp_73, label %13, label %30

; <label>:13                                      ; preds = %12
  br i1 %tmp_59, label %.preheader629.preheader, label %21

.preheader629.preheader:                          ; preds = %13
  %int_req_num_load_1 = load i32* @int_req_num, align 4
  br label %.preheader629

.preheader629:                                    ; preds = %._crit_edge25, %.preheader629.preheader
  %i1 = phi i31 [ %i_15, %._crit_edge25 ], [ 0, %.preheader629.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_95 = icmp slt i32 %i1_cast, %int_req_num_load_1
  %i_15 = add i31 %i1, 1
  br i1 %tmp_95, label %14, label %20

; <label>:14                                      ; preds = %.preheader629
  %tmp_99 = zext i31 %i1 to i64
  %int_request_array_SR_9 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_99
  %int_request_array_SR_10 = load i8* %int_request_array_SR_9, align 2
  %tmp_100 = icmp eq i8 %int_request_array_SR_10, %temp_diff_src_or_typ_35
  br i1 %tmp_100, label %15, label %._crit_edge25

; <label>:15                                      ; preds = %14
  %int_request_array_DE_9 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_99
  %int_request_array_DE_10 = load i16* %int_request_array_DE_9, align 2
  %tmp_105 = icmp eq i16 %int_request_array_DE_10, %temp_diff_src_or_typ
  br i1 %tmp_105, label %16, label %._crit_edge25

; <label>:16                                      ; preds = %15
  %int_request_array_PK_9 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_99
  %int_request_array_PK_10 = load i1* %int_request_array_PK_9, align 1
  br i1 %int_request_array_PK_10, label %._crit_edge25, label %17

; <label>:17                                      ; preds = %16
  %int_request_array_MS_9 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_99
  %int_request_array_MS_10 = load i16* %int_request_array_MS_9, align 2
  %tmp_122 = icmp eq i16 %int_request_array_MS_10, %temp_diff_src_or_typ_37
  br i1 %tmp_122, label %18, label %._crit_edge25

; <label>:18                                      ; preds = %17
  %int_request_array_TA_9 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_99
  %int_request_array_TA_10 = load i8* %int_request_array_TA_9, align 2
  %tmp_126 = icmp eq i8 %int_request_array_TA_10, %temp_diff_src_or_typ_38
  br i1 %tmp_126, label %19, label %._crit_edge25

; <label>:19                                      ; preds = %18
  %int_request_array_DA_10 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_99
  %int_request_array_DA_11 = load i4* %int_request_array_DA_10, align 1
  %tmp_130 = icmp eq i4 %int_request_array_DA_11, %temp_diff_src_or_typ_39
  br i1 %tmp_130, label %.loopexit624.loopexit561, label %._crit_edge25

._crit_edge25:                                    ; preds = %19, %18, %17, %16, %15, %14
  br label %.preheader629

; <label>:20                                      ; preds = %.preheader629
  %tmp_101 = sext i32 %int_req_num_load_1 to i64
  %int_request_array_DE_11 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_101
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_11, align 2
  %int_request_array_SR_11 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_101
  store i8 %temp_diff_src_or_typ_35, i8* %int_request_array_SR_11, align 2
  %int_request_array_PK_11 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_101
  store i1 false, i1* %int_request_array_PK_11, align 1
  %int_request_array_MS_11 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_101
  store i16 %temp_diff_src_or_typ_37, i16* %int_request_array_MS_11, align 2
  %int_request_array_TA_11 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_101
  store i8 %temp_diff_src_or_typ_38, i8* %int_request_array_TA_11, align 2
  %int_request_array_DA_12 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_101
  store i4 %temp_diff_src_or_typ_39, i4* %int_request_array_DA_12, align 1
  %tmp_102 = add nsw i32 %int_req_num_load_1, 1
  store i32 %tmp_102, i32* @int_req_num, align 4
  br label %29

; <label>:21                                      ; preds = %13
  %tmp_85 = icmp eq i8 %temp_diff_src_or_typ_36, 1
  br i1 %tmp_85, label %.preheader627.preheader, label %._crit_edge31

.preheader627.preheader:                          ; preds = %21
  %int_clr_num_load_1 = load i32* @int_clr_num, align 4
  br label %.preheader627

.preheader627:                                    ; preds = %._crit_edge32, %.preheader627.preheader
  %i2 = phi i31 [ %i_12, %._crit_edge32 ], [ 0, %.preheader627.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_103 = icmp slt i32 %i2_cast, %int_clr_num_load_1
  %i_12 = add i31 %i2, 1
  br i1 %tmp_103, label %22, label %28

; <label>:22                                      ; preds = %.preheader627
  %tmp_106 = zext i31 %i2 to i64
  %int_clr2snd_array_SR_9 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_106
  %int_clr2snd_array_SR_10 = load i8* %int_clr2snd_array_SR_9, align 2
  %tmp_107 = icmp eq i8 %int_clr2snd_array_SR_10, %temp_diff_src_or_typ_35
  br i1 %tmp_107, label %23, label %._crit_edge32

; <label>:23                                      ; preds = %22
  %int_clr2snd_array_DE_9 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_106
  %int_clr2snd_array_DE_10 = load i16* %int_clr2snd_array_DE_9, align 2
  %tmp_116 = icmp eq i16 %int_clr2snd_array_DE_10, %temp_diff_src_or_typ
  br i1 %tmp_116, label %24, label %._crit_edge32

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_PK_9 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_106
  %int_clr2snd_array_PK_10 = load i1* %int_clr2snd_array_PK_9, align 1
  br i1 %int_clr2snd_array_PK_10, label %25, label %._crit_edge32

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_MS_9 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_106
  %int_clr2snd_array_MS_10 = load i16* %int_clr2snd_array_MS_9, align 2
  %tmp_127 = icmp eq i16 %int_clr2snd_array_MS_10, %temp_diff_src_or_typ_37
  br i1 %tmp_127, label %26, label %._crit_edge32

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_TA_9 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_106
  %int_clr2snd_array_TA_10 = load i8* %int_clr2snd_array_TA_9, align 2
  %tmp_131 = icmp eq i8 %int_clr2snd_array_TA_10, %temp_diff_src_or_typ_38
  br i1 %tmp_131, label %27, label %._crit_edge32

; <label>:27                                      ; preds = %26
  %int_clr2snd_array_DA_9 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_106
  %int_clr2snd_array_DA_10 = load i4* %int_clr2snd_array_DA_9, align 1
  %tmp_134 = icmp eq i4 %int_clr2snd_array_DA_10, %temp_diff_src_or_typ_39
  br i1 %tmp_134, label %.loopexit624.loopexit560, label %._crit_edge32

._crit_edge32:                                    ; preds = %27, %26, %25, %24, %23, %22
  br label %.preheader627

; <label>:28                                      ; preds = %.preheader627
  %tmp_108 = sext i32 %int_clr_num_load_1 to i64
  %int_clr2snd_array_DE_11 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_108
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_11, align 2
  %int_clr2snd_array_SR_11 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_108
  store i8 %temp_diff_src_or_typ_35, i8* %int_clr2snd_array_SR_11, align 2
  %int_clr2snd_array_PK_11 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_108
  store i1 true, i1* %int_clr2snd_array_PK_11, align 1
  %int_clr2snd_array_MS_11 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_108
  store i16 %temp_diff_src_or_typ_37, i16* %int_clr2snd_array_MS_11, align 2
  %int_clr2snd_array_TA_11 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_108
  store i8 %temp_diff_src_or_typ_38, i8* %int_clr2snd_array_TA_11, align 2
  %int_clr2snd_array_DA_11 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_108
  store i4 %temp_diff_src_or_typ_39, i4* %int_clr2snd_array_DA_11, align 1
  %tmp_109 = add nsw i32 %int_clr_num_load_1, 1
  store i32 %tmp_109, i32* @int_clr_num, align 4
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %28, %21
  br label %29

; <label>:29                                      ; preds = %._crit_edge31, %20
  br label %.loopexit624

; <label>:30                                      ; preds = %12
  %tmp_77 = icmp eq i4 %p_Result_9, 1
  br i1 %tmp_77, label %31, label %._crit_edge24

; <label>:31                                      ; preds = %30
  br i1 %tmp_59, label %.preheader625.preheader, label %39

.preheader625.preheader:                          ; preds = %31
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.preheader, %._crit_edge39
  %i4 = phi i31 [ %i_13, %._crit_edge39 ], [ 0, %.preheader625.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_104 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_13 = add i31 %i4, 1
  br i1 %tmp_104, label %32, label %38

; <label>:32                                      ; preds = %.preheader625
  %tmp_110 = zext i31 %i4 to i64
  %float_request_array_143 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_110
  %float_request_array_144 = load i8* %float_request_array_143, align 2
  %tmp_111 = icmp eq i8 %float_request_array_144, %temp_diff_src_or_typ_35
  br i1 %tmp_111, label %33, label %._crit_edge39

; <label>:33                                      ; preds = %32
  %float_request_array_145 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_110
  %float_request_array_146 = load i16* %float_request_array_145, align 2
  %tmp_117 = icmp eq i16 %float_request_array_146, %temp_diff_src_or_typ
  br i1 %tmp_117, label %34, label %._crit_edge39

; <label>:34                                      ; preds = %33
  %float_request_array_147 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_110
  %float_request_array_148 = load i8* %float_request_array_147, align 1
  %tmp_124 = icmp eq i8 %float_request_array_148, 0
  br i1 %tmp_124, label %35, label %._crit_edge39

; <label>:35                                      ; preds = %34
  %float_request_array_149 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_110
  %float_request_array_150 = load i16* %float_request_array_149, align 2
  %tmp_128 = icmp eq i16 %float_request_array_150, %temp_diff_src_or_typ_37
  br i1 %tmp_128, label %36, label %._crit_edge39

; <label>:36                                      ; preds = %35
  %float_request_array_151 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_110
  %float_request_array_152 = load i8* %float_request_array_151, align 2
  %tmp_132 = icmp eq i8 %float_request_array_152, %temp_diff_src_or_typ_38
  br i1 %tmp_132, label %37, label %._crit_edge39

; <label>:37                                      ; preds = %36
  %float_request_array_153 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_110
  %float_request_array_154 = load i4* %float_request_array_153, align 1
  %tmp_135 = icmp eq i4 %float_request_array_154, %temp_diff_src_or_typ_39
  br i1 %tmp_135, label %.loopexit624.loopexit559, label %._crit_edge39

._crit_edge39:                                    ; preds = %37, %36, %35, %34, %33, %32
  br label %.preheader625

; <label>:38                                      ; preds = %.preheader625
  %tmp_112 = sext i32 %float_req_num_load to i64
  %float_request_array_155 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_112
  store i16 %temp_diff_src_or_typ, i16* %float_request_array_155, align 2
  %float_request_array_156 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_112
  store i8 %temp_diff_src_or_typ_35, i8* %float_request_array_156, align 2
  %float_request_array_157 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_112
  store i8 0, i8* %float_request_array_157, align 1
  %float_request_array_158 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_112
  store i16 %temp_diff_src_or_typ_37, i16* %float_request_array_158, align 2
  %float_request_array_159 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_112
  store i8 %temp_diff_src_or_typ_38, i8* %float_request_array_159, align 2
  %float_request_array_160 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_112
  store i4 %temp_diff_src_or_typ_39, i4* %float_request_array_160, align 1
  %tmp_113 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_113, i32* @float_req_num, align 4
  br label %47

; <label>:39                                      ; preds = %31
  %tmp_96 = icmp eq i8 %temp_diff_src_or_typ_36, 1
  br i1 %tmp_96, label %.preheader623.preheader, label %._crit_edge45

.preheader623.preheader:                          ; preds = %39
  %float_clr_num_load_1 = load i32* @float_clr_num, align 4
  br label %.preheader623

.preheader623:                                    ; preds = %._crit_edge46, %.preheader623.preheader
  %i5 = phi i31 [ %i_14, %._crit_edge46 ], [ 0, %.preheader623.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_114 = icmp slt i32 %i5_cast, %float_clr_num_load_1
  %i_14 = add i31 %i5, 1
  br i1 %tmp_114, label %40, label %46

; <label>:40                                      ; preds = %.preheader623
  %tmp_118 = zext i31 %i5 to i64
  %float_clr2snd_array_55 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_118
  %float_clr2snd_array_56 = load i8* %float_clr2snd_array_55, align 2
  %tmp_119 = icmp eq i8 %float_clr2snd_array_56, %temp_diff_src_or_typ_35
  br i1 %tmp_119, label %41, label %._crit_edge46

; <label>:41                                      ; preds = %40
  %float_clr2snd_array_57 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_118
  %float_clr2snd_array_58 = load i16* %float_clr2snd_array_57, align 2
  %tmp_125 = icmp eq i16 %float_clr2snd_array_58, %temp_diff_src_or_typ
  br i1 %tmp_125, label %42, label %._crit_edge46

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_59 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_118
  %float_clr2snd_array_60 = load i1* %float_clr2snd_array_59, align 1
  br i1 %float_clr2snd_array_60, label %43, label %._crit_edge46

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_61 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_118
  %float_clr2snd_array_62 = load i16* %float_clr2snd_array_61, align 2
  %tmp_133 = icmp eq i16 %float_clr2snd_array_62, %temp_diff_src_or_typ_37
  br i1 %tmp_133, label %44, label %._crit_edge46

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_63 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_118
  %float_clr2snd_array_64 = load i8* %float_clr2snd_array_63, align 2
  %tmp_136 = icmp eq i8 %float_clr2snd_array_64, %temp_diff_src_or_typ_38
  br i1 %tmp_136, label %45, label %._crit_edge46

; <label>:45                                      ; preds = %44
  %float_clr2snd_array_65 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_118
  %float_clr2snd_array_66 = load i4* %float_clr2snd_array_65, align 1
  %tmp_137 = icmp eq i4 %float_clr2snd_array_66, %temp_diff_src_or_typ_39
  br i1 %tmp_137, label %.loopexit624.loopexit, label %._crit_edge46

._crit_edge46:                                    ; preds = %45, %44, %43, %42, %41, %40
  br label %.preheader623

; <label>:46                                      ; preds = %.preheader623
  %tmp_120 = sext i32 %float_clr_num_load_1 to i64
  %float_clr2snd_array_67 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_120
  store i16 %temp_diff_src_or_typ, i16* %float_clr2snd_array_67, align 2
  %float_clr2snd_array_68 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_120
  store i8 %temp_diff_src_or_typ_35, i8* %float_clr2snd_array_68, align 2
  %float_clr2snd_array_69 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_120
  store i1 true, i1* %float_clr2snd_array_69, align 1
  %float_clr2snd_array_70 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_120
  store i16 %temp_diff_src_or_typ_37, i16* %float_clr2snd_array_70, align 2
  %float_clr2snd_array_71 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_120
  store i8 %temp_diff_src_or_typ_38, i8* %float_clr2snd_array_71, align 2
  %float_clr2snd_array_72 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_120
  store i4 %temp_diff_src_or_typ_39, i4* %float_clr2snd_array_72, align 1
  %tmp_121 = add nsw i32 %float_clr_num_load_1, 1
  store i32 %tmp_121, i32* @float_clr_num, align 4
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %46, %39
  br label %47

; <label>:47                                      ; preds = %._crit_edge45, %38
  br label %.loopexit624

._crit_edge24:                                    ; preds = %30, %._crit_edge21
  br label %._crit_edge17

; <label>:48                                      ; preds = %codeRepl
  %clr2snd_DEST_V = zext i8 %pkt_out_dest_V to i16
  %envlp_DEST_V_load = load i16* @envlp_DEST_V, align 2
  %clr2snd_SRC_V = trunc i16 %envlp_DEST_V_load to i8
  %clr2snd_MSG_SIZE_V = load i16* @envlp_MSG_SIZE_V_1, align 2
  %id_in_V_load_1 = load i16* @id_in_V, align 2
  %pkt_out_id_V = trunc i16 %id_in_V_load_1 to i8
  %tmp_2 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i16.i8.i8.i16(i48 511, i8 %pkt_out_id_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V, i16 %clr2snd_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_2)
  store i2 -2, i2* @state_1, align 1
  br label %.loopexit624

; <label>:49                                      ; preds = %codeRepl
  %tmp_s = icmp eq i30 %count_read, 0
  br i1 %tmp_s, label %50, label %.preheader622.preheader

.preheader622.preheader:                          ; preds = %49
  %tmp_167 = trunc i64 %buf_offset_read to i33
  br label %.preheader622

; <label>:50                                      ; preds = %49
  store i2 -1, i2* @state_1, align 1
  br label %.loopexit624

.preheader622:                                    ; preds = %69, %.preheader622.preheader
  %i7 = phi i32 [ %i_9, %69 ], [ 0, %.preheader622.preheader ]
  %tmp_54 = icmp slt i32 %i7, %count_cast1
  br i1 %tmp_54, label %51, label %70

; <label>:51                                      ; preds = %.preheader622
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8) nounwind
  %tmp_6 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* @stream_in_V, i32 1)
  br i1 %tmp_6, label %52, label %68

; <label>:52                                      ; preds = %51
  %tmp_3 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 64, i32 71)
  %recv_data_keep_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 81, i32 88)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 93, i32 96)
  %tmp_60 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_60, label %53, label %55

; <label>:53                                      ; preds = %52
  %tmp_63 = icmp eq i8 %recv_data_keep_V, -1
  br i1 %tmp_63, label %.preheader621.0, label %54

; <label>:54                                      ; preds = %53
  %tmp_69 = icmp eq i8 %recv_data_keep_V, 15
  br i1 %tmp_69, label %.preheader.0, label %.loopexit

.preheader.0:                                     ; preds = %54
  %tmp_171 = trunc i129 %tmp_3 to i32
  %tmp_87 = bitcast i32 %tmp_171 to float
  %tmp_89_cast = sext i32 %i7 to i33
  %sum2 = add i33 %tmp_167, %tmp_89_cast
  %sum2_cast = zext i33 %sum2 to i64
  %buf_addr_2 = getelementptr float* %buf_r, i64 %sum2_cast
  %buf_addr_2_req = call i1 @_ssdm_op_WriteReq.ap_bus.floatP(float* %buf_addr_2, i32 1)
  call void @_ssdm_op_Write.ap_bus.floatP(float* %buf_addr_2, float %tmp_87)
  %i = add nsw i32 -1, %i7
  br label %.loopexit

; <label>:55                                      ; preds = %52
  %tmp_64 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_64, label %56, label %._crit_edge52

; <label>:56                                      ; preds = %55
  %p_Result_8 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 89, i32 92)
  %tmp_70 = icmp eq i4 %p_Result_8, 0
  br i1 %tmp_70, label %57, label %62

; <label>:57                                      ; preds = %56
  %temp_diff_src_or_typ_40 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_41 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_42 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_43 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_44 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_45 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_74 = icmp eq i8 %temp_diff_src_or_typ_42, 0
  br i1 %tmp_74, label %58, label %59

; <label>:58                                      ; preds = %57
  %int_req_num_load = load i32* @int_req_num, align 4
  %tmp_81 = sext i32 %int_req_num_load to i64
  %int_request_array_DE_12 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_81
  store i16 %temp_diff_src_or_typ_40, i16* %int_request_array_DE_12, align 2
  %int_request_array_SR_12 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_81
  store i8 %temp_diff_src_or_typ_41, i8* %int_request_array_SR_12, align 2
  %int_request_array_PK_12 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_81
  store i1 false, i1* %int_request_array_PK_12, align 1
  %int_request_array_MS_12 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_81
  store i16 %temp_diff_src_or_typ_43, i16* %int_request_array_MS_12, align 2
  %int_request_array_TA_12 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_81
  store i8 %temp_diff_src_or_typ_44, i8* %int_request_array_TA_12, align 2
  %int_request_array_DA_13 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_81
  store i4 %temp_diff_src_or_typ_45, i4* %int_request_array_DA_13, align 1
  %tmp_82 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_82, i32* @int_req_num, align 4
  br label %61

; <label>:59                                      ; preds = %57
  %tmp_83 = icmp eq i8 %temp_diff_src_or_typ_42, 1
  br i1 %tmp_83, label %60, label %._crit_edge53

; <label>:60                                      ; preds = %59
  %int_clr_num_load = load i32* @int_clr_num, align 4
  %tmp_90 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_DE_12 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_90
  store i16 %temp_diff_src_or_typ_40, i16* %int_clr2snd_array_DE_12, align 2
  %int_clr2snd_array_SR_12 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_90
  store i8 %temp_diff_src_or_typ_41, i8* %int_clr2snd_array_SR_12, align 2
  %int_clr2snd_array_PK_12 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_90
  store i1 true, i1* %int_clr2snd_array_PK_12, align 1
  %int_clr2snd_array_MS_12 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_90
  store i16 %temp_diff_src_or_typ_43, i16* %int_clr2snd_array_MS_12, align 2
  %int_clr2snd_array_TA_12 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_90
  store i8 %temp_diff_src_or_typ_44, i8* %int_clr2snd_array_TA_12, align 2
  %int_clr2snd_array_DA_12 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_90
  store i4 %temp_diff_src_or_typ_45, i4* %int_clr2snd_array_DA_12, align 1
  %tmp_91 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_91, i32* @int_clr_num, align 4
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %60, %59
  br label %61

; <label>:61                                      ; preds = %._crit_edge53, %58
  %i_7 = add nsw i32 %i7, -2
  br label %69

; <label>:62                                      ; preds = %56
  %tmp_75 = icmp eq i4 %p_Result_8, 1
  br i1 %tmp_75, label %63, label %._crit_edge52

; <label>:63                                      ; preds = %62
  %temp_diff_src_or_typ_46 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_47 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_48 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_49 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_50 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_51 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_84 = icmp eq i8 %temp_diff_src_or_typ_48, 0
  br i1 %tmp_84, label %64, label %65

; <label>:64                                      ; preds = %63
  %float_req_num_load_2 = load i32* @float_req_num, align 4
  %tmp_92 = sext i32 %float_req_num_load_2 to i64
  %float_request_array_161 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_92
  store i16 %temp_diff_src_or_typ_46, i16* %float_request_array_161, align 2
  %float_request_array_162 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_92
  store i8 %temp_diff_src_or_typ_47, i8* %float_request_array_162, align 2
  %float_request_array_163 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_92
  store i8 0, i8* %float_request_array_163, align 1
  %float_request_array_164 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_92
  store i16 %temp_diff_src_or_typ_49, i16* %float_request_array_164, align 2
  %float_request_array_165 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_92
  store i8 %temp_diff_src_or_typ_50, i8* %float_request_array_165, align 2
  %float_request_array_166 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_92
  store i4 %temp_diff_src_or_typ_51, i4* %float_request_array_166, align 1
  %tmp_93 = add nsw i32 %float_req_num_load_2, 1
  store i32 %tmp_93, i32* @float_req_num, align 4
  br label %67

; <label>:65                                      ; preds = %63
  %tmp_94 = icmp eq i8 %temp_diff_src_or_typ_48, 1
  br i1 %tmp_94, label %66, label %._crit_edge55

; <label>:66                                      ; preds = %65
  %float_clr_num_load = load i32* @float_clr_num, align 4
  %tmp_97 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_73 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_97
  store i16 %temp_diff_src_or_typ_46, i16* %float_clr2snd_array_73, align 2
  %float_clr2snd_array_74 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_97
  store i8 %temp_diff_src_or_typ_47, i8* %float_clr2snd_array_74, align 2
  %float_clr2snd_array_75 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_97
  store i1 true, i1* %float_clr2snd_array_75, align 1
  %float_clr2snd_array_76 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_97
  store i16 %temp_diff_src_or_typ_49, i16* %float_clr2snd_array_76, align 2
  %float_clr2snd_array_77 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_97
  store i8 %temp_diff_src_or_typ_50, i8* %float_clr2snd_array_77, align 2
  %float_clr2snd_array_78 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_97
  store i4 %temp_diff_src_or_typ_51, i4* %float_clr2snd_array_78, align 1
  %tmp_98 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_98, i32* @float_clr_num, align 4
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %66, %65
  br label %67

; <label>:67                                      ; preds = %._crit_edge55, %64
  %i_8 = add nsw i32 %i7, -2
  br label %69

._crit_edge52:                                    ; preds = %62, %55
  br label %.loopexit

; <label>:68                                      ; preds = %51
  %i_6 = add nsw i32 %i7, -2
  br label %.loopexit

.preheader621.0:                                  ; preds = %53
  %tmp_170 = trunc i129 %tmp_3 to i32
  %tmp_78 = bitcast i32 %tmp_170 to float
  %tmp_80_cast = sext i32 %i7 to i33
  %sum = add i33 %tmp_167, %tmp_80_cast
  %sum_cast = zext i33 %sum to i64
  %buf_addr = getelementptr float* %buf_r, i64 %sum_cast
  %buf_addr_req = call i1 @_ssdm_op_WriteReq.ap_bus.floatP(float* %buf_addr, i32 1)
  call void @_ssdm_op_Write.ap_bus.floatP(float* %buf_addr, float %tmp_78)
  %p_Result_52_1 = call i32 @_ssdm_op_PartSelect.i32.i129.i32.i32(i129 %tmp_3, i32 32, i32 63)
  %tmp_78_1 = bitcast i32 %p_Result_52_1 to float
  %tmp_79_1 = add nsw i32 1, %i7
  %tmp_80_1_cast = sext i32 %tmp_79_1 to i33
  %sum_1 = add i33 %tmp_167, %tmp_80_1_cast
  %sum_1_cast = zext i33 %sum_1 to i64
  %buf_addr_1 = getelementptr float* %buf_r, i64 %sum_1_cast
  %buf_addr_1_req = call i1 @_ssdm_op_WriteReq.ap_bus.floatP(float* %buf_addr_1, i32 1)
  call void @_ssdm_op_Write.ap_bus.floatP(float* %buf_addr_1, float %tmp_78_1)
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader621.0, %68, %._crit_edge52, %.preheader.0, %54
  %i7_4 = phi i32 [ %i_6, %68 ], [ %i7, %._crit_edge52 ], [ %i, %.preheader.0 ], [ %i7, %54 ], [ %i7, %.preheader621.0 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp) nounwind
  br label %69

; <label>:69                                      ; preds = %.loopexit, %67, %61
  %i7_5 = phi i32 [ %i7_4, %.loopexit ], [ %i_7, %61 ], [ %i_8, %67 ]
  %i_9 = add nsw i32 %i7_5, 2
  br label %.preheader622

; <label>:70                                      ; preds = %.preheader622
  store i2 -1, i2* @state_1, align 1
  br label %.loopexit624

; <label>:71                                      ; preds = %codeRepl
  store i2 0, i2* @state_1, align 1
  %error_DEST_V = zext i8 %pkt_out_dest_V to i16
  %id_in_V_load_2 = load i16* @id_in_V, align 2
  %error_SRC_V = trunc i16 %id_in_V_load_2 to i8
  %tmp_4 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i24.i8.i16(i48 511, i8 %error_SRC_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i24 5, i8 %error_SRC_V, i16 %error_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_4)
  br label %.loopexit624

._crit_edge17:                                    ; preds = %._crit_edge24, %codeRepl
  br label %.loopexit624

.loopexit624.loopexit:                            ; preds = %45
  br label %.loopexit624

.loopexit624.loopexit559:                         ; preds = %37
  br label %.loopexit624

.loopexit624.loopexit560:                         ; preds = %27
  br label %.loopexit624

.loopexit624.loopexit561:                         ; preds = %19
  br label %.loopexit624

.loopexit624.loopexit562:                         ; preds = %4
  br label %.loopexit624

.loopexit624:                                     ; preds = %.loopexit624.loopexit562, %.loopexit624.loopexit561, %.loopexit624.loopexit560, %.loopexit624.loopexit559, %.loopexit624.loopexit, %._crit_edge17, %71, %70, %50, %48, %47, %29, %11
  %p_s = phi i1 [ false, %._crit_edge17 ], [ true, %71 ], [ false, %50 ], [ false, %70 ], [ false, %48 ], [ false, %11 ], [ false, %29 ], [ false, %47 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit559 ], [ false, %.loopexit624.loopexit560 ], [ false, %.loopexit624.loopexit561 ], [ false, %.loopexit624.loopexit562 ]
  ret i1 %p_s
}

define internal fastcc i1 @MPI_Recv.1.1([7 x float]* nocapture %buf_r) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %state_1_load = load i2* @state_1, align 1
  %pkt_out_dest_V = load i8* @envlp_SRC_V_1, align 1
  switch i2 %state_1_load, label %._crit_edge17 [
    i2 0, label %.preheader632.preheader
    i2 1, label %47
    i2 -2, label %.preheader622.preheader
    i2 -1, label %68
  ]

.preheader622.preheader:                          ; preds = %codeRepl
  br label %.preheader622

.preheader632.preheader:                          ; preds = %codeRepl
  %float_req_num_load = load i32* @float_req_num, align 4
  %id_in_V_load = load i16* @id_in_V, align 2
  br label %.preheader632

.preheader632:                                    ; preds = %._crit_edge18, %.preheader632.preheader
  %j = phi i31 [ %i_5, %._crit_edge18 ], [ 0, %.preheader632.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_70 = icmp slt i32 %j_cast, %float_req_num_load
  %i_5 = add i31 %j, 1
  br i1 %tmp_70, label %0, label %6

; <label>:0                                       ; preds = %.preheader632
  %tmp_71 = zext i31 %j to i64
  %float_request_array_167 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_71
  %float_request_array_168 = load i8* %float_request_array_167, align 1
  %tmp_72 = icmp eq i8 %float_request_array_168, 0
  br i1 %tmp_72, label %1, label %._crit_edge18

; <label>:1                                       ; preds = %0
  %float_request_array_169 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_71
  %float_request_array_170 = load i16* %float_request_array_169, align 2
  %tmp_75 = icmp eq i16 %float_request_array_170, %id_in_V_load
  br i1 %tmp_75, label %2, label %._crit_edge18

; <label>:2                                       ; preds = %1
  %float_request_array_171 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_71
  %float_request_array_172 = load i8* %float_request_array_171, align 2
  %tmp_78 = icmp eq i8 %float_request_array_172, 0
  br i1 %tmp_78, label %3, label %._crit_edge18

; <label>:3                                       ; preds = %2
  store i16 %id_in_V_load, i16* @envlp_DEST_V, align 2
  store i8 0, i8* @envlp_SRC_V_1, align 2
  %float_request_array_173 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_71
  %float_request_array_174 = load i16* %float_request_array_173, align 2
  store i16 %float_request_array_174, i16* @envlp_MSG_SIZE_V_1, align 2
  store i2 1, i2* @state_1, align 1
  %tmp_85 = add nsw i32 %float_req_num_load, -1
  store i32 %tmp_85, i32* @float_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j1 = phi i32 [ %j_cast, %3 ], [ %j_2, %5 ]
  %tmp_89 = icmp slt i32 %j1, %tmp_85
  br i1 %tmp_89, label %5, label %.loopexit624.loopexit572

; <label>:5                                       ; preds = %4
  %tmp_95 = sext i32 %j1 to i64
  %j_2 = add nsw i32 %j1, 1
  %tmp_97 = sext i32 %j_2 to i64
  %float_request_array_175 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_97
  %float_request_array_176 = load i16* %float_request_array_175, align 2
  %float_request_array_177 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_95
  store i16 %float_request_array_176, i16* %float_request_array_177, align 2
  %float_request_array_178 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_97
  %float_request_array_179 = load i8* %float_request_array_178, align 2
  %float_request_array_180 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_95
  store i8 %float_request_array_179, i8* %float_request_array_180, align 2
  %float_request_array_181 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_97
  %float_request_array_182 = load i8* %float_request_array_181, align 1
  %float_request_array_183 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_95
  store i8 %float_request_array_182, i8* %float_request_array_183, align 1
  %float_request_array_184 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_97
  %float_request_array_185 = load i16* %float_request_array_184, align 2
  %float_request_array_186 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_95
  store i16 %float_request_array_185, i16* %float_request_array_186, align 2
  %float_request_array_187 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_97
  %float_request_array_188 = load i8* %float_request_array_187, align 2
  %float_request_array_189 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_95
  store i8 %float_request_array_188, i8* %float_request_array_189, align 2
  %float_request_array_190 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_97
  %float_request_array_191 = load i4* %float_request_array_190, align 1
  %float_request_array_192 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_95
  store i4 %float_request_array_191, i4* %float_request_array_192, align 1
  %float_request_array_193 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_97
  %float_request_array_194 = load i4* %float_request_array_193, align 2
  %float_request_array_195 = getelementptr [512 x i4]* @float_request_array_6, i64 0, i64 %tmp_95
  store i4 %float_request_array_194, i4* %float_request_array_195, align 2
  br label %4

._crit_edge18:                                    ; preds = %2, %1, %0
  br label %.preheader632

; <label>:6                                       ; preds = %.preheader632
  %tmp155 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 64, i32 71)
  %tmp_175 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp155, i32 72)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V = phi i1 [ %tmp_175, %6 ], [ %tmp_176, %8 ]
  br i1 %last_V, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_1 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %tmp_176 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_1, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %temp_diff_src_or_typ = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_or_typ_52 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 16, i32 23)
  %temp_diff_src_or_typ_53 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 24, i32 31)
  %temp_diff_src_or_typ_54 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp155, i32 32, i32 47)
  %temp_diff_src_or_typ_55 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp155, i32 48, i32 55)
  %temp_diff_src_or_typ_56 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 60, i32 63)
  store i16 %temp_diff_src_or_typ, i16* @envlp_DEST_V, align 2
  store i8 %temp_diff_src_or_typ_52, i8* @envlp_SRC_V_1, align 1
  store i16 %temp_diff_src_or_typ_54, i16* @envlp_MSG_SIZE_V_1, align 2
  %tmp_80 = icmp eq i8 %temp_diff_src_or_typ_53, 0
  %tmp_86 = icmp eq i16 %temp_diff_src_or_typ, %id_in_V_load
  %tmp_91 = icmp eq i8 %temp_diff_src_or_typ_52, 0
  %tmp1 = and i1 %tmp_86, %tmp_91
  %or_cond1 = and i1 %tmp1, %tmp_80
  br i1 %or_cond1, label %10, label %._crit_edge21

; <label>:10                                      ; preds = %9
  store i2 1, i2* @state_1, align 1
  br label %.loopexit624

._crit_edge21:                                    ; preds = %9
  %p_Result_6 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 93, i32 96)
  %tmp_92 = icmp eq i4 %p_Result_6, 0
  br i1 %tmp_92, label %11, label %._crit_edge24

; <label>:11                                      ; preds = %._crit_edge21
  %p_Result_9 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp155, i32 89, i32 92)
  %tmp_98 = icmp eq i4 %p_Result_9, 0
  br i1 %tmp_98, label %12, label %29

; <label>:12                                      ; preds = %11
  br i1 %tmp_80, label %.preheader629.preheader, label %20

.preheader629.preheader:                          ; preds = %12
  %int_req_num_load_1 = load i32* @int_req_num, align 4
  br label %.preheader629

.preheader629:                                    ; preds = %._crit_edge25, %.preheader629.preheader
  %i1 = phi i31 [ %i_18, %._crit_edge25 ], [ 0, %.preheader629.preheader ]
  %i1_cast = zext i31 %i1 to i32
  %tmp_125 = icmp slt i32 %i1_cast, %int_req_num_load_1
  %i_18 = add i31 %i1, 1
  br i1 %tmp_125, label %13, label %19

; <label>:13                                      ; preds = %.preheader629
  %tmp_130 = zext i31 %i1 to i64
  %int_request_array_SR_13 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_130
  %int_request_array_SR_14 = load i8* %int_request_array_SR_13, align 2
  %tmp_131 = icmp eq i8 %int_request_array_SR_14, %temp_diff_src_or_typ_52
  br i1 %tmp_131, label %14, label %._crit_edge25

; <label>:14                                      ; preds = %13
  %int_request_array_DE_13 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_130
  %int_request_array_DE_14 = load i16* %int_request_array_DE_13, align 2
  %tmp_137 = icmp eq i16 %int_request_array_DE_14, %temp_diff_src_or_typ
  br i1 %tmp_137, label %15, label %._crit_edge25

; <label>:15                                      ; preds = %14
  %int_request_array_PK_13 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_130
  %int_request_array_PK_14 = load i1* %int_request_array_PK_13, align 1
  br i1 %int_request_array_PK_14, label %._crit_edge25, label %16

; <label>:16                                      ; preds = %15
  %int_request_array_MS_13 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_130
  %int_request_array_MS_14 = load i16* %int_request_array_MS_13, align 2
  %tmp_153 = icmp eq i16 %int_request_array_MS_14, %temp_diff_src_or_typ_54
  br i1 %tmp_153, label %17, label %._crit_edge25

; <label>:17                                      ; preds = %16
  %int_request_array_TA_13 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_130
  %int_request_array_TA_14 = load i8* %int_request_array_TA_13, align 2
  %tmp_156 = icmp eq i8 %int_request_array_TA_14, %temp_diff_src_or_typ_55
  br i1 %tmp_156, label %18, label %._crit_edge25

; <label>:18                                      ; preds = %17
  %int_request_array_DA_14 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_130
  %int_request_array_DA_15 = load i4* %int_request_array_DA_14, align 1
  %tmp_159 = icmp eq i4 %int_request_array_DA_15, %temp_diff_src_or_typ_56
  br i1 %tmp_159, label %.loopexit624.loopexit571, label %._crit_edge25

._crit_edge25:                                    ; preds = %18, %17, %16, %15, %14, %13
  br label %.preheader629

; <label>:19                                      ; preds = %.preheader629
  %tmp_132 = sext i32 %int_req_num_load_1 to i64
  %int_request_array_DE_15 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_132
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_15, align 2
  %int_request_array_SR_15 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_132
  store i8 %temp_diff_src_or_typ_52, i8* %int_request_array_SR_15, align 2
  %int_request_array_PK_15 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_132
  store i1 false, i1* %int_request_array_PK_15, align 1
  %int_request_array_MS_15 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_132
  store i16 %temp_diff_src_or_typ_54, i16* %int_request_array_MS_15, align 2
  %int_request_array_TA_15 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_132
  store i8 %temp_diff_src_or_typ_55, i8* %int_request_array_TA_15, align 2
  %int_request_array_DA_16 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_132
  store i4 %temp_diff_src_or_typ_56, i4* %int_request_array_DA_16, align 1
  %tmp_133 = add nsw i32 %int_req_num_load_1, 1
  store i32 %tmp_133, i32* @int_req_num, align 4
  br label %28

; <label>:20                                      ; preds = %12
  %tmp_112 = icmp eq i8 %temp_diff_src_or_typ_53, 1
  br i1 %tmp_112, label %.preheader627.preheader, label %._crit_edge31

.preheader627.preheader:                          ; preds = %20
  %int_clr_num_load_1 = load i32* @int_clr_num, align 4
  br label %.preheader627

.preheader627:                                    ; preds = %._crit_edge32, %.preheader627.preheader
  %i2 = phi i31 [ %i_15, %._crit_edge32 ], [ 0, %.preheader627.preheader ]
  %i2_cast = zext i31 %i2 to i32
  %tmp_134 = icmp slt i32 %i2_cast, %int_clr_num_load_1
  %i_15 = add i31 %i2, 1
  br i1 %tmp_134, label %21, label %27

; <label>:21                                      ; preds = %.preheader627
  %tmp_s = zext i31 %i2 to i64
  %int_clr2snd_array_SR_13 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_s
  %int_clr2snd_array_SR_14 = load i8* %int_clr2snd_array_SR_13, align 2
  %tmp_138 = icmp eq i8 %int_clr2snd_array_SR_14, %temp_diff_src_or_typ_52
  br i1 %tmp_138, label %22, label %._crit_edge32

; <label>:22                                      ; preds = %21
  %int_clr2snd_array_DE_13 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_s
  %int_clr2snd_array_DE_14 = load i16* %int_clr2snd_array_DE_13, align 2
  %tmp_147 = icmp eq i16 %int_clr2snd_array_DE_14, %temp_diff_src_or_typ
  br i1 %tmp_147, label %23, label %._crit_edge32

; <label>:23                                      ; preds = %22
  %int_clr2snd_array_PK_13 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_s
  %int_clr2snd_array_PK_14 = load i1* %int_clr2snd_array_PK_13, align 1
  br i1 %int_clr2snd_array_PK_14, label %24, label %._crit_edge32

; <label>:24                                      ; preds = %23
  %int_clr2snd_array_MS_13 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_s
  %int_clr2snd_array_MS_14 = load i16* %int_clr2snd_array_MS_13, align 2
  %tmp_157 = icmp eq i16 %int_clr2snd_array_MS_14, %temp_diff_src_or_typ_54
  br i1 %tmp_157, label %25, label %._crit_edge32

; <label>:25                                      ; preds = %24
  %int_clr2snd_array_TA_13 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_s
  %int_clr2snd_array_TA_14 = load i8* %int_clr2snd_array_TA_13, align 2
  %tmp_160 = icmp eq i8 %int_clr2snd_array_TA_14, %temp_diff_src_or_typ_55
  br i1 %tmp_160, label %26, label %._crit_edge32

; <label>:26                                      ; preds = %25
  %int_clr2snd_array_DA_13 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_s
  %int_clr2snd_array_DA_14 = load i4* %int_clr2snd_array_DA_13, align 1
  %tmp_163 = icmp eq i4 %int_clr2snd_array_DA_14, %temp_diff_src_or_typ_56
  br i1 %tmp_163, label %.loopexit624.loopexit570, label %._crit_edge32

._crit_edge32:                                    ; preds = %26, %25, %24, %23, %22, %21
  br label %.preheader627

; <label>:27                                      ; preds = %.preheader627
  %tmp_139 = sext i32 %int_clr_num_load_1 to i64
  %int_clr2snd_array_DE_15 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_139
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_15, align 2
  %int_clr2snd_array_SR_15 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_139
  store i8 %temp_diff_src_or_typ_52, i8* %int_clr2snd_array_SR_15, align 2
  %int_clr2snd_array_PK_15 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_139
  store i1 true, i1* %int_clr2snd_array_PK_15, align 1
  %int_clr2snd_array_MS_15 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_139
  store i16 %temp_diff_src_or_typ_54, i16* %int_clr2snd_array_MS_15, align 2
  %int_clr2snd_array_TA_15 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_139
  store i8 %temp_diff_src_or_typ_55, i8* %int_clr2snd_array_TA_15, align 2
  %int_clr2snd_array_DA_15 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_139
  store i4 %temp_diff_src_or_typ_56, i4* %int_clr2snd_array_DA_15, align 1
  %tmp_140 = add nsw i32 %int_clr_num_load_1, 1
  store i32 %tmp_140, i32* @int_clr_num, align 4
  br label %._crit_edge31

._crit_edge31:                                    ; preds = %27, %20
  br label %28

; <label>:28                                      ; preds = %._crit_edge31, %19
  br label %.loopexit624

; <label>:29                                      ; preds = %11
  %tmp_102 = icmp eq i4 %p_Result_9, 1
  br i1 %tmp_102, label %30, label %._crit_edge24

; <label>:30                                      ; preds = %29
  br i1 %tmp_80, label %.preheader625.preheader, label %38

.preheader625.preheader:                          ; preds = %30
  br label %.preheader625

.preheader625:                                    ; preds = %.preheader625.preheader, %._crit_edge39
  %i4 = phi i31 [ %i_16, %._crit_edge39 ], [ 0, %.preheader625.preheader ]
  %i4_cast = zext i31 %i4 to i32
  %tmp_135 = icmp slt i32 %i4_cast, %float_req_num_load
  %i_16 = add i31 %i4, 1
  br i1 %tmp_135, label %31, label %37

; <label>:31                                      ; preds = %.preheader625
  %tmp_141 = zext i31 %i4 to i64
  %float_request_array_196 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_141
  %float_request_array_197 = load i8* %float_request_array_196, align 2
  %tmp_142 = icmp eq i8 %float_request_array_197, %temp_diff_src_or_typ_52
  br i1 %tmp_142, label %32, label %._crit_edge39

; <label>:32                                      ; preds = %31
  %float_request_array_198 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_141
  %float_request_array_199 = load i16* %float_request_array_198, align 2
  %tmp_148 = icmp eq i16 %float_request_array_199, %temp_diff_src_or_typ
  br i1 %tmp_148, label %33, label %._crit_edge39

; <label>:33                                      ; preds = %32
  %float_request_array_200 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_141
  %float_request_array_201 = load i8* %float_request_array_200, align 1
  %tmp_154 = icmp eq i8 %float_request_array_201, 0
  br i1 %tmp_154, label %34, label %._crit_edge39

; <label>:34                                      ; preds = %33
  %float_request_array_202 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_141
  %float_request_array_203 = load i16* %float_request_array_202, align 2
  %tmp_158 = icmp eq i16 %float_request_array_203, %temp_diff_src_or_typ_54
  br i1 %tmp_158, label %35, label %._crit_edge39

; <label>:35                                      ; preds = %34
  %float_request_array_204 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_141
  %float_request_array_205 = load i8* %float_request_array_204, align 2
  %tmp_161 = icmp eq i8 %float_request_array_205, %temp_diff_src_or_typ_55
  br i1 %tmp_161, label %36, label %._crit_edge39

; <label>:36                                      ; preds = %35
  %float_request_array_206 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_141
  %float_request_array_207 = load i4* %float_request_array_206, align 1
  %tmp_164 = icmp eq i4 %float_request_array_207, %temp_diff_src_or_typ_56
  br i1 %tmp_164, label %.loopexit624.loopexit569, label %._crit_edge39

._crit_edge39:                                    ; preds = %36, %35, %34, %33, %32, %31
  br label %.preheader625

; <label>:37                                      ; preds = %.preheader625
  %tmp_143 = sext i32 %float_req_num_load to i64
  %float_request_array_208 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_143
  store i16 %temp_diff_src_or_typ, i16* %float_request_array_208, align 2
  %float_request_array_209 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_143
  store i8 %temp_diff_src_or_typ_52, i8* %float_request_array_209, align 2
  %float_request_array_210 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_143
  store i8 0, i8* %float_request_array_210, align 1
  %float_request_array_211 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_143
  store i16 %temp_diff_src_or_typ_54, i16* %float_request_array_211, align 2
  %float_request_array_212 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_143
  store i8 %temp_diff_src_or_typ_55, i8* %float_request_array_212, align 2
  %float_request_array_213 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_143
  store i4 %temp_diff_src_or_typ_56, i4* %float_request_array_213, align 1
  %tmp_144 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_144, i32* @float_req_num, align 4
  br label %46

; <label>:38                                      ; preds = %30
  %tmp_126 = icmp eq i8 %temp_diff_src_or_typ_53, 1
  br i1 %tmp_126, label %.preheader623.preheader, label %._crit_edge45

.preheader623.preheader:                          ; preds = %38
  %float_clr_num_load_1 = load i32* @float_clr_num, align 4
  br label %.preheader623

.preheader623:                                    ; preds = %._crit_edge46, %.preheader623.preheader
  %i5 = phi i31 [ %i_17, %._crit_edge46 ], [ 0, %.preheader623.preheader ]
  %i5_cast = zext i31 %i5 to i32
  %tmp_145 = icmp slt i32 %i5_cast, %float_clr_num_load_1
  %i_17 = add i31 %i5, 1
  br i1 %tmp_145, label %39, label %45

; <label>:39                                      ; preds = %.preheader623
  %tmp_149 = zext i31 %i5 to i64
  %float_clr2snd_array_79 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_149
  %float_clr2snd_array_80 = load i8* %float_clr2snd_array_79, align 2
  %tmp_150 = icmp eq i8 %float_clr2snd_array_80, %temp_diff_src_or_typ_52
  br i1 %tmp_150, label %40, label %._crit_edge46

; <label>:40                                      ; preds = %39
  %float_clr2snd_array_81 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_149
  %float_clr2snd_array_82 = load i16* %float_clr2snd_array_81, align 2
  %tmp_155 = icmp eq i16 %float_clr2snd_array_82, %temp_diff_src_or_typ
  br i1 %tmp_155, label %41, label %._crit_edge46

; <label>:41                                      ; preds = %40
  %float_clr2snd_array_83 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_149
  %float_clr2snd_array_84 = load i1* %float_clr2snd_array_83, align 1
  br i1 %float_clr2snd_array_84, label %42, label %._crit_edge46

; <label>:42                                      ; preds = %41
  %float_clr2snd_array_85 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_149
  %float_clr2snd_array_86 = load i16* %float_clr2snd_array_85, align 2
  %tmp_162 = icmp eq i16 %float_clr2snd_array_86, %temp_diff_src_or_typ_54
  br i1 %tmp_162, label %43, label %._crit_edge46

; <label>:43                                      ; preds = %42
  %float_clr2snd_array_87 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_149
  %float_clr2snd_array_88 = load i8* %float_clr2snd_array_87, align 2
  %tmp_165 = icmp eq i8 %float_clr2snd_array_88, %temp_diff_src_or_typ_55
  br i1 %tmp_165, label %44, label %._crit_edge46

; <label>:44                                      ; preds = %43
  %float_clr2snd_array_89 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_149
  %float_clr2snd_array_90 = load i4* %float_clr2snd_array_89, align 1
  %tmp_166 = icmp eq i4 %float_clr2snd_array_90, %temp_diff_src_or_typ_56
  br i1 %tmp_166, label %.loopexit624.loopexit, label %._crit_edge46

._crit_edge46:                                    ; preds = %44, %43, %42, %41, %40, %39
  br label %.preheader623

; <label>:45                                      ; preds = %.preheader623
  %tmp_151 = sext i32 %float_clr_num_load_1 to i64
  %float_clr2snd_array_91 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_151
  store i16 %temp_diff_src_or_typ, i16* %float_clr2snd_array_91, align 2
  %float_clr2snd_array_92 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_151
  store i8 %temp_diff_src_or_typ_52, i8* %float_clr2snd_array_92, align 2
  %float_clr2snd_array_93 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_151
  store i1 true, i1* %float_clr2snd_array_93, align 1
  %float_clr2snd_array_94 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_151
  store i16 %temp_diff_src_or_typ_54, i16* %float_clr2snd_array_94, align 2
  %float_clr2snd_array_95 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_151
  store i8 %temp_diff_src_or_typ_55, i8* %float_clr2snd_array_95, align 2
  %float_clr2snd_array_96 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_151
  store i4 %temp_diff_src_or_typ_56, i4* %float_clr2snd_array_96, align 1
  %tmp_152 = add nsw i32 %float_clr_num_load_1, 1
  store i32 %tmp_152, i32* @float_clr_num, align 4
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %45, %38
  br label %46

; <label>:46                                      ; preds = %._crit_edge45, %37
  br label %.loopexit624

._crit_edge24:                                    ; preds = %29, %._crit_edge21
  br label %._crit_edge17

; <label>:47                                      ; preds = %codeRepl
  %clr2snd_DEST_V = zext i8 %pkt_out_dest_V to i16
  %envlp_DEST_V_load = load i16* @envlp_DEST_V, align 2
  %clr2snd_SRC_V = trunc i16 %envlp_DEST_V_load to i8
  %clr2snd_MSG_SIZE_V = load i16* @envlp_MSG_SIZE_V_1, align 2
  %id_in_V_load_5 = load i16* @id_in_V, align 2
  %pkt_out_id_V = trunc i16 %id_in_V_load_5 to i8
  %tmp_2127 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i16.i8.i8.i16(i48 511, i8 %pkt_out_id_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V, i16 %clr2snd_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_2127)
  store i2 -2, i2* @state_1, align 1
  br label %.loopexit624

.preheader622:                                    ; preds = %.preheader622.preheader, %66
  %i7 = phi i32 [ %i_9, %66 ], [ 0, %.preheader622.preheader ]
  %tmp_74 = icmp slt i32 %i7, 7
  br i1 %tmp_74, label %48, label %67

; <label>:48                                      ; preds = %.preheader622
  %tmp = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str9)
  call void (...)* @_ssdm_op_SpecPipeline(i32 -1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8) nounwind
  %tmp_7 = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* @stream_in_V, i32 1)
  br i1 %tmp_7, label %49, label %65

; <label>:49                                      ; preds = %48
  %tmp_3 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 64, i32 71)
  %recv_data_keep_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 81, i32 88)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 93, i32 96)
  %tmp_83 = icmp eq i4 %p_Result_s, 1
  br i1 %tmp_83, label %50, label %52

; <label>:50                                      ; preds = %49
  %tmp_87 = icmp eq i8 %recv_data_keep_V, -1
  br i1 %tmp_87, label %.preheader621.0, label %51

; <label>:51                                      ; preds = %50
  %tmp_93 = icmp eq i8 %recv_data_keep_V, 15
  br i1 %tmp_93, label %.preheader.0, label %.loopexit

.preheader.0:                                     ; preds = %51
  %tmp_178 = trunc i129 %tmp_3 to i32
  %tmp_116 = bitcast i32 %tmp_178 to float
  %tmp_118 = sext i32 %i7 to i64
  %buf_addr_4 = getelementptr [7 x float]* %buf_r, i64 0, i64 %tmp_118
  store float %tmp_116, float* %buf_addr_4, align 4
  %i = add nsw i32 -1, %i7
  br label %.loopexit

; <label>:52                                      ; preds = %49
  %tmp_88 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_88, label %53, label %._crit_edge52

; <label>:53                                      ; preds = %52
  %p_Result_8 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 89, i32 92)
  %tmp_94 = icmp eq i4 %p_Result_8, 0
  br i1 %tmp_94, label %54, label %59

; <label>:54                                      ; preds = %53
  %temp_diff_src_or_typ_57 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_58 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_59 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_60 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_61 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_62 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_99 = icmp eq i8 %temp_diff_src_or_typ_59, 0
  br i1 %tmp_99, label %55, label %56

; <label>:55                                      ; preds = %54
  %int_req_num_load = load i32* @int_req_num, align 4
  %tmp_108 = sext i32 %int_req_num_load to i64
  %int_request_array_DE_16 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_108
  store i16 %temp_diff_src_or_typ_57, i16* %int_request_array_DE_16, align 2
  %int_request_array_SR_16 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_108
  store i8 %temp_diff_src_or_typ_58, i8* %int_request_array_SR_16, align 2
  %int_request_array_PK_16 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_108
  store i1 false, i1* %int_request_array_PK_16, align 1
  %int_request_array_MS_16 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_108
  store i16 %temp_diff_src_or_typ_60, i16* %int_request_array_MS_16, align 2
  %int_request_array_TA_16 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_108
  store i8 %temp_diff_src_or_typ_61, i8* %int_request_array_TA_16, align 2
  %int_request_array_DA_17 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_108
  store i4 %temp_diff_src_or_typ_62, i4* %int_request_array_DA_17, align 1
  %tmp_109 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_109, i32* @int_req_num, align 4
  br label %58

; <label>:56                                      ; preds = %54
  %tmp_110 = icmp eq i8 %temp_diff_src_or_typ_59, 1
  br i1 %tmp_110, label %57, label %._crit_edge53

; <label>:57                                      ; preds = %56
  %int_clr_num_load = load i32* @int_clr_num, align 4
  %tmp_120 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_DE_16 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_120
  store i16 %temp_diff_src_or_typ_57, i16* %int_clr2snd_array_DE_16, align 2
  %int_clr2snd_array_SR_16 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_120
  store i8 %temp_diff_src_or_typ_58, i8* %int_clr2snd_array_SR_16, align 2
  %int_clr2snd_array_PK_16 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_120
  store i1 true, i1* %int_clr2snd_array_PK_16, align 1
  %int_clr2snd_array_MS_16 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_120
  store i16 %temp_diff_src_or_typ_60, i16* %int_clr2snd_array_MS_16, align 2
  %int_clr2snd_array_TA_16 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_120
  store i8 %temp_diff_src_or_typ_61, i8* %int_clr2snd_array_TA_16, align 2
  %int_clr2snd_array_DA_16 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_120
  store i4 %temp_diff_src_or_typ_62, i4* %int_clr2snd_array_DA_16, align 1
  %tmp_121 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_121, i32* @int_clr_num, align 4
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %57, %56
  br label %58

; <label>:58                                      ; preds = %._crit_edge53, %55
  %i_7 = add nsw i32 %i7, -2
  br label %66

; <label>:59                                      ; preds = %53
  %tmp_100 = icmp eq i4 %p_Result_8, 1
  br i1 %tmp_100, label %60, label %._crit_edge52

; <label>:60                                      ; preds = %59
  %temp_diff_src_or_typ_63 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_64 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 16, i32 23)
  %temp_diff_src_or_typ_65 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 24, i32 31)
  %temp_diff_src_or_typ_66 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3, i32 32, i32 47)
  %temp_diff_src_or_typ_67 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3, i32 48, i32 55)
  %temp_diff_src_or_typ_68 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3, i32 60, i32 63)
  %tmp_111 = icmp eq i8 %temp_diff_src_or_typ_65, 0
  br i1 %tmp_111, label %61, label %62

; <label>:61                                      ; preds = %60
  %float_req_num_load_2 = load i32* @float_req_num, align 4
  %tmp_122 = sext i32 %float_req_num_load_2 to i64
  %float_request_array_214 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_122
  store i16 %temp_diff_src_or_typ_63, i16* %float_request_array_214, align 2
  %float_request_array_215 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_122
  store i8 %temp_diff_src_or_typ_64, i8* %float_request_array_215, align 2
  %float_request_array_216 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_122
  store i8 0, i8* %float_request_array_216, align 1
  %float_request_array_217 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_122
  store i16 %temp_diff_src_or_typ_66, i16* %float_request_array_217, align 2
  %float_request_array_218 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_122
  store i8 %temp_diff_src_or_typ_67, i8* %float_request_array_218, align 2
  %float_request_array_219 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_122
  store i4 %temp_diff_src_or_typ_68, i4* %float_request_array_219, align 1
  %tmp_123 = add nsw i32 %float_req_num_load_2, 1
  store i32 %tmp_123, i32* @float_req_num, align 4
  br label %64

; <label>:62                                      ; preds = %60
  %tmp_124 = icmp eq i8 %temp_diff_src_or_typ_65, 1
  br i1 %tmp_124, label %63, label %._crit_edge55

; <label>:63                                      ; preds = %62
  %float_clr_num_load = load i32* @float_clr_num, align 4
  %tmp_128 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_97 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_128
  store i16 %temp_diff_src_or_typ_63, i16* %float_clr2snd_array_97, align 2
  %float_clr2snd_array_98 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_128
  store i8 %temp_diff_src_or_typ_64, i8* %float_clr2snd_array_98, align 2
  %float_clr2snd_array_99 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_128
  store i1 true, i1* %float_clr2snd_array_99, align 1
  %float_clr2snd_array_100 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_128
  store i16 %temp_diff_src_or_typ_66, i16* %float_clr2snd_array_100, align 2
  %float_clr2snd_array_101 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_128
  store i8 %temp_diff_src_or_typ_67, i8* %float_clr2snd_array_101, align 2
  %float_clr2snd_array_102 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_128
  store i4 %temp_diff_src_or_typ_68, i4* %float_clr2snd_array_102, align 1
  %tmp_129 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_129, i32* @float_clr_num, align 4
  br label %._crit_edge55

._crit_edge55:                                    ; preds = %63, %62
  br label %64

; <label>:64                                      ; preds = %._crit_edge55, %61
  %i_8 = add nsw i32 %i7, -2
  br label %66

._crit_edge52:                                    ; preds = %59, %52
  br label %.loopexit

; <label>:65                                      ; preds = %48
  %i_6 = add nsw i32 %i7, -2
  br label %.loopexit

.preheader621.0:                                  ; preds = %50
  %tmp_177 = trunc i129 %tmp_3 to i32
  %tmp_104 = bitcast i32 %tmp_177 to float
  %tmp_106 = sext i32 %i7 to i64
  %buf_addr = getelementptr [7 x float]* %buf_r, i64 0, i64 %tmp_106
  store float %tmp_104, float* %buf_addr, align 4
  %p_Result_72_1 = call i32 @_ssdm_op_PartSelect.i32.i129.i32.i32(i129 %tmp_3, i32 32, i32 63)
  %tmp_104_1 = bitcast i32 %p_Result_72_1 to float
  %tmp_105_1 = add nsw i32 1, %i7
  %tmp_106_1 = sext i32 %tmp_105_1 to i64
  %buf_addr_3 = getelementptr [7 x float]* %buf_r, i64 0, i64 %tmp_106_1
  store float %tmp_104_1, float* %buf_addr_3, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader621.0, %65, %._crit_edge52, %.preheader.0, %51
  %i7_4 = phi i32 [ %i_6, %65 ], [ %i7, %._crit_edge52 ], [ %i, %.preheader.0 ], [ %i7, %51 ], [ %i7, %.preheader621.0 ]
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str9, i32 %tmp)
  br label %66

; <label>:66                                      ; preds = %.loopexit, %64, %58
  %i7_5 = phi i32 [ %i7_4, %.loopexit ], [ %i_7, %58 ], [ %i_8, %64 ]
  %i_9 = add nsw i32 %i7_5, 2
  br label %.preheader622

; <label>:67                                      ; preds = %.preheader622
  store i2 -1, i2* @state_1, align 1
  br label %.loopexit624

; <label>:68                                      ; preds = %codeRepl
  store i2 0, i2* @state_1, align 1
  %error_DEST_V = zext i8 %pkt_out_dest_V to i16
  %id_in_V_load_6 = load i16* @id_in_V, align 2
  %error_SRC_V = trunc i16 %id_in_V_load_6 to i8
  %tmp_4 = call i129 @_ssdm_op_BitConcatenate.i129.i48.i8.i1.i8.i4.i4.i8.i24.i8.i16(i48 511, i8 %error_SRC_V, i1 true, i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i24 5, i8 %error_SRC_V, i16 %error_DEST_V)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_4)
  br label %.loopexit624

._crit_edge17:                                    ; preds = %._crit_edge24, %codeRepl
  br label %.loopexit624

.loopexit624.loopexit:                            ; preds = %44
  br label %.loopexit624

.loopexit624.loopexit569:                         ; preds = %36
  br label %.loopexit624

.loopexit624.loopexit570:                         ; preds = %26
  br label %.loopexit624

.loopexit624.loopexit571:                         ; preds = %18
  br label %.loopexit624

.loopexit624.loopexit572:                         ; preds = %4
  br label %.loopexit624

.loopexit624:                                     ; preds = %.loopexit624.loopexit572, %.loopexit624.loopexit571, %.loopexit624.loopexit570, %.loopexit624.loopexit569, %.loopexit624.loopexit, %._crit_edge17, %68, %67, %47, %46, %28, %10
  %p_s = phi i1 [ false, %._crit_edge17 ], [ true, %68 ], [ false, %67 ], [ false, %47 ], [ false, %10 ], [ false, %28 ], [ false, %46 ], [ false, %.loopexit624.loopexit ], [ false, %.loopexit624.loopexit569 ], [ false, %.loopexit624.loopexit570 ], [ false, %.loopexit624.loopexit571 ], [ false, %.loopexit624.loopexit572 ]
  ret i1 %p_s
}

define internal fastcc i1 @MPI_Recv([1 x i32]* nocapture %buf_r, i17 %source) {
codeRepl:
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_out_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i129* @stream_in_V, [8 x i8]* @ap_fifo_str, i32 0, i32 0, [1 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 2, i32 2, i32 16, i32 16, [1 x i8]* @p_str, [1 x i8]* @p_str)
  %source_read = call i17 @_ssdm_op_Read.ap_auto.i17(i17 %source)
  %state_load = load i2* @state, align 1
  %envlp_DEST_V_1_load = load i16* @envlp_DEST_V_1, align 2
  %pkt_out_dest_V = load i8* @envlp_SRC_V, align 1
  switch i2 %state_load, label %._crit_edge36 [
    i2 0, label %.preheader991.preheader
    i2 1, label %31
    i2 -2, label %.preheader293.preheader
  ]

.preheader293.preheader:                          ; preds = %codeRepl
  %tmp_4 = alloca i129
  %last_V = alloca i1
  %op2_assign = alloca i32
  %p_6 = alloca i1
  %p_7 = alloca i1
  %error_DEST_V = zext i8 %pkt_out_dest_V to i16
  %error_SRC_V = trunc i16 %envlp_DEST_V_1_load to i8
  store i1 false, i1* %p_7
  store i1 false, i1* %p_6
  store i32 0, i32* %op2_assign
  br label %.preheader293

.preheader991.preheader:                          ; preds = %codeRepl
  %int_req_num_load = load i32* @int_req_num, align 4
  %id_in_V_load = load i16* @id_in_V, align 2
  br label %.preheader991

.preheader991:                                    ; preds = %._crit_edge37, %.preheader991.preheader
  %j = phi i31 [ %i_19, %._crit_edge37 ], [ 0, %.preheader991.preheader ]
  %j_cast = zext i31 %j to i32
  %tmp_s = icmp slt i32 %j_cast, %int_req_num_load
  %i_19 = add i31 %j, 1
  br i1 %tmp_s, label %0, label %6

; <label>:0                                       ; preds = %.preheader991
  %tmp_167 = zext i31 %j to i64
  %int_request_array_PK_17 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_167
  %int_request_array_PK_18 = load i1* %int_request_array_PK_17, align 1
  br i1 %int_request_array_PK_18, label %._crit_edge37, label %1

; <label>:1                                       ; preds = %0
  %int_request_array_DE_17 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_167
  %int_request_array_DE_18 = load i16* %int_request_array_DE_17, align 2
  %tmp_168 = icmp eq i16 %int_request_array_DE_18, %id_in_V_load
  br i1 %tmp_168, label %2, label %._crit_edge37

; <label>:2                                       ; preds = %1
  %int_request_array_SR_17 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_167
  %int_request_array_SR_18 = load i8* %int_request_array_SR_17, align 2
  %tmp_177_cast = zext i8 %int_request_array_SR_18 to i17
  %tmp_172 = icmp eq i17 %tmp_177_cast, %source_read
  br i1 %tmp_172, label %3, label %._crit_edge37

; <label>:3                                       ; preds = %2
  store i16 %id_in_V_load, i16* @envlp_DEST_V_1, align 2
  store i8 %int_request_array_SR_18, i8* @envlp_SRC_V, align 2
  %int_request_array_MS_17 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_167
  %int_request_array_MS_18 = load i16* %int_request_array_MS_17, align 2
  store i16 %int_request_array_MS_18, i16* @envlp_MSG_SIZE_V, align 2
  store i2 1, i2* @state, align 1
  %tmp_177 = add nsw i32 %int_req_num_load, -1
  store i32 %tmp_177, i32* @int_req_num, align 4
  br label %4

; <label>:4                                       ; preds = %5, %3
  %j5 = phi i32 [ %j_cast, %3 ], [ %j_3, %5 ]
  %tmp_179 = icmp slt i32 %j5, %tmp_177
  br i1 %tmp_179, label %5, label %.loopexit.loopexit1280

; <label>:5                                       ; preds = %4
  %tmp_181 = sext i32 %j5 to i64
  %j_3 = add nsw i32 %j5, 1
  %tmp_182 = sext i32 %j_3 to i64
  %int_request_array_DE_19 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_182
  %int_request_array_DE_20 = load i16* %int_request_array_DE_19, align 2
  %int_request_array_DE_21 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_181
  store i16 %int_request_array_DE_20, i16* %int_request_array_DE_21, align 2
  %int_request_array_SR_19 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_182
  %int_request_array_SR_20 = load i8* %int_request_array_SR_19, align 2
  %int_request_array_SR_21 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_181
  store i8 %int_request_array_SR_20, i8* %int_request_array_SR_21, align 2
  %int_request_array_PK_19 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_182
  %int_request_array_PK_20 = load i1* %int_request_array_PK_19, align 1
  %int_request_array_PK_21 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_181
  store i1 %int_request_array_PK_20, i1* %int_request_array_PK_21, align 1
  %int_request_array_MS_19 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_182
  %int_request_array_MS_20 = load i16* %int_request_array_MS_19, align 2
  %int_request_array_MS_21 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_181
  store i16 %int_request_array_MS_20, i16* %int_request_array_MS_21, align 2
  %int_request_array_TA_17 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_182
  %int_request_array_TA_18 = load i8* %int_request_array_TA_17, align 2
  %int_request_array_TA_19 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_181
  store i8 %int_request_array_TA_18, i8* %int_request_array_TA_19, align 2
  %int_request_array_DA_18 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_182
  %int_request_array_DA_19 = load i4* %int_request_array_DA_18, align 1
  %int_request_array_DA_20 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_181
  store i4 %int_request_array_DA_19, i4* %int_request_array_DA_20, align 1
  %int_request_array_DA_21 = getelementptr [512 x i4]* @int_request_array_DA_1, i64 0, i64 %tmp_182
  %int_request_array_DA_22 = load i4* %int_request_array_DA_21, align 2
  %int_request_array_DA_23 = getelementptr [512 x i4]* @int_request_array_DA_1, i64 0, i64 %tmp_181
  store i4 %int_request_array_DA_22, i4* %int_request_array_DA_23, align 2
  br label %4

._crit_edge37:                                    ; preds = %2, %1, %0
  br label %.preheader991

; <label>:6                                       ; preds = %.preheader991
  %tmp212 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_pkt_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 64, i32 71)
  %tmp_259 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp212, i32 72)
  %recv_pkt_id_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 73, i32 80)
  br label %7

; <label>:7                                       ; preds = %8, %6
  %last_V_1 = phi i1 [ %tmp_259, %6 ], [ %tmp_262, %8 ]
  br i1 %last_V_1, label %9, label %8

; <label>:8                                       ; preds = %7
  %tmp_1 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %tmp_262 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_1, i32 72)
  br label %7

; <label>:9                                       ; preds = %7
  %tmp_179_cast = zext i8 %recv_pkt_id_V to i17
  %tmp_173 = icmp eq i17 %tmp_179_cast, %source_read
  br i1 %tmp_173, label %._crit_edge40, label %10

; <label>:10                                      ; preds = %9
  %p_Result_7 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 93, i32 96)
  %tmp_178 = icmp eq i4 %p_Result_7, 0
  br i1 %tmp_178, label %11, label %._crit_edge40

; <label>:11                                      ; preds = %10
  %p_Result_8 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 89, i32 92)
  %tmp_180 = icmp eq i4 %p_Result_8, 0
  br i1 %tmp_180, label %12, label %17

; <label>:12                                      ; preds = %11
  %temp_diff_src_DEST_V = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_SRC_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 16, i32 23)
  %temp_diff_src_PKT_TY = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 24, i32 31)
  %temp_diff_src_MSG_SI = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp212, i32 32, i32 47)
  %temp_diff_src_TAG_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 48, i32 55)
  %temp_diff_src_DATA_T = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 60, i32 63)
  %tmp_183 = icmp eq i8 %temp_diff_src_PKT_TY, 0
  br i1 %tmp_183, label %13, label %14

; <label>:13                                      ; preds = %12
  %tmp_185 = sext i32 %int_req_num_load to i64
  %int_request_array_DE_22 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_185
  store i16 %temp_diff_src_DEST_V, i16* %int_request_array_DE_22, align 2
  %int_request_array_SR_22 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_185
  store i8 %temp_diff_src_SRC_V, i8* %int_request_array_SR_22, align 2
  %int_request_array_PK_22 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_185
  store i1 false, i1* %int_request_array_PK_22, align 1
  %int_request_array_MS_22 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_185
  store i16 %temp_diff_src_MSG_SI, i16* %int_request_array_MS_22, align 2
  %int_request_array_TA_20 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_185
  store i8 %temp_diff_src_TAG_V, i8* %int_request_array_TA_20, align 2
  %int_request_array_DA_24 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_185
  store i4 %temp_diff_src_DATA_T, i4* %int_request_array_DA_24, align 1
  %tmp_186 = add nsw i32 %int_req_num_load, 1
  store i32 %tmp_186, i32* @int_req_num, align 4
  br label %16

; <label>:14                                      ; preds = %12
  %tmp_187 = icmp eq i8 %temp_diff_src_PKT_TY, 1
  br i1 %tmp_187, label %15, label %._crit_edge42

; <label>:15                                      ; preds = %14
  %int_clr_num_load = load i32* @int_clr_num, align 4
  %tmp_190 = sext i32 %int_clr_num_load to i64
  %int_clr2snd_array_DE_17 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_190
  store i16 %temp_diff_src_DEST_V, i16* %int_clr2snd_array_DE_17, align 2
  %int_clr2snd_array_SR_17 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_190
  store i8 %temp_diff_src_SRC_V, i8* %int_clr2snd_array_SR_17, align 2
  %int_clr2snd_array_PK_17 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_190
  store i1 true, i1* %int_clr2snd_array_PK_17, align 1
  %int_clr2snd_array_MS_17 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_190
  store i16 %temp_diff_src_MSG_SI, i16* %int_clr2snd_array_MS_17, align 2
  %int_clr2snd_array_TA_17 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_190
  store i8 %temp_diff_src_TAG_V, i8* %int_clr2snd_array_TA_17, align 2
  %int_clr2snd_array_DA_17 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_190
  store i4 %temp_diff_src_DATA_T, i4* %int_clr2snd_array_DA_17, align 1
  %tmp_191 = add nsw i32 %int_clr_num_load, 1
  store i32 %tmp_191, i32* @int_clr_num, align 4
  br label %._crit_edge42

._crit_edge42:                                    ; preds = %15, %14
  br label %16

; <label>:16                                      ; preds = %._crit_edge42, %13
  br label %.loopexit

; <label>:17                                      ; preds = %11
  %tmp_184 = icmp eq i4 %p_Result_8, 1
  br i1 %tmp_184, label %18, label %._crit_edge40

; <label>:18                                      ; preds = %17
  %temp_diff_src_DEST_V_1 = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_src_SRC_V_1 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 16, i32 23)
  %temp_diff_src_PKT_TY_1 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 24, i32 31)
  %temp_diff_src_MSG_SI_1 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp212, i32 32, i32 47)
  %temp_diff_src_TAG_V_1 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 48, i32 55)
  %temp_diff_src_DATA_T_1 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 60, i32 63)
  %tmp_188 = icmp eq i8 %temp_diff_src_PKT_TY_1, 0
  br i1 %tmp_188, label %19, label %20

; <label>:19                                      ; preds = %18
  %float_req_num_load = load i32* @float_req_num, align 4
  %tmp_192 = sext i32 %float_req_num_load to i64
  %float_request_array_220 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_192
  store i16 %temp_diff_src_DEST_V_1, i16* %float_request_array_220, align 2
  %float_request_array_221 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_192
  store i8 %temp_diff_src_SRC_V_1, i8* %float_request_array_221, align 2
  %float_request_array_222 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_192
  store i8 0, i8* %float_request_array_222, align 1
  %float_request_array_223 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_192
  store i16 %temp_diff_src_MSG_SI_1, i16* %float_request_array_223, align 2
  %float_request_array_224 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_192
  store i8 %temp_diff_src_TAG_V_1, i8* %float_request_array_224, align 2
  %float_request_array_225 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_192
  store i4 %temp_diff_src_DATA_T_1, i4* %float_request_array_225, align 1
  %tmp_193 = add nsw i32 %float_req_num_load, 1
  store i32 %tmp_193, i32* @float_req_num, align 4
  br label %22

; <label>:20                                      ; preds = %18
  %tmp_194 = icmp eq i8 %temp_diff_src_PKT_TY_1, 1
  br i1 %tmp_194, label %21, label %._crit_edge44

; <label>:21                                      ; preds = %20
  %float_clr_num_load = load i32* @float_clr_num, align 4
  %tmp_199 = sext i32 %float_clr_num_load to i64
  %float_clr2snd_array_103 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_199
  store i16 %temp_diff_src_DEST_V_1, i16* %float_clr2snd_array_103, align 2
  %float_clr2snd_array_104 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_199
  store i8 %temp_diff_src_SRC_V_1, i8* %float_clr2snd_array_104, align 2
  %float_clr2snd_array_105 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_199
  store i1 true, i1* %float_clr2snd_array_105, align 1
  %float_clr2snd_array_106 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_199
  store i16 %temp_diff_src_MSG_SI_1, i16* %float_clr2snd_array_106, align 2
  %float_clr2snd_array_107 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_199
  store i8 %temp_diff_src_TAG_V_1, i8* %float_clr2snd_array_107, align 2
  %float_clr2snd_array_108 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_199
  store i4 %temp_diff_src_DATA_T_1, i4* %float_clr2snd_array_108, align 1
  %tmp_200 = add nsw i32 %float_clr_num_load, 1
  store i32 %tmp_200, i32* @float_clr_num, align 4
  br label %._crit_edge44

._crit_edge44:                                    ; preds = %21, %20
  br label %22

; <label>:22                                      ; preds = %._crit_edge44, %19
  br label %.loopexit

._crit_edge40:                                    ; preds = %17, %10, %9
  %p_Result_9 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 89, i32 92)
  %tmp_189 = icmp eq i4 %p_Result_9, 1
  br i1 %tmp_189, label %23, label %._crit_edge45

; <label>:23                                      ; preds = %._crit_edge40
  %p_Result_10 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 93, i32 96)
  %tmp_195 = icmp eq i4 %p_Result_10, 0
  br i1 %tmp_195, label %24, label %._crit_edge45

; <label>:24                                      ; preds = %23
  %temp_diff_type_DEST_s = zext i8 %recv_pkt_dest_V to i16
  %temp_diff_type_SRC_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 16, i32 23)
  %temp_diff_type_PKT_T = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 24, i32 31)
  %temp_diff_type_MSG_S = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp212, i32 32, i32 47)
  %temp_diff_type_TAG_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 48, i32 55)
  %temp_diff_type_DATA_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp212, i32 60, i32 63)
  %tmp_201 = icmp eq i8 %temp_diff_type_PKT_T, 0
  br i1 %tmp_201, label %25, label %26

; <label>:25                                      ; preds = %24
  %float_req_num_load_3 = load i32* @float_req_num, align 4
  %tmp_203 = sext i32 %float_req_num_load_3 to i64
  %float_request_array_226 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_203
  store i16 %temp_diff_type_DEST_s, i16* %float_request_array_226, align 2
  %float_request_array_227 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_203
  store i8 %temp_diff_type_SRC_V, i8* %float_request_array_227, align 2
  %float_request_array_228 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_203
  store i8 0, i8* %float_request_array_228, align 1
  %float_request_array_229 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_203
  store i16 %temp_diff_type_MSG_S, i16* %float_request_array_229, align 2
  %float_request_array_230 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_203
  store i8 %temp_diff_type_TAG_V, i8* %float_request_array_230, align 2
  %float_request_array_231 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_203
  store i4 %temp_diff_type_DATA_s, i4* %float_request_array_231, align 1
  %tmp_204 = add nsw i32 %float_req_num_load_3, 1
  store i32 %tmp_204, i32* @float_req_num, align 4
  br label %28

; <label>:26                                      ; preds = %24
  %tmp_205 = icmp eq i8 %temp_diff_type_PKT_T, 1
  br i1 %tmp_205, label %27, label %._crit_edge47

; <label>:27                                      ; preds = %26
  %float_clr_num_load_2 = load i32* @float_clr_num, align 4
  %tmp_207 = sext i32 %float_clr_num_load_2 to i64
  %float_clr2snd_array_109 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_207
  store i16 %temp_diff_type_DEST_s, i16* %float_clr2snd_array_109, align 2
  %float_clr2snd_array_110 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_207
  store i8 %temp_diff_type_SRC_V, i8* %float_clr2snd_array_110, align 2
  %float_clr2snd_array_111 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_207
  store i1 true, i1* %float_clr2snd_array_111, align 1
  %float_clr2snd_array_112 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_207
  store i16 %temp_diff_type_MSG_S, i16* %float_clr2snd_array_112, align 2
  %float_clr2snd_array_113 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_207
  store i8 %temp_diff_type_TAG_V, i8* %float_clr2snd_array_113, align 2
  %float_clr2snd_array_114 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_207
  store i4 %temp_diff_type_DATA_s, i4* %float_clr2snd_array_114, align 1
  %tmp_208 = add nsw i32 %float_clr_num_load_2, 1
  store i32 %tmp_208, i32* @float_clr_num, align 4
  br label %._crit_edge47

._crit_edge47:                                    ; preds = %27, %26
  br label %28

; <label>:28                                      ; preds = %._crit_edge47, %25
  br label %.loopexit

._crit_edge45:                                    ; preds = %23, %._crit_edge40
  %envlp_DEST_V_write_a = zext i8 %recv_pkt_dest_V to i16
  %envlp_SRC_V_write_as = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 16, i32 23)
  %envlp_PKT_TYPE_V_wri = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp212, i32 24, i32 31)
  %envlp_MSG_SIZE_V_wri = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp212, i32 32, i32 47)
  store i16 %envlp_DEST_V_write_a, i16* @envlp_DEST_V_1, align 2
  store i8 %envlp_SRC_V_write_as, i8* @envlp_SRC_V, align 1
  store i16 %envlp_MSG_SIZE_V_wri, i16* @envlp_MSG_SIZE_V, align 2
  %tmp_196 = icmp eq i8 %envlp_PKT_TYPE_V_wri, 0
  %tmp_197 = icmp eq i16 %envlp_DEST_V_write_a, %id_in_V_load
  %or_cond = and i1 %tmp_196, %tmp_197
  br i1 %or_cond, label %29, label %._crit_edge48

; <label>:29                                      ; preds = %._crit_edge45
  %tmp_208_cast = zext i8 %envlp_SRC_V_write_as to i17
  %tmp_202 = icmp eq i17 %tmp_208_cast, %source_read
  br i1 %tmp_202, label %30, label %._crit_edge48

; <label>:30                                      ; preds = %29
  store i2 1, i2* @state, align 1
  br label %._crit_edge48

._crit_edge48:                                    ; preds = %30, %29, %._crit_edge45
  br label %._crit_edge36

; <label>:31                                      ; preds = %codeRepl
  %clr2snd_DEST_V = zext i8 %pkt_out_dest_V to i16
  %clr2snd_SRC_V = trunc i16 %envlp_DEST_V_1_load to i8
  %clr2snd_MSG_SIZE_V = load i16* @envlp_MSG_SIZE_V, align 2
  %p_Result_3 = call i40 @llvm.part.set.i40.i4(i40 undef, i4 0, i32 0, i32 3)
  %p_Result_4 = call i40 @llvm.part.set.i40.i4(i40 %p_Result_3, i4 0, i32 4, i32 7)
  %id_in_V_load_7 = load i16* @id_in_V, align 2
  %pkt_out_id_V = trunc i16 %id_in_V_load_7 to i8
  %tmp_210 = call i72 @_ssdm_op_BitConcatenate.i72.i8.i4.i4.i8.i16.i8.i8.i16(i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %clr2snd_MSG_SIZE_V, i8 1, i8 %clr2snd_SRC_V, i16 %clr2snd_DEST_V)
  %tmp_2 = call i129 @_ssdm_op_PartSet.i129.i129.i72.i32.i32(i129 undef, i72 %tmp_210, i32 0, i32 71)
  %tmp_2_1 = call i129 @_ssdm_op_BitSet.i129.i129.i32.i1(i129 %tmp_2, i32 72, i1 true)
  %tmp_2_2 = call i129 @llvm.part.set.i129.i8(i129 %tmp_2_1, i8 %pkt_out_id_V, i32 73, i32 80)
  %tmp_2_4 = call i129 @llvm.part.set.i129.i40(i129 %tmp_2_2, i40 %p_Result_4, i32 89, i32 128)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_2_4)
  store i2 -2, i2* @state, align 1
  store i64 0, i64* @time_V, align 8
  br label %.loopexit

.preheader293:                                    ; preds = %.loopexit977, %.preheader293.preheader
  %i4 = phi i32 [ 0, %.preheader293.preheader ], [ %i_26, %.loopexit977 ]
  %last_V_load = load i1* %last_V
  %tmp_258 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %i4, i32 2, i32 31)
  %icmp = icmp slt i30 %tmp_258, 1
  br i1 %icmp, label %32, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader293
  br label %.preheader

; <label>:32                                      ; preds = %.preheader293
  %tmp = call i1 @_ssdm_op_NbReadReq.ap_fifo.i129P(i129* @stream_in_V, i32 1)
  br i1 %tmp, label %33, label %76

; <label>:33                                      ; preds = %32
  %op2_assign_load_1 = load i32* %op2_assign
  %p_7_load_1 = load i1* %p_7
  %tmp_3243 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %recv_data_data_V = trunc i129 %tmp_3243 to i64
  %recv_data_dest_V = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 64, i32 71)
  %recv_data_last_V = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_3243, i32 72)
  %p_Result_s = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3243, i32 93, i32 96)
  %tmp_169 = icmp eq i4 %p_Result_s, 1
  %p_s = or i1 %tmp_169, %p_7_load_1
  %p_Result_5 = call i32 @_ssdm_op_PartSelect.i32.i129.i32.i32(i129 %tmp_3243, i32 97, i32 128)
  %p_Result_28_cast = zext i32 %p_Result_5 to i33
  %tmp_174_cast = sext i32 %op2_assign_load_1 to i33
  %tmp_170 = icmp ne i33 %p_Result_28_cast, %tmp_174_cast
  %demorgan = and i1 %tmp_169, %tmp_170
  br i1 %demorgan, label %34, label %._crit_edge51

; <label>:34                                      ; preds = %33
  %p_6_load = load i1* %p_6
  %error_MSG_SIZE_V = trunc i32 %op2_assign_load_1 to i16
  %id_in_V_load_9 = load i16* @id_in_V, align 2
  %pkt_out_id_V_2 = trunc i16 %id_in_V_load_9 to i8
  br i1 %p_6_load, label %._crit_edge53, label %35

; <label>:35                                      ; preds = %34
  %tmp_4_load = load i129* %tmp_4
  %tmp_271 = call i72 @_ssdm_op_BitConcatenate.i72.i8.i4.i4.i8.i16.i8.i8.i16(i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %error_MSG_SIZE_V, i8 4, i8 %error_SRC_V, i16 %error_DEST_V)
  %tmp_4_1 = call i129 @_ssdm_op_PartSet.i129.i129.i72.i32.i32(i129 %tmp_4_load, i72 %tmp_271, i32 0, i32 71)
  %tmp_4_2 = call i129 @_ssdm_op_BitSet.i129.i129.i32.i1(i129 %tmp_4_1, i32 72, i1 true)
  %tmp_4_3 = call i129 @llvm.part.set.i129.i8(i129 %tmp_4_2, i8 %pkt_out_id_V_2, i32 73, i32 80)
  %tmp_4_5 = call i129 @llvm.part.set.i129.i40(i129 %tmp_4_3, i40 0, i32 89, i32 128)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_4_5)
  store i1 true, i1* %p_6
  store i129 %tmp_4_5, i129* %tmp_4
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %35, %34
  %i = add nsw i32 %i4, -8
  store i1 %p_s, i1* %p_7
  br label %.loopexit977

._crit_edge51:                                    ; preds = %33
  %tmp_174 = add nsw i32 8, %i4
  %tmp_175 = srem i32 %tmp_174, 1488
  %tmp_265 = trunc i32 %tmp_175 to i12
  %tmp_176 = icmp eq i12 %tmp_265, 0
  br i1 %tmp_176, label %.preheader978.preheader, label %.loopexit979_ifconv

.preheader978.preheader:                          ; preds = %._crit_edge51
  br label %.preheader978

.preheader978:                                    ; preds = %.preheader978.preheader, %36
  %p_0704_1 = phi i1 [ %last_V_4, %36 ], [ %recv_data_last_V, %.preheader978.preheader ]
  br i1 %p_0704_1, label %.loopexit979_ifconv.loopexit, label %36

; <label>:36                                      ; preds = %.preheader978
  %tmp_5 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %last_V_4 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_5, i32 72)
  br label %.preheader978

.loopexit979_ifconv.loopexit:                     ; preds = %.preheader978
  br label %.loopexit979_ifconv

.loopexit979_ifconv:                              ; preds = %.loopexit979_ifconv.loopexit, %._crit_edge51
  %p_0704_2 = phi i1 [ %recv_data_last_V, %._crit_edge51 ], [ true, %.loopexit979_ifconv.loopexit ]
  %op2_assign_load = load i32* %op2_assign
  %seq_num = add nsw i32 %op2_assign_load, 1
  %p_1 = select i1 %tmp_169, i32 %seq_num, i32 %op2_assign_load
  %seq_num_2 = select i1 %recv_data_last_V, i32 %p_1, i32 %op2_assign_load
  br i1 %tmp_169, label %.preheader976.preheader, label %38

.preheader976.preheader:                          ; preds = %.loopexit979_ifconv
  %tmp_274 = shl i32 %i4, 3
  br label %.preheader976

.preheader976:                                    ; preds = %37, %.preheader976.preheader
  %j6 = phi i4 [ %j_4, %37 ], [ 0, %.preheader976.preheader ]
  %j6_cast2 = zext i4 %j6 to i32
  %exitcond = icmp eq i4 %j6, -8
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 8, i64 8, i64 8)
  %j_4 = add i4 %j6, 1
  br i1 %exitcond, label %.loopexit977.loopexit, label %37

; <label>:37                                      ; preds = %.preheader976
  %tmp_275 = trunc i4 %j6 to i3
  %Lo_assign = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_275, i3 0)
  %Hi_assign = or i6 %Lo_assign, 7
  %tmp_276 = icmp ugt i6 %Lo_assign, %Hi_assign
  %tmp_277 = zext i6 %Lo_assign to i7
  %tmp_278 = zext i6 %Hi_assign to i7
  %tmp_279 = call i64 @_ssdm_op_PartSelect.i64.i129.i32.i32(i129 %tmp_3243, i32 63, i32 0)
  %tmp_280 = sub i7 %tmp_277, %tmp_278
  %tmp_281 = xor i7 %tmp_277, 63
  %tmp_282 = sub i7 %tmp_278, %tmp_277
  %tmp_283 = select i1 %tmp_276, i7 %tmp_280, i7 %tmp_282
  %tmp_284 = select i1 %tmp_276, i64 %tmp_279, i64 %recv_data_data_V
  %tmp_285 = select i1 %tmp_276, i7 %tmp_281, i7 %tmp_277
  %tmp_286 = sub i7 63, %tmp_283
  %tmp_287 = zext i7 %tmp_285 to i64
  %tmp_288 = zext i7 %tmp_286 to i64
  %tmp_289 = lshr i64 %tmp_284, %tmp_287
  %tmp_290 = lshr i64 -1, %tmp_288
  %p_Result_s_244 = and i64 %tmp_289, %tmp_290
  %tmp_292 = trunc i64 %p_Result_s_244 to i8
  %tmp_206 = add nsw i32 %tmp_274, %j6_cast2
  %tmp_293 = trunc i32 %tmp_206 to i2
  %adjSize = call i15 @_ssdm_op_PartSelect.i15.i32.i32.i32(i32 %tmp_206, i32 2, i32 16)
  %mem_index_gep = add i15 12473, %adjSize
  %adjSize1242_cast = zext i15 %mem_index_gep to i16
  %addrCmp = icmp ult i15 %adjSize, -12473
  %addrCmp1 = icmp ult i15 %mem_index_gep, 12474
  %gepindex = add i16 -12473, %adjSize1242_cast
  %gepindex1 = select i1 %addrCmp, i16 %gepindex, i16 0
  %gepindex2 = select i1 %addrCmp1, i16 %gepindex1, i16 0
  %gepindex2_cast = sext i16 %gepindex2 to i64
  %buf_addr = getelementptr [1 x i32]* %buf_r, i64 0, i64 %gepindex2_cast
  %buf_load = load i32* %buf_addr, align 4
  %start_pos = call i5 @_ssdm_op_BitConcatenate.i5.i2.i3(i2 %tmp_293, i3 0)
  %end_pos = or i5 %start_pos, 7
  %tmp_294 = icmp ugt i5 %start_pos, %end_pos
  %tmp_295 = zext i5 %start_pos to i6
  %tmp_296 = zext i5 %end_pos to i6
  %tmp_297 = zext i8 %tmp_292 to i32
  %tmp_298 = xor i6 %tmp_295, 31
  %tmp_299 = select i1 %tmp_294, i6 %tmp_295, i6 %tmp_296
  %tmp_300 = select i1 %tmp_294, i6 %tmp_296, i6 %tmp_295
  %tmp_301 = select i1 %tmp_294, i6 %tmp_298, i6 %tmp_295
  %tmp_302 = xor i6 %tmp_299, 31
  %tmp_303 = zext i6 %tmp_301 to i32
  %tmp_304 = zext i6 %tmp_300 to i32
  %tmp_305 = zext i6 %tmp_302 to i32
  %tmp_306 = shl i32 %tmp_297, %tmp_303
  %tmp_307 = call i32 @llvm.part.select.i32(i32 %tmp_306, i32 31, i32 0)
  %tmp_308 = select i1 %tmp_294, i32 %tmp_307, i32 %tmp_306
  %tmp_309 = shl i32 -1, %tmp_304
  %tmp_310 = lshr i32 -1, %tmp_305
  %p_demorgan = and i32 %tmp_309, %tmp_310
  %tmp_311 = xor i32 %p_demorgan, -1
  %tmp_312 = and i32 %buf_load, %tmp_311
  %tmp_313 = and i32 %tmp_308, %p_demorgan
  %tmp_314 = or i32 %tmp_312, %tmp_313
  store i32 %tmp_314, i32* %buf_addr, align 4
  br label %.preheader976

; <label>:38                                      ; preds = %.loopexit979_ifconv
  %tmp_198 = icmp eq i4 %p_Result_s, 0
  br i1 %tmp_198, label %.preheader975.preheader, label %..loopexit977_crit_edge1272

.preheader975.preheader:                          ; preds = %38
  br label %.preheader975

..loopexit977_crit_edge1272:                      ; preds = %38
  store i1 %p_s, i1* %p_7
  store i1 false, i1* %p_6
  store i32 %seq_num_2, i32* %op2_assign
  store i1 %p_0704_2, i1* %last_V
  br label %.loopexit977

.preheader975:                                    ; preds = %.preheader975.preheader, %39
  %p_0704_3 = phi i1 [ %last_V_5, %39 ], [ %p_0704_2, %.preheader975.preheader ]
  br i1 %p_0704_3, label %40, label %39

; <label>:39                                      ; preds = %.preheader975
  %tmp_6 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %last_V_5 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_6, i32 72)
  br label %.preheader975

; <label>:40                                      ; preds = %.preheader975
  %p_Result_11 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3243, i32 89, i32 92)
  %tmp_209 = icmp eq i4 %p_Result_11, 0
  br i1 %tmp_209, label %41, label %58

; <label>:41                                      ; preds = %40
  %temp_diff_src_or_typ = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_69 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 16, i32 23)
  %temp_diff_src_or_typ_70 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 24, i32 31)
  %temp_diff_src_or_typ_71 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3243, i32 32, i32 47)
  %temp_diff_src_or_typ_72 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 48, i32 55)
  %temp_diff_src_or_typ_73 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3243, i32 60, i32 63)
  %tmp_211 = icmp eq i8 %temp_diff_src_or_typ_70, 0
  br i1 %tmp_211, label %.preheader973.preheader, label %49

.preheader973.preheader:                          ; preds = %41
  %int_req_num_load_2 = load i32* @int_req_num, align 4
  br label %.preheader973

.preheader973:                                    ; preds = %._crit_edge54, %.preheader973.preheader
  %i7 = phi i31 [ %i_25, %._crit_edge54 ], [ 0, %.preheader973.preheader ]
  %i7_cast = zext i31 %i7 to i32
  %tmp_215 = icmp slt i32 %i7_cast, %int_req_num_load_2
  %i_25 = add i31 %i7, 1
  br i1 %tmp_215, label %42, label %48

; <label>:42                                      ; preds = %.preheader973
  %tmp_217 = zext i31 %i7 to i64
  %int_request_array_SR_23 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_217
  %int_request_array_SR_24 = load i8* %int_request_array_SR_23, align 2
  %tmp_218 = icmp eq i8 %int_request_array_SR_24, %temp_diff_src_or_typ_69
  br i1 %tmp_218, label %43, label %._crit_edge54

; <label>:43                                      ; preds = %42
  %int_request_array_DE_23 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_217
  %int_request_array_DE_24 = load i16* %int_request_array_DE_23, align 2
  %tmp_223 = icmp eq i16 %int_request_array_DE_24, %temp_diff_src_or_typ
  br i1 %tmp_223, label %44, label %._crit_edge54

; <label>:44                                      ; preds = %43
  %int_request_array_PK_23 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_217
  %int_request_array_PK_24 = load i1* %int_request_array_PK_23, align 1
  br i1 %int_request_array_PK_24, label %._crit_edge54, label %45

; <label>:45                                      ; preds = %44
  %int_request_array_MS_23 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_217
  %int_request_array_MS_24 = load i16* %int_request_array_MS_23, align 2
  %tmp_239 = icmp eq i16 %int_request_array_MS_24, %temp_diff_src_or_typ_71
  br i1 %tmp_239, label %46, label %._crit_edge54

; <label>:46                                      ; preds = %45
  %int_request_array_TA_21 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_217
  %int_request_array_TA_22 = load i8* %int_request_array_TA_21, align 2
  %tmp_242 = icmp eq i8 %int_request_array_TA_22, %temp_diff_src_or_typ_72
  br i1 %tmp_242, label %47, label %._crit_edge54

; <label>:47                                      ; preds = %46
  %int_request_array_DA_25 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_217
  %int_request_array_DA_26 = load i4* %int_request_array_DA_25, align 1
  %tmp_245 = icmp eq i4 %int_request_array_DA_26, %temp_diff_src_or_typ_73
  br i1 %tmp_245, label %.loopexit.loopexit1279, label %._crit_edge54

._crit_edge54:                                    ; preds = %47, %46, %45, %44, %43, %42
  br label %.preheader973

; <label>:48                                      ; preds = %.preheader973
  %tmp_219 = sext i32 %int_req_num_load_2 to i64
  %int_request_array_DE_25 = getelementptr [512 x i16]* @int_request_array_DE, i64 0, i64 %tmp_219
  store i16 %temp_diff_src_or_typ, i16* %int_request_array_DE_25, align 2
  %int_request_array_SR_25 = getelementptr [512 x i8]* @int_request_array_SR, i64 0, i64 %tmp_219
  store i8 %temp_diff_src_or_typ_69, i8* %int_request_array_SR_25, align 2
  %int_request_array_PK_25 = getelementptr [512 x i1]* @int_request_array_PK, i64 0, i64 %tmp_219
  store i1 false, i1* %int_request_array_PK_25, align 1
  %int_request_array_MS_25 = getelementptr [512 x i16]* @int_request_array_MS, i64 0, i64 %tmp_219
  store i16 %temp_diff_src_or_typ_71, i16* %int_request_array_MS_25, align 2
  %int_request_array_TA_23 = getelementptr [512 x i8]* @int_request_array_TA, i64 0, i64 %tmp_219
  store i8 %temp_diff_src_or_typ_72, i8* %int_request_array_TA_23, align 2
  %int_request_array_DA_27 = getelementptr [512 x i4]* @int_request_array_DA, i64 0, i64 %tmp_219
  store i4 %temp_diff_src_or_typ_73, i4* %int_request_array_DA_27, align 1
  %tmp_220 = add nsw i32 %int_req_num_load_2, 1
  store i32 %tmp_220, i32* @int_req_num, align 4
  br label %57

; <label>:49                                      ; preds = %41
  %tmp_213 = icmp eq i8 %temp_diff_src_or_typ_70, 1
  br i1 %tmp_213, label %.preheader971.preheader, label %._crit_edge60

.preheader971.preheader:                          ; preds = %49
  %int_clr_num_load_2 = load i32* @int_clr_num, align 4
  br label %.preheader971

.preheader971:                                    ; preds = %._crit_edge61, %.preheader971.preheader
  %i8 = phi i31 [ %i_20, %._crit_edge61 ], [ 0, %.preheader971.preheader ]
  %i8_cast = zext i31 %i8 to i32
  %tmp_221 = icmp slt i32 %i8_cast, %int_clr_num_load_2
  %i_20 = add i31 %i8, 1
  br i1 %tmp_221, label %50, label %56

; <label>:50                                      ; preds = %.preheader971
  %tmp_224 = zext i31 %i8 to i64
  %int_clr2snd_array_SR_18 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_224
  %int_clr2snd_array_SR_19 = load i8* %int_clr2snd_array_SR_18, align 2
  %tmp_225 = icmp eq i8 %int_clr2snd_array_SR_19, %temp_diff_src_or_typ_69
  br i1 %tmp_225, label %51, label %._crit_edge61

; <label>:51                                      ; preds = %50
  %int_clr2snd_array_DE_18 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_224
  %int_clr2snd_array_DE_19 = load i16* %int_clr2snd_array_DE_18, align 2
  %tmp_233 = icmp eq i16 %int_clr2snd_array_DE_19, %temp_diff_src_or_typ
  br i1 %tmp_233, label %52, label %._crit_edge61

; <label>:52                                      ; preds = %51
  %int_clr2snd_array_PK_18 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_224
  %int_clr2snd_array_PK_19 = load i1* %int_clr2snd_array_PK_18, align 1
  br i1 %int_clr2snd_array_PK_19, label %53, label %._crit_edge61

; <label>:53                                      ; preds = %52
  %int_clr2snd_array_MS_18 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_224
  %int_clr2snd_array_MS_19 = load i16* %int_clr2snd_array_MS_18, align 2
  %tmp_243 = icmp eq i16 %int_clr2snd_array_MS_19, %temp_diff_src_or_typ_71
  br i1 %tmp_243, label %54, label %._crit_edge61

; <label>:54                                      ; preds = %53
  %int_clr2snd_array_TA_18 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_224
  %int_clr2snd_array_TA_19 = load i8* %int_clr2snd_array_TA_18, align 2
  %tmp_246 = icmp eq i8 %int_clr2snd_array_TA_19, %temp_diff_src_or_typ_72
  br i1 %tmp_246, label %55, label %._crit_edge61

; <label>:55                                      ; preds = %54
  %int_clr2snd_array_DA_18 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_224
  %int_clr2snd_array_DA_19 = load i4* %int_clr2snd_array_DA_18, align 1
  %tmp_249 = icmp eq i4 %int_clr2snd_array_DA_19, %temp_diff_src_or_typ_73
  br i1 %tmp_249, label %.loopexit.loopexit1278, label %._crit_edge61

._crit_edge61:                                    ; preds = %55, %54, %53, %52, %51, %50
  br label %.preheader971

; <label>:56                                      ; preds = %.preheader971
  %tmp_226 = sext i32 %int_clr_num_load_2 to i64
  %int_clr2snd_array_DE_20 = getelementptr [512 x i16]* @int_clr2snd_array_DE, i64 0, i64 %tmp_226
  store i16 %temp_diff_src_or_typ, i16* %int_clr2snd_array_DE_20, align 2
  %int_clr2snd_array_SR_20 = getelementptr [512 x i8]* @int_clr2snd_array_SR, i64 0, i64 %tmp_226
  store i8 %temp_diff_src_or_typ_69, i8* %int_clr2snd_array_SR_20, align 2
  %int_clr2snd_array_PK_20 = getelementptr [512 x i1]* @int_clr2snd_array_PK, i64 0, i64 %tmp_226
  store i1 true, i1* %int_clr2snd_array_PK_20, align 1
  %int_clr2snd_array_MS_20 = getelementptr [512 x i16]* @int_clr2snd_array_MS, i64 0, i64 %tmp_226
  store i16 %temp_diff_src_or_typ_71, i16* %int_clr2snd_array_MS_20, align 2
  %int_clr2snd_array_TA_20 = getelementptr [512 x i8]* @int_clr2snd_array_TA, i64 0, i64 %tmp_226
  store i8 %temp_diff_src_or_typ_72, i8* %int_clr2snd_array_TA_20, align 2
  %int_clr2snd_array_DA_20 = getelementptr [512 x i4]* @int_clr2snd_array_DA, i64 0, i64 %tmp_226
  store i4 %temp_diff_src_or_typ_73, i4* %int_clr2snd_array_DA_20, align 1
  %tmp_227 = add nsw i32 %int_clr_num_load_2, 1
  store i32 %tmp_227, i32* @int_clr_num, align 4
  br label %._crit_edge60

._crit_edge60:                                    ; preds = %56, %49
  br label %57

; <label>:57                                      ; preds = %._crit_edge60, %48
  %i_23 = add nsw i32 %i4, -8
  store i1 %p_s, i1* %p_7
  store i1 false, i1* %p_6
  store i32 %seq_num_2, i32* %op2_assign
  store i1 true, i1* %last_V
  br label %.loopexit977

; <label>:58                                      ; preds = %40
  %tmp_212 = icmp eq i4 %p_Result_11, 1
  br i1 %tmp_212, label %59, label %..loopexit977_crit_edge

..loopexit977_crit_edge:                          ; preds = %58
  store i1 %p_s, i1* %p_7
  store i1 false, i1* %p_6
  store i32 %seq_num_2, i32* %op2_assign
  store i1 true, i1* %last_V
  br label %.loopexit977

; <label>:59                                      ; preds = %58
  %temp_diff_src_or_typ_74 = zext i8 %recv_data_dest_V to i16
  %temp_diff_src_or_typ_75 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 16, i32 23)
  %temp_diff_src_or_typ_76 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 24, i32 31)
  %temp_diff_src_or_typ_77 = call i16 @_ssdm_op_PartSelect.i16.i129.i32.i32(i129 %tmp_3243, i32 32, i32 47)
  %temp_diff_src_or_typ_78 = call i8 @_ssdm_op_PartSelect.i8.i129.i32.i32(i129 %tmp_3243, i32 48, i32 55)
  %temp_diff_src_or_typ_79 = call i4 @_ssdm_op_PartSelect.i4.i129.i32.i32(i129 %tmp_3243, i32 60, i32 63)
  %tmp_214 = icmp eq i8 %temp_diff_src_or_typ_76, 0
  br i1 %tmp_214, label %.preheader969.preheader, label %67

.preheader969.preheader:                          ; preds = %59
  %float_req_num_load_4 = load i32* @float_req_num, align 4
  br label %.preheader969

.preheader969:                                    ; preds = %._crit_edge68, %.preheader969.preheader
  %i10 = phi i31 [ %i_21, %._crit_edge68 ], [ 0, %.preheader969.preheader ]
  %i10_cast = zext i31 %i10 to i32
  %tmp_222 = icmp slt i32 %i10_cast, %float_req_num_load_4
  %i_21 = add i31 %i10, 1
  br i1 %tmp_222, label %60, label %66

; <label>:60                                      ; preds = %.preheader969
  %tmp_228 = zext i31 %i10 to i64
  %float_request_array_232 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_228
  %float_request_array_233 = load i8* %float_request_array_232, align 2
  %tmp_229 = icmp eq i8 %float_request_array_233, %temp_diff_src_or_typ_75
  br i1 %tmp_229, label %61, label %._crit_edge68

; <label>:61                                      ; preds = %60
  %float_request_array_234 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_228
  %float_request_array_235 = load i16* %float_request_array_234, align 2
  %tmp_234 = icmp eq i16 %float_request_array_235, %temp_diff_src_or_typ_74
  br i1 %tmp_234, label %62, label %._crit_edge68

; <label>:62                                      ; preds = %61
  %float_request_array_236 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_228
  %float_request_array_237 = load i8* %float_request_array_236, align 1
  %tmp_240 = icmp eq i8 %float_request_array_237, 0
  br i1 %tmp_240, label %63, label %._crit_edge68

; <label>:63                                      ; preds = %62
  %float_request_array_238 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_228
  %float_request_array_239 = load i16* %float_request_array_238, align 2
  %tmp_244 = icmp eq i16 %float_request_array_239, %temp_diff_src_or_typ_77
  br i1 %tmp_244, label %64, label %._crit_edge68

; <label>:64                                      ; preds = %63
  %float_request_array_240 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_228
  %float_request_array_241 = load i8* %float_request_array_240, align 2
  %tmp_247 = icmp eq i8 %float_request_array_241, %temp_diff_src_or_typ_78
  br i1 %tmp_247, label %65, label %._crit_edge68

; <label>:65                                      ; preds = %64
  %float_request_array_242 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_228
  %float_request_array_243 = load i4* %float_request_array_242, align 1
  %tmp_250 = icmp eq i4 %float_request_array_243, %temp_diff_src_or_typ_79
  br i1 %tmp_250, label %.loopexit.loopexit1277, label %._crit_edge68

._crit_edge68:                                    ; preds = %65, %64, %63, %62, %61, %60
  br label %.preheader969

; <label>:66                                      ; preds = %.preheader969
  %tmp_230 = sext i32 %float_req_num_load_4 to i64
  %float_request_array_244 = getelementptr [512 x i16]* @float_request_array_1, i64 0, i64 %tmp_230
  store i16 %temp_diff_src_or_typ_74, i16* %float_request_array_244, align 2
  %float_request_array_245 = getelementptr [512 x i8]* @float_request_array_5, i64 0, i64 %tmp_230
  store i8 %temp_diff_src_or_typ_75, i8* %float_request_array_245, align 2
  %float_request_array_246 = getelementptr [512 x i8]* @float_request_array_4, i64 0, i64 %tmp_230
  store i8 0, i8* %float_request_array_246, align 1
  %float_request_array_247 = getelementptr [512 x i16]* @float_request_array_3, i64 0, i64 %tmp_230
  store i16 %temp_diff_src_or_typ_77, i16* %float_request_array_247, align 2
  %float_request_array_248 = getelementptr [512 x i8]* @float_request_array_s, i64 0, i64 %tmp_230
  store i8 %temp_diff_src_or_typ_78, i8* %float_request_array_248, align 2
  %float_request_array_249 = getelementptr [512 x i4]* @float_request_array_7, i64 0, i64 %tmp_230
  store i4 %temp_diff_src_or_typ_79, i4* %float_request_array_249, align 1
  %tmp_231 = add nsw i32 %float_req_num_load_4, 1
  store i32 %tmp_231, i32* @float_req_num, align 4
  br label %75

; <label>:67                                      ; preds = %59
  %tmp_216 = icmp eq i8 %temp_diff_src_or_typ_76, 1
  br i1 %tmp_216, label %.preheader968.preheader, label %._crit_edge74

.preheader968.preheader:                          ; preds = %67
  %float_clr_num_load_3 = load i32* @float_clr_num, align 4
  br label %.preheader968

.preheader968:                                    ; preds = %._crit_edge75, %.preheader968.preheader
  %i11 = phi i31 [ %i_22, %._crit_edge75 ], [ 0, %.preheader968.preheader ]
  %i11_cast = zext i31 %i11 to i32
  %tmp_232 = icmp slt i32 %i11_cast, %float_clr_num_load_3
  %i_22 = add i31 %i11, 1
  br i1 %tmp_232, label %68, label %74

; <label>:68                                      ; preds = %.preheader968
  %tmp_235 = zext i31 %i11 to i64
  %float_clr2snd_array_115 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_235
  %float_clr2snd_array_116 = load i8* %float_clr2snd_array_115, align 2
  %tmp_236 = icmp eq i8 %float_clr2snd_array_116, %temp_diff_src_or_typ_75
  br i1 %tmp_236, label %69, label %._crit_edge75

; <label>:69                                      ; preds = %68
  %float_clr2snd_array_117 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_235
  %float_clr2snd_array_118 = load i16* %float_clr2snd_array_117, align 2
  %tmp_241 = icmp eq i16 %float_clr2snd_array_118, %temp_diff_src_or_typ_74
  br i1 %tmp_241, label %70, label %._crit_edge75

; <label>:70                                      ; preds = %69
  %float_clr2snd_array_119 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_235
  %float_clr2snd_array_120 = load i1* %float_clr2snd_array_119, align 1
  br i1 %float_clr2snd_array_120, label %71, label %._crit_edge75

; <label>:71                                      ; preds = %70
  %float_clr2snd_array_121 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_235
  %float_clr2snd_array_122 = load i16* %float_clr2snd_array_121, align 2
  %tmp_248 = icmp eq i16 %float_clr2snd_array_122, %temp_diff_src_or_typ_77
  br i1 %tmp_248, label %72, label %._crit_edge75

; <label>:72                                      ; preds = %71
  %float_clr2snd_array_123 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_235
  %float_clr2snd_array_124 = load i8* %float_clr2snd_array_123, align 2
  %tmp_251 = icmp eq i8 %float_clr2snd_array_124, %temp_diff_src_or_typ_78
  br i1 %tmp_251, label %73, label %._crit_edge75

; <label>:73                                      ; preds = %72
  %float_clr2snd_array_125 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_235
  %float_clr2snd_array_126 = load i4* %float_clr2snd_array_125, align 1
  %tmp_252 = icmp eq i4 %float_clr2snd_array_126, %temp_diff_src_or_typ_79
  br i1 %tmp_252, label %.loopexit.loopexit, label %._crit_edge75

._crit_edge75:                                    ; preds = %73, %72, %71, %70, %69, %68
  br label %.preheader968

; <label>:74                                      ; preds = %.preheader968
  %tmp_237 = sext i32 %float_clr_num_load_3 to i64
  %float_clr2snd_array_127 = getelementptr [512 x i16]* @float_clr2snd_array_1, i64 0, i64 %tmp_237
  store i16 %temp_diff_src_or_typ_74, i16* %float_clr2snd_array_127, align 2
  %float_clr2snd_array_128 = getelementptr [512 x i8]* @float_clr2snd_array_5, i64 0, i64 %tmp_237
  store i8 %temp_diff_src_or_typ_75, i8* %float_clr2snd_array_128, align 2
  %float_clr2snd_array_129 = getelementptr [512 x i1]* @float_clr2snd_array_4, i64 0, i64 %tmp_237
  store i1 true, i1* %float_clr2snd_array_129, align 1
  %float_clr2snd_array_130 = getelementptr [512 x i16]* @float_clr2snd_array_3, i64 0, i64 %tmp_237
  store i16 %temp_diff_src_or_typ_77, i16* %float_clr2snd_array_130, align 2
  %float_clr2snd_array_131 = getelementptr [512 x i8]* @float_clr2snd_array_s, i64 0, i64 %tmp_237
  store i8 %temp_diff_src_or_typ_78, i8* %float_clr2snd_array_131, align 2
  %float_clr2snd_array_132 = getelementptr [512 x i4]* @float_clr2snd_array_6, i64 0, i64 %tmp_237
  store i4 %temp_diff_src_or_typ_79, i4* %float_clr2snd_array_132, align 1
  %tmp_238 = add nsw i32 %float_clr_num_load_3, 1
  store i32 %tmp_238, i32* @float_clr_num, align 4
  br label %._crit_edge74

._crit_edge74:                                    ; preds = %74, %67
  br label %75

; <label>:75                                      ; preds = %._crit_edge74, %66
  %i_24 = add nsw i32 %i4, -8
  store i1 %p_s, i1* %p_7
  store i1 false, i1* %p_6
  store i32 %seq_num_2, i32* %op2_assign
  store i1 true, i1* %last_V
  br label %.loopexit977

; <label>:76                                      ; preds = %32
  %p_7_load = load i1* %p_7
  %t_V = load i64* @time_V, align 8
  %tmp_171 = add i64 %t_V, 1
  store i64 %tmp_171, i64* @time_V, align 8
  %i_18 = add nsw i32 %i4, -8
  %p_not = icmp ne i64 %tmp_171, 314465410
  %brmerge = or i1 %p_not, %p_7_load
  br i1 %brmerge, label %.loopexit977, label %77

; <label>:77                                      ; preds = %76
  store i64 0, i64* @time_V, align 8
  store i2 1, i2* @state, align 1
  br label %.loopexit

.loopexit977.loopexit:                            ; preds = %.preheader976
  store i1 %p_s, i1* %p_7
  store i1 false, i1* %p_6
  store i32 %seq_num_2, i32* %op2_assign
  store i1 %p_0704_2, i1* %last_V
  br label %.loopexit977

.loopexit977:                                     ; preds = %..loopexit977_crit_edge1272, %..loopexit977_crit_edge, %.loopexit977.loopexit, %76, %75, %57, %._crit_edge53
  %i4_2 = phi i32 [ %i, %._crit_edge53 ], [ %i_23, %57 ], [ %i_24, %75 ], [ %i4, %..loopexit977_crit_edge ], [ %i4, %..loopexit977_crit_edge1272 ], [ %i_18, %76 ], [ %i4, %.loopexit977.loopexit ]
  %i_26 = add nsw i32 %i4_2, 8
  br label %.preheader293

.preheader:                                       ; preds = %.preheader.preheader, %78
  %p_0704_8 = phi i1 [ %last_V_3, %78 ], [ %last_V_load, %.preheader.preheader ]
  br i1 %p_0704_8, label %79, label %78

; <label>:78                                      ; preds = %.preheader
  %tmp_7 = call i129 @_ssdm_op_Read.ap_fifo.volatile.i129P(i129* @stream_in_V)
  %last_V_3 = call i1 @_ssdm_op_BitSelect.i1.i129.i32(i129 %tmp_7, i32 72)
  br label %.preheader

; <label>:79                                      ; preds = %.preheader
  %op2_assign_load_2 = load i32* %op2_assign
  store i2 0, i2* @state, align 1
  store i64 0, i64* @time_V, align 8
  %error_MSG_SIZE_V_1 = trunc i32 %op2_assign_load_2 to i16
  %p_Result_6 = call i40 @llvm.part.set.i40.i4(i40 undef, i4 0, i32 0, i32 3)
  %p_Result_12 = call i40 @llvm.part.set.i40.i4(i40 %p_Result_6, i4 0, i32 4, i32 7)
  %p_Result_13 = call i40 @llvm.part.set.i40.i32(i40 %p_Result_12, i32 0, i32 8, i32 39)
  %id_in_V_load_8 = load i16* @id_in_V, align 2
  %pkt_out_id_V_3 = trunc i16 %id_in_V_load_8 to i8
  %tmp_268 = call i72 @_ssdm_op_BitConcatenate.i72.i8.i4.i4.i8.i16.i8.i8.i16(i8 %pkt_out_dest_V, i4 undef, i4 undef, i8 undef, i16 %error_MSG_SIZE_V_1, i8 5, i8 %error_SRC_V, i16 %error_DEST_V)
  %tmp_8 = call i129 @_ssdm_op_PartSet.i129.i129.i72.i32.i32(i129 undef, i72 %tmp_268, i32 0, i32 71)
  %tmp_8_1 = call i129 @_ssdm_op_BitSet.i129.i129.i32.i1(i129 %tmp_8, i32 72, i1 true)
  %tmp_8_2 = call i129 @llvm.part.set.i129.i8(i129 %tmp_8_1, i8 %pkt_out_id_V_3, i32 73, i32 80)
  %tmp_8_4 = call i129 @llvm.part.set.i129.i40(i129 %tmp_8_2, i40 %p_Result_13, i32 89, i32 128)
  call void @_ssdm_op_Write.ap_fifo.volatile.i129P(i129* @stream_out_V, i129 %tmp_8_4)
  br label %.loopexit

._crit_edge36:                                    ; preds = %._crit_edge48, %codeRepl
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %73
  br label %.loopexit

.loopexit.loopexit1277:                           ; preds = %65
  br label %.loopexit

.loopexit.loopexit1278:                           ; preds = %55
  br label %.loopexit

.loopexit.loopexit1279:                           ; preds = %47
  br label %.loopexit

.loopexit.loopexit1280:                           ; preds = %4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit1280, %.loopexit.loopexit1279, %.loopexit.loopexit1278, %.loopexit.loopexit1277, %.loopexit.loopexit, %._crit_edge36, %79, %77, %31, %28, %22, %16
  %p_s_245 = phi i1 [ false, %._crit_edge36 ], [ false, %77 ], [ true, %79 ], [ false, %31 ], [ false, %16 ], [ false, %22 ], [ false, %28 ], [ false, %.loopexit.loopexit ], [ false, %.loopexit.loopexit1277 ], [ false, %.loopexit.loopexit1278 ], [ false, %.loopexit.loopexit1279 ], [ false, %.loopexit.loopexit1280 ]
  ret i1 %p_s_245
}

!opencl.kernels = !{!0, !7, !10, !16, !18, !20, !21, !27, !21, !33, !21, !21, !21, !36, !40, !40, !21, !42, !45, !45, !21, !21, !21, !21, !48, !42, !21, !50, !53, !21, !21, !21, !55, !55, !56, !56, !58, !60, !21, !21, !21, !21, !58, !60, !55, !55, !62, !62, !64, !67, !67, !21, !21, !21, !69, !71, !21, !21, !21, !55, !55, !73, !73, !75, !42, !27, !40, !40, !21, !77, !79, !81, !36, !42, !21, !21, !21, !83, !48, !42, !84, !86, !64, !67, !67, !89, !92, !92, !21, !21, !21, !98, !98, !21, !21, !98, !98, !21, !21, !98, !98, !21, !21, !21, !99, !99, !99, !21, !21, !21, !101, !99, !99, !99, !99, !99, !99, !103, !103, !105, !98, !98, !107, !109, !109, !110, !111, !112, !112, !113, !114, !114, !115, !73, !73, !89, !116, !116, !118, !119, !121, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21, !21}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!123, !130, !135, !140, !145, !150, !155, !160, !165, !170, !175, !180, !185, !192, !197, !204}

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
!33 = metadata !{null, metadata !1, metadata !2, metadata !34, metadata !4, metadata !35, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int*"}
!35 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"darius_driver"}
!36 = metadata !{null, metadata !37, metadata !2, metadata !38, metadata !4, metadata !39, metadata !6}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &", metadata !"int"}
!39 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!40 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !41, metadata !6}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!42 = metadata !{null, metadata !28, metadata !29, metadata !43, metadata !31, metadata !44, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!44 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!45 = metadata !{null, metadata !28, metadata !29, metadata !46, metadata !31, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<40, false> &"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"ref"}
!48 = metadata !{null, metadata !37, metadata !2, metadata !49, metadata !4, metadata !39, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!50 = metadata !{null, metadata !37, metadata !2, metadata !51, metadata !4, metadata !52, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"int"}
!52 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!53 = metadata !{null, metadata !37, metadata !2, metadata !54, metadata !4, metadata !39, metadata !6}
!54 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &", metadata !"const ap_int_base<32, true> &"}
!55 = metadata !{null, metadata !28, metadata !29, metadata !43, metadata !31, metadata !41, metadata !6}
!56 = metadata !{null, metadata !28, metadata !29, metadata !57, metadata !31, metadata !41, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<49, true> &"}
!58 = metadata !{null, metadata !37, metadata !2, metadata !59, metadata !4, metadata !52, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"int"}
!60 = metadata !{null, metadata !37, metadata !2, metadata !61, metadata !4, metadata !39, metadata !6}
!61 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &", metadata !"const ap_int_base<32, true> &"}
!62 = metadata !{null, metadata !28, metadata !29, metadata !63, metadata !31, metadata !41, metadata !6}
!63 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<48, true> &"}
!64 = metadata !{null, metadata !28, metadata !29, metadata !65, metadata !31, metadata !66, metadata !6}
!65 = metadata !{metadata !"kernel_arg_type", metadata !"ulong long"}
!66 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!67 = metadata !{null, metadata !28, metadata !29, metadata !68, metadata !31, metadata !41, metadata !6}
!68 = metadata !{metadata !"kernel_arg_type", metadata !"ap_ulong"}
!69 = metadata !{null, metadata !37, metadata !2, metadata !70, metadata !4, metadata !52, metadata !6}
!70 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"int"}
!71 = metadata !{null, metadata !37, metadata !2, metadata !72, metadata !4, metadata !39, metadata !6}
!72 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &", metadata !"const ap_int_base<32, true> &"}
!73 = metadata !{null, metadata !28, metadata !29, metadata !74, metadata !31, metadata !41, metadata !6}
!74 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<16, false> &"}
!75 = metadata !{null, metadata !37, metadata !2, metadata !76, metadata !4, metadata !39, metadata !6}
!76 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<64, false> &", metadata !"int"}
!77 = metadata !{null, metadata !28, metadata !29, metadata !78, metadata !31, metadata !44, metadata !6}
!78 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!79 = metadata !{null, metadata !28, metadata !29, metadata !80, metadata !31, metadata !44, metadata !6}
!80 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!81 = metadata !{null, metadata !28, metadata !29, metadata !82, metadata !31, metadata !44, metadata !6}
!82 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!83 = metadata !{null, metadata !28, metadata !29, metadata !74, metadata !31, metadata !44, metadata !6}
!84 = metadata !{null, metadata !28, metadata !29, metadata !85, metadata !31, metadata !44, metadata !6}
!85 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<64> &"}
!86 = metadata !{null, metadata !28, metadata !29, metadata !87, metadata !31, metadata !88, metadata !6}
!87 = metadata !{metadata !"kernel_arg_type", metadata !"const struct stream_packet &"}
!88 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!89 = metadata !{null, metadata !37, metadata !2, metadata !90, metadata !4, metadata !91, metadata !6}
!90 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"int"}
!91 = metadata !{metadata !"kernel_arg_name", metadata !"Hi", metadata !"Lo"}
!92 = metadata !{null, metadata !93, metadata !94, metadata !95, metadata !96, metadata !97, metadata !6}
!93 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0}
!94 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none"}
!95 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<40, false>*", metadata !"int", metadata !"int"}
!96 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !""}
!97 = metadata !{metadata !"kernel_arg_name", metadata !"bv", metadata !"h", metadata !"l"}
!98 = metadata !{null, metadata !28, metadata !29, metadata !30, metadata !31, metadata !66, metadata !6}
!99 = metadata !{null, metadata !28, metadata !29, metadata !100, metadata !31, metadata !47, metadata !6}
!100 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_range_ref<64, false> &"}
!101 = metadata !{null, metadata !28, metadata !29, metadata !102, metadata !31, metadata !44, metadata !6}
!102 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!103 = metadata !{null, metadata !28, metadata !29, metadata !104, metadata !31, metadata !41, metadata !6}
!104 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!105 = metadata !{null, metadata !28, metadata !29, metadata !106, metadata !31, metadata !44, metadata !6}
!106 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<16> &"}
!107 = metadata !{null, metadata !28, metadata !29, metadata !108, metadata !31, metadata !44, metadata !6}
!108 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!109 = metadata !{null, metadata !28, metadata !29, metadata !106, metadata !31, metadata !41, metadata !6}
!110 = metadata !{null, metadata !28, metadata !29, metadata !104, metadata !31, metadata !44, metadata !6}
!111 = metadata !{null, metadata !28, metadata !29, metadata !80, metadata !31, metadata !66, metadata !6}
!112 = metadata !{null, metadata !28, metadata !29, metadata !80, metadata !31, metadata !41, metadata !6}
!113 = metadata !{null, metadata !28, metadata !29, metadata !82, metadata !31, metadata !66, metadata !6}
!114 = metadata !{null, metadata !28, metadata !29, metadata !82, metadata !31, metadata !41, metadata !6}
!115 = metadata !{null, metadata !28, metadata !29, metadata !74, metadata !31, metadata !66, metadata !6}
!116 = metadata !{null, metadata !93, metadata !94, metadata !117, metadata !96, metadata !97, metadata !6}
!117 = metadata !{metadata !"kernel_arg_type", metadata !"ap_int_base<64, false>*", metadata !"int", metadata !"int"}
!118 = metadata !{null, metadata !28, metadata !29, metadata !87, metadata !31, metadata !32, metadata !6}
!119 = metadata !{null, metadata !28, metadata !29, metadata !120, metadata !31, metadata !44, metadata !6}
!120 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<40> &"}
!121 = metadata !{null, metadata !28, metadata !29, metadata !122, metadata !31, metadata !32, metadata !6}
!122 = metadata !{metadata !"kernel_arg_type", metadata !"const struct envelope &"}
!123 = metadata !{metadata !124, i40* @stream_out_V_user_V}
!124 = metadata !{metadata !125}
!125 = metadata !{i32 0, i32 39, metadata !126}
!126 = metadata !{metadata !127}
!127 = metadata !{metadata !"stream_out.V.user.V", metadata !128, metadata !"uint40", i32 0, i32 39}
!128 = metadata !{metadata !129}
!129 = metadata !{i32 0, i32 0, i32 1}
!130 = metadata !{metadata !131, i1* @stream_out_V_last_V}
!131 = metadata !{metadata !132}
!132 = metadata !{i32 0, i32 0, metadata !133}
!133 = metadata !{metadata !134}
!134 = metadata !{metadata !"stream_out.V.last.V", metadata !128, metadata !"uint1", i32 0, i32 0}
!135 = metadata !{metadata !136, i8* @stream_out_V_keep_V}
!136 = metadata !{metadata !137}
!137 = metadata !{i32 0, i32 7, metadata !138}
!138 = metadata !{metadata !139}
!139 = metadata !{metadata !"stream_out.V.keep.V", metadata !128, metadata !"uint8", i32 0, i32 7}
!140 = metadata !{metadata !141, i8* @stream_out_V_id_V}
!141 = metadata !{metadata !142}
!142 = metadata !{i32 0, i32 7, metadata !143}
!143 = metadata !{metadata !144}
!144 = metadata !{metadata !"stream_out.V.id.V", metadata !128, metadata !"uint8", i32 0, i32 7}
!145 = metadata !{metadata !146, i8* @stream_out_V_dest_V}
!146 = metadata !{metadata !147}
!147 = metadata !{i32 0, i32 7, metadata !148}
!148 = metadata !{metadata !149}
!149 = metadata !{metadata !"stream_out.V.dest.V", metadata !128, metadata !"uint8", i32 0, i32 7}
!150 = metadata !{metadata !151, i64* @stream_out_V_data_V}
!151 = metadata !{metadata !152}
!152 = metadata !{i32 0, i32 63, metadata !153}
!153 = metadata !{metadata !154}
!154 = metadata !{metadata !"stream_out.V.data.V", metadata !128, metadata !"uint64", i32 0, i32 63}
!155 = metadata !{metadata !156, i40* @stream_in_V_user_V}
!156 = metadata !{metadata !157}
!157 = metadata !{i32 0, i32 39, metadata !158}
!158 = metadata !{metadata !159}
!159 = metadata !{metadata !"stream_in.V.user.V", metadata !128, metadata !"uint40", i32 0, i32 39}
!160 = metadata !{metadata !161, i1* @stream_in_V_last_V}
!161 = metadata !{metadata !162}
!162 = metadata !{i32 0, i32 0, metadata !163}
!163 = metadata !{metadata !164}
!164 = metadata !{metadata !"stream_in.V.last.V", metadata !128, metadata !"uint1", i32 0, i32 0}
!165 = metadata !{metadata !166, i8* @stream_in_V_keep_V}
!166 = metadata !{metadata !167}
!167 = metadata !{i32 0, i32 7, metadata !168}
!168 = metadata !{metadata !169}
!169 = metadata !{metadata !"stream_in.V.keep.V", metadata !128, metadata !"uint8", i32 0, i32 7}
!170 = metadata !{metadata !171, i8* @stream_in_V_id_V}
!171 = metadata !{metadata !172}
!172 = metadata !{i32 0, i32 7, metadata !173}
!173 = metadata !{metadata !174}
!174 = metadata !{metadata !"stream_in.V.id.V", metadata !128, metadata !"uint8", i32 0, i32 7}
!175 = metadata !{metadata !176, i8* @stream_in_V_dest_V}
!176 = metadata !{metadata !177}
!177 = metadata !{i32 0, i32 7, metadata !178}
!178 = metadata !{metadata !179}
!179 = metadata !{metadata !"stream_in.V.dest.V", metadata !128, metadata !"uint8", i32 0, i32 7}
!180 = metadata !{metadata !181, i64* @stream_in_V_data_V}
!181 = metadata !{metadata !182}
!182 = metadata !{i32 0, i32 63, metadata !183}
!183 = metadata !{metadata !184}
!184 = metadata !{metadata !"stream_in.V.data.V", metadata !128, metadata !"uint64", i32 0, i32 63}
!185 = metadata !{metadata !186, [2 x i32]* @llvm_global_ctors_0}
!186 = metadata !{metadata !187}
!187 = metadata !{i32 0, i32 31, metadata !188}
!188 = metadata !{metadata !189}
!189 = metadata !{metadata !"llvm.global_ctors.0", metadata !190, metadata !"", i32 0, i32 31}
!190 = metadata !{metadata !191}
!191 = metadata !{i32 0, i32 1, i32 1}
!192 = metadata !{metadata !193, i16* @id_in_V}
!193 = metadata !{metadata !194}
!194 = metadata !{i32 0, i32 15, metadata !195}
!195 = metadata !{metadata !196}
!196 = metadata !{metadata !"id_in.V", metadata !128, metadata !"uint16", i32 0, i32 15}
!197 = metadata !{metadata !198, i129* @stream_out_V}
!198 = metadata !{metadata !152, metadata !199, metadata !200, metadata !201, metadata !202, metadata !203}
!199 = metadata !{i32 64, i32 71, metadata !148}
!200 = metadata !{i32 72, i32 72, metadata !133}
!201 = metadata !{i32 73, i32 80, metadata !143}
!202 = metadata !{i32 81, i32 88, metadata !138}
!203 = metadata !{i32 89, i32 128, metadata !126}
!204 = metadata !{metadata !205, i129* @stream_in_V}
!205 = metadata !{metadata !182, metadata !206, metadata !207, metadata !208, metadata !209, metadata !210}
!206 = metadata !{i32 64, i32 71, metadata !178}
!207 = metadata !{i32 72, i32 72, metadata !163}
!208 = metadata !{i32 73, i32 80, metadata !173}
!209 = metadata !{i32 81, i32 88, metadata !168}
!210 = metadata !{i32 89, i32 128, metadata !158}
!211 = metadata !{metadata !212}
!212 = metadata !{i32 0, i32 31, metadata !213}
!213 = metadata !{metadata !214}
!214 = metadata !{metadata !"mem", metadata !215, metadata !"float", i32 0, i32 31}
!215 = metadata !{metadata !216}
!216 = metadata !{i32 0, i32 2147483647, i32 1}
!217 = metadata !{metadata !218}
!218 = metadata !{i32 0, i32 31, metadata !219}
!219 = metadata !{metadata !220}
!220 = metadata !{metadata !"darius_driver", metadata !221, metadata !"int", i32 0, i32 31}
!221 = metadata !{metadata !222}
!222 = metadata !{i32 0, i32 1023, i32 1}
