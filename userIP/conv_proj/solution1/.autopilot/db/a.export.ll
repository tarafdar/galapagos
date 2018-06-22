; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/conv_proj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer_str = internal unnamed_addr constant [11 x i8] c"conv_layer\00"
@p_str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !19
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !45
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !53
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !57
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer_str) nounwind
  %k_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %k) nounwind
  %s_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %s) nounwind
  %iy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %iy) nounwind
  %ix_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ix) nounwind
  %id_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %id) nounwind
  %oy_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %oy) nounwind
  %ox_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %ox) nounwind
  %od_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %od) nounwind
  %b_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %b) nounwind
  %output_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %output_offset) nounwind
  %input_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %input_offset) nounwind
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i64 2147483648, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [9 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp1 = mul i32 %od_read, %id_read
  %tmp2 = mul i32 %k_read, %k_read
  %num_weights = mul i32 %tmp2, %tmp1
  %tmp_6 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %input_offset_read, i32 2, i32 31)
  %tmp_s = sext i30 %tmp_6 to i62
  %tmp_3 = zext i62 %tmp_s to i64
  %tmp_4_cast = sext i32 %num_weights to i33
  %tmp_5_cast = sext i32 %od_read to i33
  %tmp_4 = call i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32 %output_offset_read, i32 2, i32 31)
  %tmp_5 = sext i30 %tmp_4 to i62
  %tmp_7 = zext i62 %tmp_5 to i64
  %tmp3 = mul i32 %ix_read, %id_read
  %tmp5 = mul i32 %ox_read, %od_read
  %tmp8 = mul i32 %id_read, %k_read
  %tmp = add i33 %tmp_5_cast, %tmp_4_cast
  %tmp14_cast = sext i33 %tmp to i64
  %tmp4 = add i64 %tmp14_cast, %tmp_3
  br label %.loopexit30

.loopexit30.loopexit:                             ; preds = %.preheader2
  br label %.loopexit30

.loopexit30:                                      ; preds = %.loopexit30.loopexit, %0
  %b_s = phi i31 [ 0, %0 ], [ %b_1, %.loopexit30.loopexit ]
  %phi_mul2 = phi i32 [ 0, %0 ], [ %next_mul3, %.loopexit30.loopexit ]
  %phi_mul4 = phi i32 [ 0, %0 ], [ %next_mul1, %.loopexit30.loopexit ]
  %next_mul1 = add i32 %phi_mul4, %oy_read
  %next_mul3 = add i32 %phi_mul2, %iy_read
  %b_cast = zext i31 %b_s to i32
  %tmp_8 = icmp slt i32 %b_cast, %b_read
  %b_1 = add i31 %b_s, 1
  br i1 %tmp_8, label %.preheader2.preheader, label %9

.preheader2.preheader:                            ; preds = %.loopexit30
  %tmp_9 = mul i32 %phi_mul2, %tmp3
  %tmp_11_cast = sext i32 %tmp_9 to i33
  %tmp_1 = mul i32 %phi_mul4, %tmp5
  %tmp_15_cast = sext i32 %tmp_1 to i33
  br label %.preheader2

.preheader2.loopexit:                             ; preds = %.preheader1
  br label %.preheader2

.preheader2:                                      ; preds = %.preheader2.loopexit, %.preheader2.preheader
  %o_d = phi i31 [ 0, %.preheader2.preheader ], [ %o_d_1, %.preheader2.loopexit ]
  %phi_mul6 = phi i32 [ 0, %.preheader2.preheader ], [ %next_mul7, %.preheader2.loopexit ]
  %phi_mul8 = phi i32 [ 0, %.preheader2.preheader ], [ %next_mul5, %.preheader2.loopexit ]
  %next_mul5 = add i32 %phi_mul8, %oy_read
  %next_mul7 = add i32 %phi_mul6, %k_read
  %o_d_cast = zext i31 %o_d to i32
  %tmp_2 = icmp slt i32 %o_d_cast, %od_read
  %o_d_1 = add i31 %o_d, 1
  br i1 %tmp_2, label %.preheader1.preheader, label %.loopexit30.loopexit

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp_17_cast = zext i31 %o_d to i33
  %tmp7 = add i33 %tmp_4_cast, %tmp_17_cast
  %tmp7_cast = sext i33 %tmp7 to i64
  %tmp_10 = add i64 %tmp7_cast, %tmp_3
  %mem_addr = getelementptr inbounds float* %mem, i64 %tmp_10
  %tmp_11 = mul i32 %phi_mul6, %tmp8
  %tmp_12 = sext i32 %tmp_11 to i64
  %tmp_13 = mul i32 %phi_mul8, %ox_read
  %tmp_14 = sext i32 %tmp_13 to i64
  %tmp6 = add i64 %tmp_3, %tmp_12
  %tmp9 = add i64 %tmp_7, %tmp_14
  br label %.preheader1

.preheader1.loopexit:                             ; preds = %.preheader
  br label %.preheader1

