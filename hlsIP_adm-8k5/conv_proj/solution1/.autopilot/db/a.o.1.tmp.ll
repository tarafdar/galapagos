; ModuleID = '/nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/hlsIP_adm-8k5/conv_proj/solution1/.autopilot/db/a.o.1.tmp.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer.str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@__empty_str = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=0 type=[1 x i8]*]
@AP_complete_mode = internal unnamed_addr constant [9 x i8] c"COMPLETE\00" ; [#uses=0 type=[9 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=10 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=12 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=68 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=27]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(float* %mem) nounwind, !map !49
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %input_offset) nounwind, !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %output_offset) nounwind, !map !61
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %b) nounwind, !map !65
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %od) nounwind, !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ox) nounwind, !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %oy) nounwind, !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %id) nounwind, !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %ix) nounwind, !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iy) nounwind, !map !89
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %s) nounwind, !map !93
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %k) nounwind, !map !97
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !101), !dbg !102 ; [debug line = 5:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !103), !dbg !104 ; [debug line = 6:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !105), !dbg !106 ; [debug line = 7:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !107), !dbg !108 ; [debug line = 8:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !109), !dbg !110 ; [debug line = 9:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !111), !dbg !112 ; [debug line = 10:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !113), !dbg !114 ; [debug line = 11:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !115), !dbg !116 ; [debug line = 12:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !117), !dbg !118 ; [debug line = 13:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !119), !dbg !120 ; [debug line = 14:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !121), !dbg !122 ; [debug line = 15:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !123), !dbg !124 ; [debug line = 16:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, [6 x i8]* @.str, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i64 2147483648, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !125 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !127 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !128 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !129 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !130 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !131 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !132 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !133 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !134 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !135 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !136 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !137 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @.str2, i32 0, i32 0, [1 x i8]* @.str1, i32 0, i32 0, [9 x i8]* @.str3, [1 x i8]* @.str1, [1 x i8]* @.str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !138 ; [debug line = 33:1]
  %tmp = mul i32 %id, %od, !dbg !139              ; [#uses=1 type=i32] [debug line = 35:29]
  %tmp.1 = mul i32 %tmp, %k, !dbg !139            ; [#uses=1 type=i32] [debug line = 35:29]
  %num_weights = mul i32 %tmp.1, %k, !dbg !139    ; [#uses=1 type=i32] [debug line = 35:29]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !140), !dbg !139 ; [debug line = 35:29] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !141), !dbg !142 ; [debug line = 36:22] [debug variable = num_biases]
  %tmp.2 = lshr i32 %input_offset, 2, !dbg !143   ; [#uses=1 type=i32] [debug line = 53:86]
  %tmp.6 = trunc i32 %tmp.2 to i30, !dbg !143     ; [#uses=1 type=i30] [debug line = 53:86]
  %tmp.69 = sext i30 %tmp.6 to i62, !dbg !143     ; [#uses=1 type=i62] [debug line = 53:86]
  %tmp.3 = zext i62 %tmp.69 to i64, !dbg !143     ; [#uses=3 type=i64] [debug line = 53:86]
  %tmp.4 = sext i32 %num_weights to i64, !dbg !143 ; [#uses=2 type=i64] [debug line = 53:86]
  %tmp.5 = sext i32 %od to i64, !dbg !152         ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.70 = lshr i32 %output_offset, 2, !dbg !159 ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.71 = trunc i32 %tmp.70 to i30, !dbg !159   ; [#uses=1 type=i30] [debug line = 72:87]
  %tmp.72 = sext i30 %tmp.71 to i62, !dbg !159    ; [#uses=1 type=i62] [debug line = 72:87]
  %tmp.7 = zext i62 %tmp.72 to i64, !dbg !159     ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.9 = mul i32 %id, %ix, !dbg !152            ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp. = mul i32 %tmp.9, %iy, !dbg !152          ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.12 = mul i32 %od, %ox, !dbg !159           ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.13 = mul i32 %tmp.12, %oy, !dbg !159       ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.18 = add i64 %tmp.4, %tmp.3, !dbg !143     ; [#uses=1 type=i64] [debug line = 53:86]
  %tmp.20 = mul i32 %k, %id, !dbg !152            ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.21 = mul i32 %tmp.20, %k, !dbg !152        ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.24 = mul i32 %oy, %ox, !dbg !159           ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.35 = mul i32 %ix, %iy, !dbg !152           ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.38 = mul i32 %k, %k, !dbg !152             ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.57 = add i64 %tmp.3, %tmp.5, !dbg !152     ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.58 = add i64 %tmp.4, %tmp.57, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  br label %1, !dbg !160                          ; [debug line = 41:16]

; <label>:1                                       ; preds = %14, %0
  %b_ = phi i32 [ 0, %0 ], [ %b_.1, %14 ]         ; [#uses=4 type=i32]
  %tmp.8 = icmp slt i32 %b_, %b, !dbg !160        ; [#uses=1 type=i1] [debug line = 41:16]
  br i1 %tmp.8, label %.preheader2.preheader, label %15, !dbg !160 ; [debug line = 41:16]

.preheader2.preheader:                            ; preds = %1
  %tmp.10 = mul i32 %b_, %tmp., !dbg !152         ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.11 = sext i32 %tmp.10 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.14 = mul i32 %b_, %tmp.13, !dbg !159       ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.15 = sext i32 %tmp.14 to i64, !dbg !159    ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.59 = add i64 %tmp.11, %tmp.58, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.44 = add i64 %tmp.15, %tmp.7, !dbg !159    ; [#uses=1 type=i64] [debug line = 72:87]
  br label %.preheader2, !dbg !161                ; [debug line = 44:21]

.preheader2:                                      ; preds = %13, %.preheader2.preheader
  %o_d = phi i32 [ %o_d.1, %13 ], [ 0, %.preheader2.preheader ] ; [#uses=5 type=i32]
  %tmp.16 = icmp slt i32 %o_d, %od, !dbg !161     ; [#uses=1 type=i1] [debug line = 44:21]
  br i1 %tmp.16, label %.preheader1.preheader, label %14, !dbg !161 ; [debug line = 44:21]

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp.17 = zext i32 %o_d to i64, !dbg !143       ; [#uses=1 type=i64] [debug line = 53:86]
  %tmp.19 = add i64 %tmp.18, %tmp.17, !dbg !143   ; [#uses=1 type=i64] [debug line = 53:86]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.19, !dbg !143 ; [#uses=1 type=float*] [debug line = 53:86]
  %tmp.22 = mul i32 %tmp.21, %o_d, !dbg !152      ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.23 = sext i32 %tmp.22 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.25 = mul i32 %tmp.24, %o_d, !dbg !159      ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.26 = sext i32 %tmp.25 to i64, !dbg !159    ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.64 = add i64 %tmp.3, %tmp.23, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.45 = add i64 %tmp.44, %tmp.26, !dbg !159   ; [#uses=1 type=i64] [debug line = 72:87]
  br label %.preheader1, !dbg !162                ; [debug line = 47:23]

.preheader1:                                      ; preds = %12, %.preheader1.preheader
  %o_y = phi i32 [ %o_y.1, %12 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %tmp.27 = icmp slt i32 %o_y, %oy, !dbg !162     ; [#uses=1 type=i1] [debug line = 47:23]
  br i1 %tmp.27, label %.preheader.preheader, label %13, !dbg !162 ; [debug line = 47:23]

.preheader.preheader:                             ; preds = %.preheader1
  %i_y = mul nsw i32 %o_y, %s, !dbg !163          ; [#uses=2 type=i32] [debug line = 61:42]
  %tmp.28 = add nsw i32 %i_y, %k, !dbg !163       ; [#uses=1 type=i32] [debug line = 61:42]
  %tmp.29 = mul nsw i32 %o_y, %ox, !dbg !159      ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.30 = sext i32 %tmp.29 to i64, !dbg !159    ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.46 = add i64 %tmp.45, %tmp.30, !dbg !159   ; [#uses=1 type=i64] [debug line = 72:87]
  br label %.preheader, !dbg !164                 ; [debug line = 50:25]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %o_x = phi i32 [ %o_x.1, %11 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %tmp.31 = icmp slt i32 %o_x, %ox, !dbg !164     ; [#uses=1 type=i1] [debug line = 50:25]
  br i1 %tmp.31, label %2, label %12, !dbg !164   ; [debug line = 50:25]

; <label>:2                                       ; preds = %.preheader
  %output_element = load float* %mem.addr, align 4, !dbg !143 ; [#uses=1 type=float] [debug line = 53:86]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !165), !dbg !143 ; [debug line = 53:86] [debug variable = output_element]
  %i_x = mul nsw i32 %o_x, %s, !dbg !166          ; [#uses=2 type=i32] [debug line = 64:44]
  %tmp.32 = add nsw i32 %i_x, %k, !dbg !166       ; [#uses=1 type=i32] [debug line = 64:44]
  br label %3, !dbg !167                          ; [debug line = 58:27]

; <label>:3                                       ; preds = %10, %2
  %tmp.33 = phi float [ %output_element, %2 ], [ %tmp.48.lcssa, %10 ] ; [#uses=2 type=float]
  %i_d = phi i32 [ 0, %2 ], [ %i_d.1, %10 ]       ; [#uses=4 type=i32]
  %tmp.34 = icmp slt i32 %i_d, %id, !dbg !167     ; [#uses=1 type=i1] [debug line = 58:27]
  br i1 %tmp.34, label %4, label %11, !dbg !167   ; [debug line = 58:27]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !168), !dbg !163 ; [debug line = 61:42] [debug variable = i_y]
  %tmp.36 = mul i32 %i_d, %tmp.35, !dbg !152      ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.37 = sext i32 %tmp.36 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.39 = mul i32 %i_d, %tmp.38, !dbg !152      ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.40 = sext i32 %tmp.39 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.60 = add i64 %tmp.37, %tmp.59, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.65 = add i64 %tmp.40, %tmp.64, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  br label %5, !dbg !163                          ; [debug line = 61:42]

; <label>:5                                       ; preds = %9, %4
  %tmp.48 = phi float [ %tmp.33, %4 ], [ %tmp.54.lcssa, %9 ] ; [#uses=2 type=float]
  %i_y1 = phi i32 [ %i_y, %4 ], [ %i_y.1, %9 ]    ; [#uses=3 type=i32]
  %iiy = phi i32 [ 0, %4 ], [ %iiy.1, %9 ]        ; [#uses=2 type=i32]
  %tmp.49 = icmp slt i32 %i_y1, %tmp.28, !dbg !163 ; [#uses=1 type=i1] [debug line = 61:42]
  br i1 %tmp.49, label %6, label %10, !dbg !163   ; [debug line = 61:42]

; <label>:6                                       ; preds = %5
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !169), !dbg !166 ; [debug line = 64:44] [debug variable = i_x]
  %tmp.50 = mul nsw i32 %i_y1, %ix, !dbg !152     ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.51 = sext i32 %tmp.50 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.52 = mul nsw i32 %iiy, %k, !dbg !152       ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.53 = sext i32 %tmp.52 to i64, !dbg !152    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.61 = add i64 %tmp.51, %tmp.60, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.66 = add i64 %tmp.53, %tmp.65, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  br label %7, !dbg !166                          ; [debug line = 64:44]

; <label>:7                                       ; preds = %8, %6
  %tmp.54 = phi float [ %tmp.48, %6 ], [ %output_element.1, %8 ] ; [#uses=2 type=float]
  %i_x1 = phi i32 [ %i_x, %6 ], [ %i_x.1, %8 ]    ; [#uses=3 type=i32]
  %iix = phi i32 [ 0, %6 ], [ %iix.1, %8 ]        ; [#uses=2 type=i32]
  %tmp.55 = icmp slt i32 %i_x1, %tmp.32, !dbg !166 ; [#uses=1 type=i1] [debug line = 64:44]
  br i1 %tmp.55, label %8, label %9, !dbg !166    ; [debug line = 64:44]

; <label>:8                                       ; preds = %7
  %tmp.56 = sext i32 %i_x1 to i64, !dbg !152      ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.62 = add i64 %tmp.56, %tmp.61, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.62, !dbg !152 ; [#uses=1 type=float*] [debug line = 66:17]
  %mem.load = load float* %mem.addr.2, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 66:17]
  %tmp.63 = sext i32 %iix to i64, !dbg !152       ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.67 = add i64 %tmp.63, %tmp.66, !dbg !152   ; [#uses=1 type=i64] [debug line = 66:17]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.67, !dbg !152 ; [#uses=1 type=float*] [debug line = 66:17]
  %mem.load.1 = load float* %mem.addr.3, align 4, !dbg !152 ; [#uses=1 type=float] [debug line = 66:17]
  %tmp.68 = fmul float %mem.load, %mem.load.1, !dbg !152 ; [#uses=1 type=float] [debug line = 66:17]
  %output_element.1 = fadd float %tmp.54, %tmp.68, !dbg !152 ; [#uses=1 type=float] [debug line = 66:17]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !165), !dbg !152 ; [debug line = 66:17] [debug variable = output_element]
  %i_x.1 = add nsw i32 %i_x1, 1, !dbg !170        ; [#uses=1 type=i32] [debug line = 64:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x.1}, i64 0, metadata !169), !dbg !170 ; [debug line = 64:61] [debug variable = i_x]
  %iix.1 = add nsw i32 %iix, 1, !dbg !170         ; [#uses=1 type=i32] [debug line = 64:61]
  call void @llvm.dbg.value(metadata !{i32 %iix.1}, i64 0, metadata !171), !dbg !170 ; [debug line = 64:61] [debug variable = iix]
  br label %7, !dbg !170                          ; [debug line = 64:61]

; <label>:9                                       ; preds = %7
  %tmp.54.lcssa = phi float [ %tmp.54, %7 ]       ; [#uses=1 type=float]
  %i_y.1 = add nsw i32 %i_y1, 1, !dbg !172        ; [#uses=1 type=i32] [debug line = 61:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y.1}, i64 0, metadata !168), !dbg !172 ; [debug line = 61:59] [debug variable = i_y]
  %iiy.1 = add nsw i32 %iiy, 1, !dbg !172         ; [#uses=1 type=i32] [debug line = 61:59]
  call void @llvm.dbg.value(metadata !{i32 %iiy.1}, i64 0, metadata !173), !dbg !172 ; [debug line = 61:59] [debug variable = iiy]
  br label %5, !dbg !172                          ; [debug line = 61:59]

; <label>:10                                      ; preds = %5
  %tmp.48.lcssa = phi float [ %tmp.48, %5 ]       ; [#uses=1 type=float]
  %i_d.1 = add nsw i32 %i_d, 1, !dbg !174         ; [#uses=1 type=i32] [debug line = 58:39]
  call void @llvm.dbg.value(metadata !{i32 %i_d.1}, i64 0, metadata !175), !dbg !174 ; [debug line = 58:39] [debug variable = i_d]
  br label %3, !dbg !174                          ; [debug line = 58:39]

; <label>:11                                      ; preds = %3
  %tmp.33.lcssa = phi float [ %tmp.33, %3 ]       ; [#uses=2 type=float]
  %tmp.41 = fcmp ogt float %tmp.33.lcssa, 0.000000e+00, !dbg !176 ; [#uses=1 type=i1] [debug line = 215:7@72:87]
  %tmp.42 = select i1 %tmp.41, float %tmp.33.lcssa, float 0.000000e+00, !dbg !159 ; [#uses=1 type=float] [debug line = 72:87]
  %tmp.43 = zext i32 %o_x to i64, !dbg !159       ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.47 = add i64 %tmp.46, %tmp.43, !dbg !159   ; [#uses=1 type=i64] [debug line = 72:87]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.47, !dbg !159 ; [#uses=1 type=float*] [debug line = 72:87]
  store float %tmp.42, float* %mem.addr.1, align 4, !dbg !159 ; [debug line = 72:87]
  %o_x.1 = add nsw i32 %o_x, 1, !dbg !179         ; [#uses=1 type=i32] [debug line = 50:37]
  call void @llvm.dbg.value(metadata !{i32 %o_x.1}, i64 0, metadata !180), !dbg !179 ; [debug line = 50:37] [debug variable = o_x]
  br label %.preheader, !dbg !179                 ; [debug line = 50:37]

; <label>:12                                      ; preds = %.preheader
  %o_y.1 = add nsw i32 %o_y, 1, !dbg !181         ; [#uses=1 type=i32] [debug line = 47:35]
  call void @llvm.dbg.value(metadata !{i32 %o_y.1}, i64 0, metadata !182), !dbg !181 ; [debug line = 47:35] [debug variable = o_y]
  br label %.preheader1, !dbg !181                ; [debug line = 47:35]

; <label>:13                                      ; preds = %.preheader1
  %o_d.1 = add nsw i32 %o_d, 1, !dbg !183         ; [#uses=1 type=i32] [debug line = 44:33]
  call void @llvm.dbg.value(metadata !{i32 %o_d.1}, i64 0, metadata !184), !dbg !183 ; [debug line = 44:33] [debug variable = o_d]
  br label %.preheader2, !dbg !183                ; [debug line = 44:33]

; <label>:14                                      ; preds = %.preheader2
  %b_.1 = add nsw i32 %b_, 1, !dbg !185           ; [#uses=1 type=i32] [debug line = 41:25]
  call void @llvm.dbg.value(metadata !{i32 %b_.1}, i64 0, metadata !186), !dbg !185 ; [debug line = 41:25] [debug variable = b_]
  br label %1, !dbg !185                          ; [debug line = 41:25]

; <label>:15                                      ; preds = %1
  ret void, !dbg !187                             ; [debug line = 77:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=12]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=0]
declare i32 @_ssdm_GepAggregate(...)

; [#uses=0]
declare i32 @_ssdm_ArrayAggregate(...)

; [#uses=0]
declare i32 @._ssdm_op_SpecChannel(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/hlsIP_adm-8k5/conv_proj/solution1/.autopilot/db/conv_layer.pragma.2.cpp", metadata !"/thesis0/pc/Graham/galapagos_wip", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, null, null, metadata !13, i32 17} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../hlsTest/conv_layer.cpp", metadata !"/thesis0/pc/Graham/galapagos_wip", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 353, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !22, null, metadata !13, i32 211} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786489, null, metadata !"std", metadata !17, i32 39} ; [ DW_TAG_namespace ]
!17 = metadata !{i32 786473, metadata !"/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/thesis0/pc/Graham/galapagos_wip", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !20, metadata !20}
!20 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786479, null, metadata !"_Tp", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 76, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h", metadata !"/thesis0/pc/Graham/galapagos_wip", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 111, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 117, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 120, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !33, i32 70, metadata !34, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786489, null, metadata !"std", metadata !33, i32 47} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new", metadata !"/thesis0/pc/Graham/galapagos_wip", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786434, metadata !32, metadata !"nothrow_t", metadata !33, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!36 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @conv_layer, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const float &", metadata !"const float &"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"__a", metadata !"__b"}
!49 = metadata !{metadata !50}
!50 = metadata !{i32 0, i32 31, metadata !51}
!51 = metadata !{metadata !52}
!52 = metadata !{metadata !"mem", metadata !53, metadata !"float", i32 0, i32 31}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 0, i32 1}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 31, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"input_offset", metadata !59, metadata !"int", i32 0, i32 31}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, i32 0}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"output_offset", metadata !59, metadata !"int", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 31, metadata !67}
!67 = metadata !{metadata !68}
!68 = metadata !{metadata !"b", metadata !59, metadata !"int", i32 0, i32 31}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 31, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"od", metadata !59, metadata !"int", i32 0, i32 31}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 31, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"ox", metadata !59, metadata !"int", i32 0, i32 31}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"oy", metadata !59, metadata !"int", i32 0, i32 31}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"id", metadata !59, metadata !"int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 31, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"ix", metadata !59, metadata !"int", i32 0, i32 31}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 31, metadata !91}
!91 = metadata !{metadata !92}
!92 = metadata !{metadata !"iy", metadata !59, metadata !"int", i32 0, i32 31}
!93 = metadata !{metadata !94}
!94 = metadata !{i32 0, i32 31, metadata !95}
!95 = metadata !{metadata !96}
!96 = metadata !{metadata !"s", metadata !59, metadata !"int", i32 0, i32 31}
!97 = metadata !{metadata !98}
!98 = metadata !{i32 0, i32 31, metadata !99}
!99 = metadata !{metadata !100}
!100 = metadata !{metadata !"k", metadata !59, metadata !"int", i32 0, i32 31}
!101 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!102 = metadata !{i32 5, i32 25, metadata !5, null}
!103 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554438, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 6, i32 21, metadata !5, null}
!105 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331655, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!106 = metadata !{i32 7, i32 21, metadata !5, null}
!107 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 67108872, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!108 = metadata !{i32 8, i32 27, metadata !5, null}
!109 = metadata !{i32 786689, metadata !5, metadata !"od", metadata !6, i32 83886089, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!110 = metadata !{i32 9, i32 27, metadata !5, null}
!111 = metadata !{i32 786689, metadata !5, metadata !"ox", metadata !6, i32 100663306, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!112 = metadata !{i32 10, i32 27, metadata !5, null}
!113 = metadata !{i32 786689, metadata !5, metadata !"oy", metadata !6, i32 117440523, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!114 = metadata !{i32 11, i32 27, metadata !5, null}
!115 = metadata !{i32 786689, metadata !5, metadata !"id", metadata !6, i32 134217740, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!116 = metadata !{i32 12, i32 27, metadata !5, null}
!117 = metadata !{i32 786689, metadata !5, metadata !"ix", metadata !6, i32 150994957, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 13, i32 27, metadata !5, null}
!119 = metadata !{i32 786689, metadata !5, metadata !"iy", metadata !6, i32 167772174, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!120 = metadata !{i32 14, i32 27, metadata !5, null}
!121 = metadata !{i32 786689, metadata !5, metadata !"s", metadata !6, i32 184549391, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!122 = metadata !{i32 15, i32 27, metadata !5, null}
!123 = metadata !{i32 786689, metadata !5, metadata !"k", metadata !6, i32 201326608, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!124 = metadata !{i32 16, i32 27, metadata !5, null}
!125 = metadata !{i32 20, i32 1, metadata !126, null}
!126 = metadata !{i32 786443, metadata !5, i32 17, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!127 = metadata !{i32 22, i32 1, metadata !126, null}
!128 = metadata !{i32 23, i32 1, metadata !126, null}
!129 = metadata !{i32 24, i32 1, metadata !126, null}
!130 = metadata !{i32 25, i32 1, metadata !126, null}
!131 = metadata !{i32 26, i32 1, metadata !126, null}
!132 = metadata !{i32 27, i32 1, metadata !126, null}
!133 = metadata !{i32 28, i32 1, metadata !126, null}
!134 = metadata !{i32 29, i32 1, metadata !126, null}
!135 = metadata !{i32 30, i32 1, metadata !126, null}
!136 = metadata !{i32 31, i32 1, metadata !126, null}
!137 = metadata !{i32 32, i32 1, metadata !126, null}
!138 = metadata !{i32 33, i32 1, metadata !126, null}
!139 = metadata !{i32 35, i32 29, metadata !126, null}
!140 = metadata !{i32 786688, metadata !126, metadata !"num_weights", metadata !6, i32 35, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!141 = metadata !{i32 786688, metadata !126, metadata !"num_biases", metadata !6, i32 36, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!142 = metadata !{i32 36, i32 22, metadata !126, null}
!143 = metadata !{i32 53, i32 86, metadata !144, null}
!144 = metadata !{i32 786443, metadata !145, i32 51, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!145 = metadata !{i32 786443, metadata !146, i32 50, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!146 = metadata !{i32 786443, metadata !147, i32 48, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !148, i32 47, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 786443, metadata !149, i32 45, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!149 = metadata !{i32 786443, metadata !150, i32 44, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!150 = metadata !{i32 786443, metadata !151, i32 42, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!151 = metadata !{i32 786443, metadata !126, i32 41, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!152 = metadata !{i32 66, i32 17, metadata !153, null}
!153 = metadata !{i32 786443, metadata !154, i32 65, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 786443, metadata !155, i32 64, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 786443, metadata !156, i32 62, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!156 = metadata !{i32 786443, metadata !157, i32 61, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!157 = metadata !{i32 786443, metadata !158, i32 59, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786443, metadata !144, i32 58, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!159 = metadata !{i32 72, i32 87, metadata !144, null}
!160 = metadata !{i32 41, i32 16, metadata !151, null}
!161 = metadata !{i32 44, i32 21, metadata !149, null}
!162 = metadata !{i32 47, i32 23, metadata !147, null}
!163 = metadata !{i32 61, i32 42, metadata !156, null}
!164 = metadata !{i32 50, i32 25, metadata !145, null}
!165 = metadata !{i32 786688, metadata !144, metadata !"output_element", metadata !6, i32 53, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!166 = metadata !{i32 64, i32 44, metadata !154, null}
!167 = metadata !{i32 58, i32 27, metadata !158, null}
!168 = metadata !{i32 786688, metadata !156, metadata !"i_y", metadata !6, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!169 = metadata !{i32 786688, metadata !154, metadata !"i_x", metadata !6, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!170 = metadata !{i32 64, i32 61, metadata !154, null}
!171 = metadata !{i32 786688, metadata !154, metadata !"iix", metadata !6, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!172 = metadata !{i32 61, i32 59, metadata !156, null}
!173 = metadata !{i32 786688, metadata !156, metadata !"iiy", metadata !6, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!174 = metadata !{i32 58, i32 39, metadata !158, null}
!175 = metadata !{i32 786688, metadata !158, metadata !"i_d", metadata !6, i32 58, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!176 = metadata !{i32 215, i32 7, metadata !177, metadata !159}
!177 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !178, i32 15} ; [ DW_TAG_lexical_block ]
!178 = metadata !{i32 786473, metadata !"/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/thesis0/pc/Graham/galapagos_wip", null} ; [ DW_TAG_file_type ]
!179 = metadata !{i32 50, i32 37, metadata !145, null}
!180 = metadata !{i32 786688, metadata !145, metadata !"o_x", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!181 = metadata !{i32 47, i32 35, metadata !147, null}
!182 = metadata !{i32 786688, metadata !147, metadata !"o_y", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!183 = metadata !{i32 44, i32 33, metadata !149, null}
!184 = metadata !{i32 786688, metadata !149, metadata !"o_d", metadata !6, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!185 = metadata !{i32 41, i32 25, metadata !151, null}
!186 = metadata !{i32 786688, metadata !151, metadata !"b_", metadata !6, i32 41, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!187 = metadata !{i32 77, i32 1, metadata !126, null}
