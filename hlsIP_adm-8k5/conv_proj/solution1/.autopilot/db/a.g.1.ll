; ModuleID = '/nfs/ug/thesis/thesis0/pc/Graham/galapagos_wip/hlsIP_adm-8k5/conv_proj/solution1/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@conv_layer.str = internal unnamed_addr constant [11 x i8] c"conv_layer\00" ; [#uses=1 type=[11 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=43]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @conv_layer(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([11 x i8]* @conv_layer.str) nounwind
  call void @llvm.dbg.value(metadata !{float* %mem}, i64 0, metadata !49), !dbg !50 ; [debug line = 5:25] [debug variable = mem]
  call void @llvm.dbg.value(metadata !{i32 %input_offset}, i64 0, metadata !51), !dbg !52 ; [debug line = 6:21] [debug variable = input_offset]
  call void @llvm.dbg.value(metadata !{i32 %output_offset}, i64 0, metadata !53), !dbg !54 ; [debug line = 7:21] [debug variable = output_offset]
  call void @llvm.dbg.value(metadata !{i32 %b}, i64 0, metadata !55), !dbg !56 ; [debug line = 8:27] [debug variable = b]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !57), !dbg !58 ; [debug line = 9:27] [debug variable = od]
  call void @llvm.dbg.value(metadata !{i32 %ox}, i64 0, metadata !59), !dbg !60 ; [debug line = 10:27] [debug variable = ox]
  call void @llvm.dbg.value(metadata !{i32 %oy}, i64 0, metadata !61), !dbg !62 ; [debug line = 11:27] [debug variable = oy]
  call void @llvm.dbg.value(metadata !{i32 %id}, i64 0, metadata !63), !dbg !64 ; [debug line = 12:27] [debug variable = id]
  call void @llvm.dbg.value(metadata !{i32 %ix}, i64 0, metadata !65), !dbg !66 ; [debug line = 13:27] [debug variable = ix]
  call void @llvm.dbg.value(metadata !{i32 %iy}, i64 0, metadata !67), !dbg !68 ; [debug line = 14:27] [debug variable = iy]
  call void @llvm.dbg.value(metadata !{i32 %s}, i64 0, metadata !69), !dbg !70 ; [debug line = 15:27] [debug variable = s]
  call void @llvm.dbg.value(metadata !{i32 %k}, i64 0, metadata !71), !dbg !72 ; [debug line = 16:27] [debug variable = k]
  call void (...)* @_ssdm_op_SpecInterface(float* %mem, i8* getelementptr inbounds ([6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !73 ; [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %b, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !75 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %od, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !76 ; [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ox, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !77 ; [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %oy, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !78 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %id, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !79 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %ix, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !80 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %iy, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !81 ; [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %s, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !82 ; [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %k, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !83 ; [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %input_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !84 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %output_offset, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !86 ; [debug line = 33:1]
  %tmp = mul i32 %id, %od, !dbg !87               ; [#uses=1 type=i32] [debug line = 35:29]
  %tmp.1 = mul i32 %tmp, %k, !dbg !87             ; [#uses=1 type=i32] [debug line = 35:29]
  %num_weights = mul i32 %tmp.1, %k, !dbg !87     ; [#uses=1 type=i32] [debug line = 35:29]
  call void @llvm.dbg.value(metadata !{i32 %num_weights}, i64 0, metadata !88), !dbg !87 ; [debug line = 35:29] [debug variable = num_weights]
  call void @llvm.dbg.value(metadata !{i32 %od}, i64 0, metadata !89), !dbg !90 ; [debug line = 36:22] [debug variable = num_biases]
  %tmp.2 = sext i32 %input_offset to i64, !dbg !91 ; [#uses=1 type=i64] [debug line = 53:86]
  %tmp.3 = lshr i64 %tmp.2, 2, !dbg !91           ; [#uses=3 type=i64] [debug line = 53:86]
  %tmp.4 = sext i32 %num_weights to i64, !dbg !91 ; [#uses=2 type=i64] [debug line = 53:86]
  %tmp.5 = sext i32 %od to i64, !dbg !100         ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.6 = sext i32 %output_offset to i64, !dbg !107 ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.7 = lshr i64 %tmp.6, 2, !dbg !107          ; [#uses=1 type=i64] [debug line = 72:87]
  br label %1, !dbg !108                          ; [debug line = 41:16]

; <label>:1                                       ; preds = %14, %0
  %b_ = phi i32 [ 0, %0 ], [ %b_.1, %14 ]         ; [#uses=4 type=i32]
  %tmp.8 = icmp slt i32 %b_, %b, !dbg !108        ; [#uses=1 type=i1] [debug line = 41:16]
  br i1 %tmp.8, label %.preheader2.preheader, label %15, !dbg !108 ; [debug line = 41:16]

.preheader2.preheader:                            ; preds = %1
  %tmp.9 = mul i32 %ix, %id, !dbg !100            ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.10 = mul i32 %tmp.9, %iy, !dbg !100        ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.11 = mul i32 %tmp.10, %b_, !dbg !100       ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.12 = sext i32 %tmp.11 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.13 = mul i32 %ox, %od, !dbg !107           ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.14 = mul i32 %tmp.13, %oy, !dbg !107       ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.15 = mul i32 %tmp.14, %b_, !dbg !107       ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.16 = sext i32 %tmp.15 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 72:87]
  br label %.preheader2, !dbg !109                ; [debug line = 44:21]

.preheader2:                                      ; preds = %13, %.preheader2.preheader
  %o_d = phi i32 [ %o_d.1, %13 ], [ 0, %.preheader2.preheader ] ; [#uses=5 type=i32]
  %tmp.17 = icmp slt i32 %o_d, %od, !dbg !109     ; [#uses=1 type=i1] [debug line = 44:21]
  br i1 %tmp.17, label %.preheader1.preheader, label %14, !dbg !109 ; [debug line = 44:21]

.preheader1.preheader:                            ; preds = %.preheader2
  %tmp.18 = sext i32 %o_d to i64, !dbg !91        ; [#uses=1 type=i64] [debug line = 53:86]
  %tmp.19 = add i64 %tmp.4, %tmp.3, !dbg !91      ; [#uses=1 type=i64] [debug line = 53:86]
  %tmp.20 = add i64 %tmp.19, %tmp.18, !dbg !91    ; [#uses=1 type=i64] [debug line = 53:86]
  %mem.addr = getelementptr inbounds float* %mem, i64 %tmp.20, !dbg !91 ; [#uses=1 type=float*] [debug line = 53:86]
  %tmp.21 = mul i32 %k, %id, !dbg !100            ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.22 = mul i32 %tmp.21, %k, !dbg !100        ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.23 = mul i32 %tmp.22, %o_d, !dbg !100      ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.24 = sext i32 %tmp.23 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.25 = mul i32 %oy, %ox, !dbg !107           ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.26 = mul i32 %tmp.25, %o_d, !dbg !107      ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.27 = sext i32 %tmp.26 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 72:87]
  br label %.preheader1, !dbg !110                ; [debug line = 47:23]

.preheader1:                                      ; preds = %12, %.preheader1.preheader
  %o_y = phi i32 [ %o_y.1, %12 ], [ 0, %.preheader1.preheader ] ; [#uses=4 type=i32]
  %tmp.29 = icmp slt i32 %o_y, %oy, !dbg !110     ; [#uses=1 type=i1] [debug line = 47:23]
  br i1 %tmp.29, label %.preheader.preheader, label %13, !dbg !110 ; [debug line = 47:23]

.preheader.preheader:                             ; preds = %.preheader1
  %i_y = mul nsw i32 %o_y, %s, !dbg !111          ; [#uses=2 type=i32] [debug line = 61:42]
  %tmp.31 = add nsw i32 %i_y, %k, !dbg !111       ; [#uses=1 type=i32] [debug line = 61:42]
  %tmp.32 = mul nsw i32 %o_y, %ox, !dbg !107      ; [#uses=1 type=i32] [debug line = 72:87]
  %tmp.33 = sext i32 %tmp.32 to i64, !dbg !107    ; [#uses=1 type=i64] [debug line = 72:87]
  br label %.preheader, !dbg !112                 ; [debug line = 50:25]

.preheader:                                       ; preds = %11, %.preheader.preheader
  %o_x = phi i32 [ %o_x.1, %11 ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %tmp.35 = icmp slt i32 %o_x, %ox, !dbg !112     ; [#uses=1 type=i1] [debug line = 50:25]
  br i1 %tmp.35, label %2, label %12, !dbg !112   ; [debug line = 50:25]

; <label>:2                                       ; preds = %.preheader
  %output_element = load float* %mem.addr, align 4, !dbg !91 ; [#uses=2 type=float] [debug line = 53:86]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %output_element) nounwind
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element}, i64 0, metadata !113), !dbg !91 ; [debug line = 53:86] [debug variable = output_element]
  %i_x = mul nsw i32 %o_x, %s, !dbg !114          ; [#uses=2 type=i32] [debug line = 64:44]
  %tmp.37 = add nsw i32 %i_x, %k, !dbg !114       ; [#uses=1 type=i32] [debug line = 64:44]
  br label %3, !dbg !115                          ; [debug line = 58:27]

; <label>:3                                       ; preds = %10, %2
  %tmp.39 = phi float [ %output_element, %2 ], [ %.lcssa4, %10 ] ; [#uses=2 type=float]
  %i_d = phi i32 [ 0, %2 ], [ %i_d.1, %10 ]       ; [#uses=4 type=i32]
  %tmp.40 = icmp slt i32 %i_d, %id, !dbg !115     ; [#uses=1 type=i1] [debug line = 58:27]
  br i1 %tmp.40, label %4, label %11, !dbg !115   ; [debug line = 58:27]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i32 %i_y}, i64 0, metadata !116), !dbg !111 ; [debug line = 61:42] [debug variable = i_y]
  %tmp.41 = mul i32 %iy, %ix, !dbg !100           ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.42 = mul i32 %tmp.41, %i_d, !dbg !100      ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.43 = sext i32 %tmp.42 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.44 = mul i32 %k, %k, !dbg !100             ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.45 = mul i32 %tmp.44, %i_d, !dbg !100      ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.46 = sext i32 %tmp.45 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  br label %5, !dbg !111                          ; [debug line = 61:42]

; <label>:5                                       ; preds = %9, %4
  %tmp.55 = phi float [ %tmp.39, %4 ], [ %.lcssa, %9 ] ; [#uses=2 type=float]
  %i_y1 = phi i32 [ %i_y, %4 ], [ %i_y.2, %9 ]    ; [#uses=3 type=i32]
  %iiy = phi i32 [ 0, %4 ], [ %iiy.1, %9 ]        ; [#uses=2 type=i32]
  %tmp.56 = icmp slt i32 %i_y1, %tmp.31, !dbg !111 ; [#uses=1 type=i1] [debug line = 61:42]
  br i1 %tmp.56, label %6, label %10, !dbg !111   ; [debug line = 61:42]

; <label>:6                                       ; preds = %5
  call void @llvm.dbg.value(metadata !{i32 %i_x}, i64 0, metadata !117), !dbg !114 ; [debug line = 64:44] [debug variable = i_x]
  %tmp.57 = mul nsw i32 %i_y1, %ix, !dbg !100     ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.58 = sext i32 %tmp.57 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.59 = mul nsw i32 %iiy, %k, !dbg !100       ; [#uses=1 type=i32] [debug line = 66:17]
  %tmp.60 = sext i32 %tmp.59 to i64, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  br label %7, !dbg !114                          ; [debug line = 64:44]

; <label>:7                                       ; preds = %8, %6
  %tmp.62 = phi float [ %tmp.55, %6 ], [ %output_element.1, %8 ] ; [#uses=2 type=float]
  %i_x1 = phi i32 [ %i_x, %6 ], [ %i_x.2, %8 ]    ; [#uses=3 type=i32]
  %iix = phi i32 [ 0, %6 ], [ %iix.1, %8 ]        ; [#uses=2 type=i32]
  %tmp.63 = icmp slt i32 %i_x1, %tmp.37, !dbg !114 ; [#uses=1 type=i1] [debug line = 64:44]
  br i1 %tmp.63, label %8, label %9, !dbg !114    ; [debug line = 64:44]

; <label>:8                                       ; preds = %7
  %tmp.64 = sext i32 %i_x1 to i64, !dbg !100      ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.65 = add i64 %tmp.5, %tmp.3, !dbg !100     ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.66 = add i64 %tmp.65, %tmp.4, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.67 = add i64 %tmp.66, %tmp.12, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.68 = add i64 %tmp.67, %tmp.43, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.69 = add i64 %tmp.68, %tmp.58, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.70 = add i64 %tmp.69, %tmp.64, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %mem.addr.2 = getelementptr inbounds float* %mem, i64 %tmp.70, !dbg !100 ; [#uses=1 type=float*] [debug line = 66:17]
  %mem.load = load float* %mem.addr.2, align 4, !dbg !100 ; [#uses=2 type=float] [debug line = 66:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %mem.load) nounwind
  %tmp.71 = sext i32 %iix to i64, !dbg !100       ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.72 = add i64 %tmp.24, %tmp.3, !dbg !100    ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.73 = add i64 %tmp.72, %tmp.46, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.74 = add i64 %tmp.73, %tmp.60, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %tmp.75 = add i64 %tmp.74, %tmp.71, !dbg !100   ; [#uses=1 type=i64] [debug line = 66:17]
  %mem.addr.3 = getelementptr inbounds float* %mem, i64 %tmp.75, !dbg !100 ; [#uses=1 type=float*] [debug line = 66:17]
  %mem.load.1 = load float* %mem.addr.3, align 4, !dbg !100 ; [#uses=2 type=float] [debug line = 66:17]
  call void (...)* @_ssdm_SpecKeepArrayLoad(float %mem.load.1) nounwind
  %tmp.76 = fmul float %mem.load, %mem.load.1, !dbg !100 ; [#uses=1 type=float] [debug line = 66:17]
  %output_element.1 = fadd float %tmp.62, %tmp.76, !dbg !100 ; [#uses=1 type=float] [debug line = 66:17]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  call void @llvm.dbg.value(metadata !{float %output_element.1}, i64 0, metadata !113), !dbg !100 ; [debug line = 66:17] [debug variable = output_element]
  %i_x.2 = add nsw i32 %i_x1, 1, !dbg !118        ; [#uses=1 type=i32] [debug line = 64:61]
  call void @llvm.dbg.value(metadata !{i32 %i_x.2}, i64 0, metadata !117), !dbg !118 ; [debug line = 64:61] [debug variable = i_x]
  %iix.1 = add nsw i32 %iix, 1, !dbg !118         ; [#uses=1 type=i32] [debug line = 64:61]
  call void @llvm.dbg.value(metadata !{i32 %iix.1}, i64 0, metadata !119), !dbg !118 ; [debug line = 64:61] [debug variable = iix]
  br label %7, !dbg !118                          ; [debug line = 64:61]

; <label>:9                                       ; preds = %7
  %.lcssa = phi float [ %tmp.62, %7 ]             ; [#uses=1 type=float]
  %i_y.2 = add nsw i32 %i_y1, 1, !dbg !120        ; [#uses=1 type=i32] [debug line = 61:59]
  call void @llvm.dbg.value(metadata !{i32 %i_y.2}, i64 0, metadata !116), !dbg !120 ; [debug line = 61:59] [debug variable = i_y]
  %iiy.1 = add nsw i32 %iiy, 1, !dbg !120         ; [#uses=1 type=i32] [debug line = 61:59]
  call void @llvm.dbg.value(metadata !{i32 %iiy.1}, i64 0, metadata !121), !dbg !120 ; [debug line = 61:59] [debug variable = iiy]
  br label %5, !dbg !120                          ; [debug line = 61:59]

; <label>:10                                      ; preds = %5
  %.lcssa4 = phi float [ %tmp.55, %5 ]            ; [#uses=1 type=float]
  %i_d.1 = add nsw i32 %i_d, 1, !dbg !122         ; [#uses=1 type=i32] [debug line = 58:39]
  call void @llvm.dbg.value(metadata !{i32 %i_d.1}, i64 0, metadata !123), !dbg !122 ; [debug line = 58:39] [debug variable = i_d]
  br label %3, !dbg !122                          ; [debug line = 58:39]

; <label>:11                                      ; preds = %3
  %.lcssa5 = phi float [ %tmp.39, %3 ]            ; [#uses=2 type=float]
  %tmp.47 = fcmp ogt float %.lcssa5, 0.000000e+00, !dbg !124 ; [#uses=1 type=i1] [debug line = 215:7@72:87]
  %tmp.48 = select i1 %tmp.47, float %.lcssa5, float 0.000000e+00, !dbg !107 ; [#uses=1 type=float] [debug line = 72:87]
  %tmp.49 = sext i32 %o_x to i64, !dbg !107       ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.50 = add i64 %tmp.16, %tmp.7, !dbg !107    ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.51 = add i64 %tmp.50, %tmp.27, !dbg !107   ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.52 = add i64 %tmp.51, %tmp.33, !dbg !107   ; [#uses=1 type=i64] [debug line = 72:87]
  %tmp.53 = add i64 %tmp.52, %tmp.49, !dbg !107   ; [#uses=1 type=i64] [debug line = 72:87]
  %mem.addr.1 = getelementptr inbounds float* %mem, i64 %tmp.53, !dbg !107 ; [#uses=1 type=float*] [debug line = 72:87]
  store float %tmp.48, float* %mem.addr.1, align 4, !dbg !107 ; [debug line = 72:87]
  %o_x.1 = add nsw i32 %o_x, 1, !dbg !127         ; [#uses=1 type=i32] [debug line = 50:37]
  call void @llvm.dbg.value(metadata !{i32 %o_x.1}, i64 0, metadata !128), !dbg !127 ; [debug line = 50:37] [debug variable = o_x]
  br label %.preheader, !dbg !127                 ; [debug line = 50:37]

; <label>:12                                      ; preds = %.preheader
  %o_y.1 = add nsw i32 %o_y, 1, !dbg !129         ; [#uses=1 type=i32] [debug line = 47:35]
  call void @llvm.dbg.value(metadata !{i32 %o_y.1}, i64 0, metadata !130), !dbg !129 ; [debug line = 47:35] [debug variable = o_y]
  br label %.preheader1, !dbg !129                ; [debug line = 47:35]

; <label>:13                                      ; preds = %.preheader1
  %o_d.1 = add nsw i32 %o_d, 1, !dbg !131         ; [#uses=1 type=i32] [debug line = 44:33]
  call void @llvm.dbg.value(metadata !{i32 %o_d.1}, i64 0, metadata !132), !dbg !131 ; [debug line = 44:33] [debug variable = o_d]
  br label %.preheader2, !dbg !131                ; [debug line = 44:33]

; <label>:14                                      ; preds = %.preheader2
  %b_.1 = add nsw i32 %b_, 1, !dbg !133           ; [#uses=1 type=i32] [debug line = 41:25]
  call void @llvm.dbg.value(metadata !{i32 %b_.1}, i64 0, metadata !134), !dbg !133 ; [debug line = 41:25] [debug variable = b_]
  br label %1, !dbg !133                          ; [debug line = 41:25]

; <label>:15                                      ; preds = %1
  ret void, !dbg !135                             ; [debug line = 77:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=3]
declare void @_ssdm_SpecKeepArrayLoad(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}

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
!49 = metadata !{i32 786689, metadata !5, metadata !"mem", metadata !6, i32 16777221, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!50 = metadata !{i32 5, i32 25, metadata !5, null}
!51 = metadata !{i32 786689, metadata !5, metadata !"input_offset", metadata !6, i32 33554438, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!52 = metadata !{i32 6, i32 21, metadata !5, null}
!53 = metadata !{i32 786689, metadata !5, metadata !"output_offset", metadata !6, i32 50331655, metadata !11, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!54 = metadata !{i32 7, i32 21, metadata !5, null}
!55 = metadata !{i32 786689, metadata !5, metadata !"b", metadata !6, i32 67108872, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!56 = metadata !{i32 8, i32 27, metadata !5, null}
!57 = metadata !{i32 786689, metadata !5, metadata !"od", metadata !6, i32 83886089, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!58 = metadata !{i32 9, i32 27, metadata !5, null}
!59 = metadata !{i32 786689, metadata !5, metadata !"ox", metadata !6, i32 100663306, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!60 = metadata !{i32 10, i32 27, metadata !5, null}
!61 = metadata !{i32 786689, metadata !5, metadata !"oy", metadata !6, i32 117440523, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!62 = metadata !{i32 11, i32 27, metadata !5, null}
!63 = metadata !{i32 786689, metadata !5, metadata !"id", metadata !6, i32 134217740, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!64 = metadata !{i32 12, i32 27, metadata !5, null}
!65 = metadata !{i32 786689, metadata !5, metadata !"ix", metadata !6, i32 150994957, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!66 = metadata !{i32 13, i32 27, metadata !5, null}
!67 = metadata !{i32 786689, metadata !5, metadata !"iy", metadata !6, i32 167772174, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!68 = metadata !{i32 14, i32 27, metadata !5, null}
!69 = metadata !{i32 786689, metadata !5, metadata !"s", metadata !6, i32 184549391, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!70 = metadata !{i32 15, i32 27, metadata !5, null}
!71 = metadata !{i32 786689, metadata !5, metadata !"k", metadata !6, i32 201326608, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!72 = metadata !{i32 16, i32 27, metadata !5, null}
!73 = metadata !{i32 20, i32 1, metadata !74, null}
!74 = metadata !{i32 786443, metadata !5, i32 17, i32 1, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 22, i32 1, metadata !74, null}
!76 = metadata !{i32 23, i32 1, metadata !74, null}
!77 = metadata !{i32 24, i32 1, metadata !74, null}
!78 = metadata !{i32 25, i32 1, metadata !74, null}
!79 = metadata !{i32 26, i32 1, metadata !74, null}
!80 = metadata !{i32 27, i32 1, metadata !74, null}
!81 = metadata !{i32 28, i32 1, metadata !74, null}
!82 = metadata !{i32 29, i32 1, metadata !74, null}
!83 = metadata !{i32 30, i32 1, metadata !74, null}
!84 = metadata !{i32 31, i32 1, metadata !74, null}
!85 = metadata !{i32 32, i32 1, metadata !74, null}
!86 = metadata !{i32 33, i32 1, metadata !74, null}
!87 = metadata !{i32 35, i32 29, metadata !74, null}
!88 = metadata !{i32 786688, metadata !74, metadata !"num_weights", metadata !6, i32 35, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!89 = metadata !{i32 786688, metadata !74, metadata !"num_biases", metadata !6, i32 36, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 36, i32 22, metadata !74, null}
!91 = metadata !{i32 53, i32 86, metadata !92, null}
!92 = metadata !{i32 786443, metadata !93, i32 51, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!93 = metadata !{i32 786443, metadata !94, i32 50, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 786443, metadata !95, i32 48, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!95 = metadata !{i32 786443, metadata !96, i32 47, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !97, i32 45, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 44, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !99, i32 42, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !74, i32 41, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 66, i32 17, metadata !101, null}
!101 = metadata !{i32 786443, metadata !102, i32 65, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!102 = metadata !{i32 786443, metadata !103, i32 64, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 786443, metadata !104, i32 62, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!104 = metadata !{i32 786443, metadata !105, i32 61, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !106, i32 59, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 786443, metadata !92, i32 58, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!107 = metadata !{i32 72, i32 87, metadata !92, null}
!108 = metadata !{i32 41, i32 16, metadata !99, null}
!109 = metadata !{i32 44, i32 21, metadata !97, null}
!110 = metadata !{i32 47, i32 23, metadata !95, null}
!111 = metadata !{i32 61, i32 42, metadata !104, null}
!112 = metadata !{i32 50, i32 25, metadata !93, null}
!113 = metadata !{i32 786688, metadata !92, metadata !"output_element", metadata !6, i32 53, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 64, i32 44, metadata !102, null}
!115 = metadata !{i32 58, i32 27, metadata !106, null}
!116 = metadata !{i32 786688, metadata !104, metadata !"i_y", metadata !6, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 786688, metadata !102, metadata !"i_x", metadata !6, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!118 = metadata !{i32 64, i32 61, metadata !102, null}
!119 = metadata !{i32 786688, metadata !102, metadata !"iix", metadata !6, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!120 = metadata !{i32 61, i32 59, metadata !104, null}
!121 = metadata !{i32 786688, metadata !104, metadata !"iiy", metadata !6, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!122 = metadata !{i32 58, i32 39, metadata !106, null}
!123 = metadata !{i32 786688, metadata !106, metadata !"i_d", metadata !6, i32 58, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!124 = metadata !{i32 215, i32 7, metadata !125, metadata !107}
!125 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !126, i32 15} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 786473, metadata !"/cad1/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/thesis0/pc/Graham/galapagos_wip", null} ; [ DW_TAG_file_type ]
!127 = metadata !{i32 50, i32 37, metadata !93, null}
!128 = metadata !{i32 786688, metadata !93, metadata !"o_x", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!129 = metadata !{i32 47, i32 35, metadata !95, null}
!130 = metadata !{i32 786688, metadata !95, metadata !"o_y", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!131 = metadata !{i32 44, i32 33, metadata !97, null}
!132 = metadata !{i32 786688, metadata !97, metadata !"o_d", metadata !6, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!133 = metadata !{i32 41, i32 25, metadata !99, null}
!134 = metadata !{i32 786688, metadata !99, metadata !"b_", metadata !6, i32 41, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!135 = metadata !{i32 77, i32 1, metadata !74, null}