.preheader1:                                      ; preds = %.preheader1.loopexit, %.preheader1.preheader
  %o_y = phi i31 [ 0, %.preheader1.preheader ], [ %o_y_1, %.preheader1.loopexit ]
  %i_y = phi i32 [ 0, %.preheader1.preheader ], [ %next_mul8, %.preheader1.loopexit ]
  %phi_mul9 = phi i32 [ 0, %.preheader1.preheader ], [ %next_mul9, %.preheader1.loopexit ]
  %next_mul9 = add i32 %phi_mul9, %ox_read
  %next_mul8 = add i32 %i_y, %s_read
  %o_y_cast = zext i31 %o_y to i32
  %tmp_15 = icmp slt i32 %o_y_cast, %oy_read
  %o_y_1 = add i31 %o_y, 1
  br i1 %tmp_15, label %.preheader.preheader, label %.preheader2.loopexit

.preheader.preheader:                             ; preds = %.preheader1
  %tmp_16 = add nsw i32 %i_y, %k_read
  %tmp_30_cast = sext i32 %phi_mul9 to i34
  br label %.preheader

.preheader:                                       ; preds = %8, %.preheader.preheader
  %o_x = phi i31 [ %o_x_1, %8 ], [ 0, %.preheader.preheader ]
  %i_x = phi i32 [ %next_mul6, %8 ], [ 0, %.preheader.preheader ]
  %next_mul6 = add i32 %i_x, %s_read
  %o_x_cast = zext i31 %o_x to i32
  %tmp_17 = icmp slt i32 %o_x_cast, %ox_read
  %o_x_1 = add i31 %o_x, 1
  br i1 %tmp_17, label %1, label %.preheader1.loopexit

; <label>:1                                       ; preds = %.preheader
  %output_element_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr, i32 1) nounwind
  %output_element = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr) nounwind
  %tmp_18 = add nsw i32 %i_x, %k_read
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %1
  %tmp_19 = phi float [ %output_element, %1 ], [ %tmp_30, %.loopexit.loopexit ]
  %i_d = phi i31 [ 0, %1 ], [ %i_d_1, %.loopexit.loopexit ]
  %phi_mul1 = phi i32 [ 0, %1 ], [ %next_mul2, %.loopexit.loopexit ]
  %phi_mul3 = phi i32 [ 0, %1 ], [ %next_mul4, %.loopexit.loopexit ]
  %next_mul4 = add i32 %phi_mul3, %k_read
  %next_mul2 = add i32 %phi_mul1, %ix_read
  %i_d_cast = zext i31 %i_d to i32
  %tmp_20 = icmp slt i32 %i_d_cast, %id_read
  %i_d_1 = add i31 %i_d, 1
  br i1 %tmp_20, label %2, label %8

; <label>:2                                       ; preds = %.loopexit
  %tmp_21 = mul i32 %phi_mul1, %iy_read
  %tmp_37_cast = sext i32 %tmp_21 to i33
  %tmp_22 = mul i32 %phi_mul3, %k_read
  %tmp_40_cast = sext i32 %tmp_22 to i34
  %tmp10 = add i33 %tmp_11_cast, %tmp_37_cast
  %tmp16_cast = sext i33 %tmp10 to i34
  br label %3

; <label>:3                                       ; preds = %7, %2
  %tmp_30 = phi float [ %tmp_19, %2 ], [ %tmp_33, %7 ]
  %i_y1 = phi i32 [ %i_y, %2 ], [ %i_y_1, %7 ]
  %phi_mul = phi i32 [ 0, %2 ], [ %next_mul, %7 ]
  %next_mul = add i32 %phi_mul, %k_read
  %tmp_31 = icmp slt i32 %i_y1, %tmp_16
  br i1 %tmp_31, label %4, label %.loopexit.loopexit

; <label>:4                                       ; preds = %3
  %tmp_32 = mul nsw i32 %i_y1, %ix_read
  %tmp_51_cast = sext i32 %tmp_32 to i33
  %tmp_53_cast = sext i32 %phi_mul to i33
  br label %5

; <label>:5                                       ; preds = %6, %4
  %tmp_33 = phi float [ %tmp_30, %4 ], [ %output_element_1, %6 ]
  %i_x1 = phi i32 [ %i_x, %4 ], [ %i_x_1, %6 ]
  %iix = phi i32 [ 0, %4 ], [ %iix_1, %6 ]
  %tmp_34 = icmp slt i32 %i_x1, %tmp_18
  %iix_1 = add nsw i32 %iix, 1
  br i1 %tmp_34, label %6, label %7

; <label>:6                                       ; preds = %5
  %tmp_56_cast = sext i32 %i_x1 to i33
  %tmp17 = add i33 %tmp_51_cast, %tmp_56_cast
  %tmp17_cast = sext i33 %tmp17 to i34
  %tmp15 = add i34 %tmp17_cast, %tmp16_cast
  %tmp15_cast = sext i34 %tmp15 to i64
  %tmp_35 = add i64 %tmp15_cast, %tmp4
  %mem_addr_2 = getelementptr inbounds float* %mem, i64 %tmp_35
  %mem_load_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_2, i32 1) nounwind
  %mem_addr_2_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_2) nounwind
  %tmp_63_cast = sext i32 %iix to i33
  %tmp20 = add i33 %tmp_53_cast, %tmp_63_cast
  %tmp20_cast = sext i33 %tmp20 to i34
  %tmp19 = add i34 %tmp20_cast, %tmp_40_cast
  %tmp19_cast = sext i34 %tmp19 to i64
  %tmp_36 = add i64 %tmp19_cast, %tmp6
  %mem_addr_3 = getelementptr inbounds float* %mem, i64 %tmp_36
  %mem_load_1_req = call i1 @_ssdm_op_ReadReq.m_axi.floatP(float* %mem_addr_3, i32 1) nounwind
  %mem_addr_3_read = call float @_ssdm_op_Read.m_axi.floatP(float* %mem_addr_3) nounwind
  %tmp_37 = fmul float %mem_addr_2_read, %mem_addr_3_read
  %output_element_1 = fadd float %tmp_33, %tmp_37
  %i_x_1 = add nsw i32 %i_x1, 1
  br label %5

; <label>:7                                       ; preds = %5
  %i_y_1 = add nsw i32 %i_y1, 1
  br label %3

; <label>:8                                       ; preds = %.loopexit
  %tmp_33_to_int = bitcast float %tmp_19 to i32
  %tmp_23 = call i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32 %tmp_33_to_int, i32 23, i32 30)
  %tmp_24 = trunc i32 %tmp_33_to_int to i23
  %notlhs = icmp ne i8 %tmp_23, -1
  %notrhs = icmp eq i23 %tmp_24, 0
  %tmp_25 = or i1 %notrhs, %notlhs
  %tmp_26 = fcmp ogt float %tmp_19, 0.000000e+00
  %tmp_27 = and i1 %tmp_25, %tmp_26
  %tmp_28 = select i1 %tmp_27, float %tmp_19, float 0.000000e+00
  %tmp_43_cast = zext i31 %o_x to i33
  %tmp21 = add i33 %tmp_15_cast, %tmp_43_cast
  %tmp23_cast = sext i33 %tmp21 to i34
  %tmp22 = add i34 %tmp23_cast, %tmp_30_cast
  %tmp22_cast = sext i34 %tmp22 to i64
  %tmp_29 = add i64 %tmp22_cast, %tmp9
  %mem_addr_1 = getelementptr inbounds float* %mem, i64 %tmp_29
  %mem_addr_1_req = call i1 @_ssdm_op_WriteReq.m_axi.floatP(float* %mem_addr_1, i32 1) nounwind
  call void @_ssdm_op_Write.m_axi.floatP(float* %mem_addr_1, float %tmp_28, i4 -1) nounwind
  %mem_addr_1_resp = call i1 @_ssdm_op_WriteResp.m_axi.floatP(float* %mem_addr_1) nounwind
  br label %.preheader

; <label>:9                                       ; preds = %.loopexit30
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.floatP(float*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.floatP(float*, float, i4) {
entry:
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

define weak i1 @_ssdm_op_ReadReq.m_axi.floatP(float*, i32) {
entry:
  ret i1 true
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

define weak float @_ssdm_op_Read.m_axi.floatP(float*) {
entry:
  %empty = load float* %0
  ret float %empty
}

define weak i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_4 = trunc i32 %empty to i8
  ret i8 %empty_4
}

define weak i30 @_ssdm_op_PartSelect.i30.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_5 = trunc i32 %empty to i30
  ret i30 %empty_5
}

declare i23 @_ssdm_op_PartSelect.i23.i32.i32.i32(i32, i32, i32) nounwind readnone

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 31, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"mem", metadata !17, metadata !"float", i32 0, i32 31}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 31, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"input_offset", metadata !23, metadata !"int", i32 0, i32 31}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 0, i32 0}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"output_offset", metadata !23, metadata !"int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 31, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"b", metadata !23, metadata !"int", i32 0, i32 31}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 31, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"od", metadata !23, metadata !"int", i32 0, i32 31}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 31, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"ox", metadata !23, metadata !"int", i32 0, i32 31}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 31, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"oy", metadata !23, metadata !"int", i32 0, i32 31}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 31, metadata !47}
!47 = metadata !{metadata !48}
!48 = metadata !{metadata !"id", metadata !23, metadata !"int", i32 0, i32 31}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"ix", metadata !23, metadata !"int", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"iy", metadata !23, metadata !"int", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 31, metadata !59}
!59 = metadata !{metadata !60}
!60 = metadata !{metadata !"s", metadata !23, metadata !"int", i32 0, i32 31}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"k", metadata !23, metadata !"int", i32 0, i32 31}
