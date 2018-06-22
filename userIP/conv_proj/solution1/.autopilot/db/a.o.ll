; ModuleID = '/home/tarafdar/workDir/galapagos/userIP/conv_proj/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str2 = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=1 type=[10 x i8]*]
@.str3 = private unnamed_addr constant [9 x i8] c"CTRL_BUS\00", align 1 ; [#uses=1 type=[9 x i8]*]

; [#uses=0]
define void @_Z10conv_layerPfiiiiiiiiiii(float* %mem, i32 %input_offset, i32 %output_offset, i32 %b, i32 %od, i32 %ox, i32 %oy, i32 %id, i32 %ix, i32 %iy, i32 %s, i32 %k) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=6 type=float**]
  %2 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %3 = alloca i32, align 4                        ; [#uses=3 type=i32*]
  %4 = alloca i32, align 4                        ; [#uses=5 type=i32*]
  %5 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %6 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %7 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %8 = alloca i32, align 4                        ; [#uses=7 type=i32*]
  %9 = alloca i32, align 4                        ; [#uses=6 type=i32*]
  %10 = alloca i32, align 4                       ; [#uses=5 type=i32*]
  %11 = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %12 = alloca i32, align 4                       ; [#uses=11 type=i32*]
  %num_weights = alloca i32, align 4              ; [#uses=3 type=i32*]
  %num_biases = alloca i32, align 4               ; [#uses=2 type=i32*]
  %num_input = alloca i32, align 4                ; [#uses=1 type=i32*]
  %num_output = alloca i32, align 4               ; [#uses=1 type=i32*]
  %b_ = alloca i32, align 4                       ; [#uses=6 type=i32*]
  %o_d = alloca i32, align 4                      ; [#uses=7 type=i32*]
  %o_y = alloca i32, align 4                      ; [#uses=7 type=i32*]
  %o_x = alloca i32, align 4                      ; [#uses=7 type=i32*]
  %output_element = alloca float, align 4         ; [#uses=4 type=float*]
  %i_d = alloca i32, align 4                      ; [#uses=6 type=i32*]
  %i_y = alloca i32, align 4                      ; [#uses=5 type=i32*]
  %iiy = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %i_x = alloca i32, align 4                      ; [#uses=5 type=i32*]
  %iix = alloca i32, align 4                      ; [#uses=4 type=i32*]
  %13 = alloca float, align 4                     ; [#uses=2 type=float*]
  store float* %mem, float** %1, align 8
  call void @llvm.dbg.declare(metadata !{float** %1}, metadata !49), !dbg !50 ; [debug line = 5:25] [debug variable = mem]
  store i32 %input_offset, i32* %2, align 4
  call void @llvm.dbg.declare(metadata !{i32* %2}, metadata !51), !dbg !52 ; [debug line = 6:21] [debug variable = input_offset]
  store i32 %output_offset, i32* %3, align 4
  call void @llvm.dbg.declare(metadata !{i32* %3}, metadata !53), !dbg !54 ; [debug line = 7:21] [debug variable = output_offset]
  store i32 %b, i32* %4, align 4
  call void @llvm.dbg.declare(metadata !{i32* %4}, metadata !55), !dbg !56 ; [debug line = 8:27] [debug variable = b]
  store i32 %od, i32* %5, align 4
  call void @llvm.dbg.declare(metadata !{i32* %5}, metadata !57), !dbg !58 ; [debug line = 9:27] [debug variable = od]
  store i32 %ox, i32* %6, align 4
  call void @llvm.dbg.declare(metadata !{i32* %6}, metadata !59), !dbg !60 ; [debug line = 10:27] [debug variable = ox]
  store i32 %oy, i32* %7, align 4
  call void @llvm.dbg.declare(metadata !{i32* %7}, metadata !61), !dbg !62 ; [debug line = 11:27] [debug variable = oy]
  store i32 %id, i32* %8, align 4
  call void @llvm.dbg.declare(metadata !{i32* %8}, metadata !63), !dbg !64 ; [debug line = 12:27] [debug variable = id]
  store i32 %ix, i32* %9, align 4
  call void @llvm.dbg.declare(metadata !{i32* %9}, metadata !65), !dbg !66 ; [debug line = 13:27] [debug variable = ix]
  store i32 %iy, i32* %10, align 4
  call void @llvm.dbg.declare(metadata !{i32* %10}, metadata !67), !dbg !68 ; [debug line = 14:27] [debug variable = iy]
  store i32 %s, i32* %11, align 4
  call void @llvm.dbg.declare(metadata !{i32* %11}, metadata !69), !dbg !70 ; [debug line = 15:27] [debug variable = s]
  store i32 %k, i32* %12, align 4
  call void @llvm.dbg.declare(metadata !{i32* %12}, metadata !71), !dbg !72 ; [debug line = 16:27] [debug variable = k]
  %14 = load float** %1, align 8, !dbg !73        ; [#uses=1 type=float*] [debug line = 20:1]
  call void (...)* @_ssdm_op_SpecInterface(float* %14, i8* getelementptr inbounds ([6 x i8]* @.str, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i64 2147483648, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 16, i32 16, i32 16, i32 16, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !73 ; [debug line = 20:1]
  %15 = load i32* %4, align 4, !dbg !75           ; [#uses=1 type=i32] [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %15, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !75 ; [debug line = 22:1]
  %16 = load i32* %5, align 4, !dbg !76           ; [#uses=1 type=i32] [debug line = 23:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %16, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !76 ; [debug line = 23:1]
  %17 = load i32* %6, align 4, !dbg !77           ; [#uses=1 type=i32] [debug line = 24:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %17, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !77 ; [debug line = 24:1]
  %18 = load i32* %7, align 4, !dbg !78           ; [#uses=1 type=i32] [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %18, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !78 ; [debug line = 25:1]
  %19 = load i32* %8, align 4, !dbg !79           ; [#uses=1 type=i32] [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %19, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !79 ; [debug line = 26:1]
  %20 = load i32* %9, align 4, !dbg !80           ; [#uses=1 type=i32] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %20, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !80 ; [debug line = 27:1]
  %21 = load i32* %10, align 4, !dbg !81          ; [#uses=1 type=i32] [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %21, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !81 ; [debug line = 28:1]
  %22 = load i32* %11, align 4, !dbg !82          ; [#uses=1 type=i32] [debug line = 29:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %22, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !82 ; [debug line = 29:1]
  %23 = load i32* %12, align 4, !dbg !83          ; [#uses=1 type=i32] [debug line = 30:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %23, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !83 ; [debug line = 30:1]
  %24 = load i32* %2, align 4, !dbg !84           ; [#uses=1 type=i32] [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %24, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !84 ; [debug line = 31:1]
  %25 = load i32* %3, align 4, !dbg !85           ; [#uses=1 type=i32] [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %25, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !85 ; [debug line = 32:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([10 x i8]* @.str2, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i8* getelementptr inbounds ([9 x i8]* @.str3, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i32 0, i32 0)) nounwind, !dbg !86 ; [debug line = 33:1]
  call void @llvm.dbg.declare(metadata !{i32* %num_weights}, metadata !87), !dbg !88 ; [debug line = 35:6] [debug variable = num_weights]
  %26 = load i32* %8, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 35:29]
  %27 = load i32* %5, align 4, !dbg !89           ; [#uses=1 type=i32] [debug line = 35:29]
  %28 = mul nsw i32 %26, %27, !dbg !89            ; [#uses=1 type=i32] [debug line = 35:29]
  %29 = load i32* %12, align 4, !dbg !89          ; [#uses=1 type=i32] [debug line = 35:29]
  %30 = mul nsw i32 %28, %29, !dbg !89            ; [#uses=1 type=i32] [debug line = 35:29]
  %31 = load i32* %12, align 4, !dbg !89          ; [#uses=1 type=i32] [debug line = 35:29]
  %32 = mul nsw i32 %30, %31, !dbg !89            ; [#uses=1 type=i32] [debug line = 35:29]
  store i32 %32, i32* %num_weights, align 4, !dbg !89 ; [debug line = 35:29]
  call void @llvm.dbg.declare(metadata !{i32* %num_biases}, metadata !90), !dbg !91 ; [debug line = 36:7] [debug variable = num_biases]
  %33 = load i32* %5, align 4, !dbg !92           ; [#uses=1 type=i32] [debug line = 36:22]
  store i32 %33, i32* %num_biases, align 4, !dbg !92 ; [debug line = 36:22]
  call void @llvm.dbg.declare(metadata !{i32* %num_input}, metadata !93), !dbg !94 ; [debug line = 37:7] [debug variable = num_input]
  %34 = load i32* %4, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 37:29]
  %35 = load i32* %8, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 37:29]
  %36 = mul nsw i32 %34, %35, !dbg !95            ; [#uses=1 type=i32] [debug line = 37:29]
  %37 = load i32* %9, align 4, !dbg !95           ; [#uses=1 type=i32] [debug line = 37:29]
  %38 = mul nsw i32 %36, %37, !dbg !95            ; [#uses=1 type=i32] [debug line = 37:29]
  %39 = load i32* %10, align 4, !dbg !95          ; [#uses=1 type=i32] [debug line = 37:29]
  %40 = mul nsw i32 %38, %39, !dbg !95            ; [#uses=1 type=i32] [debug line = 37:29]
  store i32 %40, i32* %num_input, align 4, !dbg !95 ; [debug line = 37:29]
  call void @llvm.dbg.declare(metadata !{i32* %num_output}, metadata !96), !dbg !97 ; [debug line = 38:7] [debug variable = num_output]
  %41 = load i32* %4, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 38:30]
  %42 = load i32* %5, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 38:30]
  %43 = mul nsw i32 %41, %42, !dbg !98            ; [#uses=1 type=i32] [debug line = 38:30]
  %44 = load i32* %6, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 38:30]
  %45 = mul nsw i32 %43, %44, !dbg !98            ; [#uses=1 type=i32] [debug line = 38:30]
  %46 = load i32* %7, align 4, !dbg !98           ; [#uses=1 type=i32] [debug line = 38:30]
  %47 = mul nsw i32 %45, %46, !dbg !98            ; [#uses=1 type=i32] [debug line = 38:30]
  store i32 %47, i32* %num_output, align 4, !dbg !98 ; [debug line = 38:30]
  call void @llvm.dbg.declare(metadata !{i32* %b_}, metadata !99), !dbg !101 ; [debug line = 41:12] [debug variable = b_]
  store i32 0, i32* %b_, align 4, !dbg !102       ; [debug line = 41:16]
  br label %48, !dbg !102                         ; [debug line = 41:16]

; <label>:48                                      ; preds = %237, %0
  %49 = load i32* %b_, align 4, !dbg !102         ; [#uses=1 type=i32] [debug line = 41:16]
  %50 = load i32* %4, align 4, !dbg !102          ; [#uses=1 type=i32] [debug line = 41:16]
  %51 = icmp slt i32 %49, %50, !dbg !102          ; [#uses=1 type=i1] [debug line = 41:16]
  br i1 %51, label %52, label %240, !dbg !102     ; [debug line = 41:16]

; <label>:52                                      ; preds = %48
  call void @llvm.dbg.declare(metadata !{i32* %o_d}, metadata !103), !dbg !106 ; [debug line = 44:14] [debug variable = o_d]
  store i32 0, i32* %o_d, align 4, !dbg !107      ; [debug line = 44:21]
  br label %53, !dbg !107                         ; [debug line = 44:21]

; <label>:53                                      ; preds = %233, %52
  %54 = load i32* %o_d, align 4, !dbg !107        ; [#uses=1 type=i32] [debug line = 44:21]
  %55 = load i32* %5, align 4, !dbg !107          ; [#uses=1 type=i32] [debug line = 44:21]
  %56 = icmp slt i32 %54, %55, !dbg !107          ; [#uses=1 type=i1] [debug line = 44:21]
  br i1 %56, label %57, label %236, !dbg !107     ; [debug line = 44:21]

; <label>:57                                      ; preds = %53
  call void @llvm.dbg.declare(metadata !{i32* %o_y}, metadata !108), !dbg !111 ; [debug line = 47:16] [debug variable = o_y]
  store i32 0, i32* %o_y, align 4, !dbg !112      ; [debug line = 47:23]
  br label %58, !dbg !112                         ; [debug line = 47:23]

; <label>:58                                      ; preds = %229, %57
  %59 = load i32* %o_y, align 4, !dbg !112        ; [#uses=1 type=i32] [debug line = 47:23]
  %60 = load i32* %7, align 4, !dbg !112          ; [#uses=1 type=i32] [debug line = 47:23]
  %61 = icmp slt i32 %59, %60, !dbg !112          ; [#uses=1 type=i1] [debug line = 47:23]
  br i1 %61, label %62, label %232, !dbg !112     ; [debug line = 47:23]

; <label>:62                                      ; preds = %58
  call void @llvm.dbg.declare(metadata !{i32* %o_x}, metadata !113), !dbg !116 ; [debug line = 50:18] [debug variable = o_x]
  store i32 0, i32* %o_x, align 4, !dbg !117      ; [debug line = 50:25]
  br label %63, !dbg !117                         ; [debug line = 50:25]

; <label>:63                                      ; preds = %225, %62
  %64 = load i32* %o_x, align 4, !dbg !117        ; [#uses=1 type=i32] [debug line = 50:25]
  %65 = load i32* %6, align 4, !dbg !117          ; [#uses=1 type=i32] [debug line = 50:25]
  %66 = icmp slt i32 %64, %65, !dbg !117          ; [#uses=1 type=i1] [debug line = 50:25]
  br i1 %66, label %67, label %228, !dbg !117     ; [debug line = 50:25]

; <label>:67                                      ; preds = %63
  call void @llvm.dbg.declare(metadata !{float* %output_element}, metadata !118), !dbg !120 ; [debug line = 53:18] [debug variable = output_element]
  %68 = load i32* %2, align 4, !dbg !121          ; [#uses=1 type=i32] [debug line = 53:86]
  %69 = sext i32 %68 to i64, !dbg !121            ; [#uses=1 type=i64] [debug line = 53:86]
  %70 = udiv i64 %69, 4, !dbg !121                ; [#uses=1 type=i64] [debug line = 53:86]
  %71 = load i32* %num_weights, align 4, !dbg !121 ; [#uses=1 type=i32] [debug line = 53:86]
  %72 = sext i32 %71 to i64, !dbg !121            ; [#uses=1 type=i64] [debug line = 53:86]
  %73 = add i64 %70, %72, !dbg !121               ; [#uses=1 type=i64] [debug line = 53:86]
  %74 = load i32* %o_d, align 4, !dbg !121        ; [#uses=1 type=i32] [debug line = 53:86]
  %75 = sext i32 %74 to i64, !dbg !121            ; [#uses=1 type=i64] [debug line = 53:86]
  %76 = add i64 %73, %75, !dbg !121               ; [#uses=1 type=i64] [debug line = 53:86]
  %77 = load float** %1, align 8, !dbg !121       ; [#uses=1 type=float*] [debug line = 53:86]
  %78 = getelementptr inbounds float* %77, i64 %76, !dbg !121 ; [#uses=1 type=float*] [debug line = 53:86]
  %79 = load float* %78, align 4, !dbg !121       ; [#uses=1 type=float] [debug line = 53:86]
  store float %79, float* %output_element, align 4, !dbg !121 ; [debug line = 53:86]
  call void @llvm.dbg.declare(metadata !{i32* %i_d}, metadata !122), !dbg !124 ; [debug line = 58:20] [debug variable = i_d]
  store i32 0, i32* %i_d, align 4, !dbg !125      ; [debug line = 58:27]
  br label %80, !dbg !125                         ; [debug line = 58:27]

; <label>:80                                      ; preds = %190, %67
  %81 = load i32* %i_d, align 4, !dbg !125        ; [#uses=1 type=i32] [debug line = 58:27]
  %82 = load i32* %8, align 4, !dbg !125          ; [#uses=1 type=i32] [debug line = 58:27]
  %83 = icmp slt i32 %81, %82, !dbg !125          ; [#uses=1 type=i1] [debug line = 58:27]
  br i1 %83, label %84, label %193, !dbg !125     ; [debug line = 58:27]

; <label>:84                                      ; preds = %80
  call void @llvm.dbg.declare(metadata !{i32* %i_y}, metadata !126), !dbg !129 ; [debug line = 61:22] [debug variable = i_y]
  %85 = load i32* %o_y, align 4, !dbg !130        ; [#uses=1 type=i32] [debug line = 61:42]
  %86 = load i32* %11, align 4, !dbg !130         ; [#uses=1 type=i32] [debug line = 61:42]
  %87 = mul nsw i32 %85, %86, !dbg !130           ; [#uses=1 type=i32] [debug line = 61:42]
  store i32 %87, i32* %i_y, align 4, !dbg !130    ; [debug line = 61:42]
  call void @llvm.dbg.declare(metadata !{i32* %iiy}, metadata !131), !dbg !132 ; [debug line = 61:35] [debug variable = iiy]
  store i32 0, i32* %iiy, align 4, !dbg !130      ; [debug line = 61:42]
  br label %88, !dbg !130                         ; [debug line = 61:42]

; <label>:88                                      ; preds = %184, %84
  %89 = load i32* %i_y, align 4, !dbg !130        ; [#uses=1 type=i32] [debug line = 61:42]
  %90 = load i32* %o_y, align 4, !dbg !130        ; [#uses=1 type=i32] [debug line = 61:42]
  %91 = load i32* %11, align 4, !dbg !130         ; [#uses=1 type=i32] [debug line = 61:42]
  %92 = mul nsw i32 %90, %91, !dbg !130           ; [#uses=1 type=i32] [debug line = 61:42]
  %93 = load i32* %12, align 4, !dbg !130         ; [#uses=1 type=i32] [debug line = 61:42]
  %94 = add nsw i32 %92, %93, !dbg !130           ; [#uses=1 type=i32] [debug line = 61:42]
  %95 = icmp slt i32 %89, %94, !dbg !130          ; [#uses=1 type=i1] [debug line = 61:42]
  br i1 %95, label %96, label %189, !dbg !130     ; [debug line = 61:42]

; <label>:96                                      ; preds = %88
  call void @llvm.dbg.declare(metadata !{i32* %i_x}, metadata !133), !dbg !136 ; [debug line = 64:24] [debug variable = i_x]
  %97 = load i32* %o_x, align 4, !dbg !137        ; [#uses=1 type=i32] [debug line = 64:44]
  %98 = load i32* %11, align 4, !dbg !137         ; [#uses=1 type=i32] [debug line = 64:44]
  %99 = mul nsw i32 %97, %98, !dbg !137           ; [#uses=1 type=i32] [debug line = 64:44]
  store i32 %99, i32* %i_x, align 4, !dbg !137    ; [debug line = 64:44]
  call void @llvm.dbg.declare(metadata !{i32* %iix}, metadata !138), !dbg !139 ; [debug line = 64:37] [debug variable = iix]
  store i32 0, i32* %iix, align 4, !dbg !137      ; [debug line = 64:44]
  br label %100, !dbg !137                        ; [debug line = 64:44]

; <label>:100                                     ; preds = %178, %96
  %101 = load i32* %i_x, align 4, !dbg !137       ; [#uses=1 type=i32] [debug line = 64:44]
  %102 = load i32* %o_x, align 4, !dbg !137       ; [#uses=1 type=i32] [debug line = 64:44]
  %103 = load i32* %11, align 4, !dbg !137        ; [#uses=1 type=i32] [debug line = 64:44]
  %104 = mul nsw i32 %102, %103, !dbg !137        ; [#uses=1 type=i32] [debug line = 64:44]
  %105 = load i32* %12, align 4, !dbg !137        ; [#uses=1 type=i32] [debug line = 64:44]
  %106 = add nsw i32 %104, %105, !dbg !137        ; [#uses=1 type=i32] [debug line = 64:44]
  %107 = icmp slt i32 %101, %106, !dbg !137       ; [#uses=1 type=i1] [debug line = 64:44]
  br i1 %107, label %108, label %183, !dbg !137   ; [debug line = 64:44]

; <label>:108                                     ; preds = %100
  %109 = load i32* %2, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %110 = sext i32 %109 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %111 = udiv i64 %110, 4, !dbg !140              ; [#uses=1 type=i64] [debug line = 66:17]
  %112 = load i32* %num_weights, align 4, !dbg !140 ; [#uses=1 type=i32] [debug line = 66:17]
  %113 = sext i32 %112 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %114 = add i64 %111, %113, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %115 = load i32* %num_biases, align 4, !dbg !140 ; [#uses=1 type=i32] [debug line = 66:17]
  %116 = sext i32 %115 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %117 = add i64 %114, %116, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %118 = load i32* %b_, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %119 = load i32* %8, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %120 = mul nsw i32 %118, %119, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %121 = load i32* %9, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %122 = mul nsw i32 %120, %121, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %123 = load i32* %10, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %124 = mul nsw i32 %122, %123, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %125 = sext i32 %124 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %126 = add i64 %117, %125, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %127 = load i32* %i_d, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %128 = load i32* %9, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %129 = mul nsw i32 %127, %128, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %130 = load i32* %10, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %131 = mul nsw i32 %129, %130, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %132 = sext i32 %131 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %133 = add i64 %126, %132, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %134 = load i32* %i_y, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %135 = load i32* %9, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %136 = mul nsw i32 %134, %135, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %137 = sext i32 %136 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %138 = add i64 %133, %137, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %139 = load i32* %i_x, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %140 = sext i32 %139 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %141 = add i64 %138, %140, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %142 = load float** %1, align 8, !dbg !140      ; [#uses=1 type=float*] [debug line = 66:17]
  %143 = getelementptr inbounds float* %142, i64 %141, !dbg !140 ; [#uses=1 type=float*] [debug line = 66:17]
  %144 = load float* %143, align 4, !dbg !140     ; [#uses=1 type=float] [debug line = 66:17]
  %145 = load i32* %2, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %146 = sext i32 %145 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %147 = udiv i64 %146, 4, !dbg !140              ; [#uses=1 type=i64] [debug line = 66:17]
  %148 = load i32* %o_d, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %149 = load i32* %8, align 4, !dbg !140         ; [#uses=1 type=i32] [debug line = 66:17]
  %150 = mul nsw i32 %148, %149, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %151 = load i32* %12, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %152 = mul nsw i32 %150, %151, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %153 = load i32* %12, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %154 = mul nsw i32 %152, %153, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %155 = sext i32 %154 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %156 = add i64 %147, %155, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %157 = load i32* %i_d, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %158 = load i32* %12, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %159 = mul nsw i32 %157, %158, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %160 = load i32* %12, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %161 = mul nsw i32 %159, %160, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %162 = sext i32 %161 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %163 = add i64 %156, %162, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %164 = load i32* %iiy, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %165 = load i32* %12, align 4, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %166 = mul nsw i32 %164, %165, !dbg !140        ; [#uses=1 type=i32] [debug line = 66:17]
  %167 = sext i32 %166 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %168 = add i64 %163, %167, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %169 = load i32* %iix, align 4, !dbg !140       ; [#uses=1 type=i32] [debug line = 66:17]
  %170 = sext i32 %169 to i64, !dbg !140          ; [#uses=1 type=i64] [debug line = 66:17]
  %171 = add i64 %168, %170, !dbg !140            ; [#uses=1 type=i64] [debug line = 66:17]
  %172 = load float** %1, align 8, !dbg !140      ; [#uses=1 type=float*] [debug line = 66:17]
  %173 = getelementptr inbounds float* %172, i64 %171, !dbg !140 ; [#uses=1 type=float*] [debug line = 66:17]
  %174 = load float* %173, align 4, !dbg !140     ; [#uses=1 type=float] [debug line = 66:17]
  %175 = fmul float %144, %174, !dbg !140         ; [#uses=1 type=float] [debug line = 66:17]
  %176 = load float* %output_element, align 4, !dbg !140 ; [#uses=1 type=float] [debug line = 66:17]
  %177 = fadd float %176, %175, !dbg !140         ; [#uses=1 type=float] [debug line = 66:17]
  store float %177, float* %output_element, align 4, !dbg !140 ; [debug line = 66:17]
  br label %178, !dbg !142                        ; [debug line = 68:15]

; <label>:178                                     ; preds = %108
  %179 = load i32* %i_x, align 4, !dbg !143       ; [#uses=1 type=i32] [debug line = 64:61]
  %180 = add nsw i32 %179, 1, !dbg !143           ; [#uses=1 type=i32] [debug line = 64:61]
  store i32 %180, i32* %i_x, align 4, !dbg !143   ; [debug line = 64:61]
  %181 = load i32* %iix, align 4, !dbg !143       ; [#uses=1 type=i32] [debug line = 64:61]
  %182 = add nsw i32 %181, 1, !dbg !143           ; [#uses=1 type=i32] [debug line = 64:61]
  store i32 %182, i32* %iix, align 4, !dbg !143   ; [debug line = 64:61]
  br label %100, !dbg !143                        ; [debug line = 64:61]

; <label>:183                                     ; preds = %100
  br label %184, !dbg !144                        ; [debug line = 69:13]

; <label>:184                                     ; preds = %183
  %185 = load i32* %i_y, align 4, !dbg !145       ; [#uses=1 type=i32] [debug line = 61:59]
  %186 = add nsw i32 %185, 1, !dbg !145           ; [#uses=1 type=i32] [debug line = 61:59]
  store i32 %186, i32* %i_y, align 4, !dbg !145   ; [debug line = 61:59]
  %187 = load i32* %iiy, align 4, !dbg !145       ; [#uses=1 type=i32] [debug line = 61:59]
  %188 = add nsw i32 %187, 1, !dbg !145           ; [#uses=1 type=i32] [debug line = 61:59]
  store i32 %188, i32* %iiy, align 4, !dbg !145   ; [debug line = 61:59]
  br label %88, !dbg !145                         ; [debug line = 61:59]

; <label>:189                                     ; preds = %88
  br label %190, !dbg !146                        ; [debug line = 70:11]

; <label>:190                                     ; preds = %189
  %191 = load i32* %i_d, align 4, !dbg !147       ; [#uses=1 type=i32] [debug line = 58:39]
  %192 = add nsw i32 %191, 1, !dbg !147           ; [#uses=1 type=i32] [debug line = 58:39]
  store i32 %192, i32* %i_d, align 4, !dbg !147   ; [debug line = 58:39]
  br label %80, !dbg !147                         ; [debug line = 58:39]

; <label>:193                                     ; preds = %80
  store float 0.000000e+00, float* %13, align 4, !dbg !148 ; [debug line = 72:87]
  %194 = call float* @_ZSt3maxIfERKT_S2_S2_(float* %13, float* %output_element), !dbg !148 ; [#uses=1 type=float*] [debug line = 72:87]
  %195 = load float* %194, !dbg !148              ; [#uses=1 type=float] [debug line = 72:87]
  %196 = load i32* %3, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %197 = sext i32 %196 to i64, !dbg !148          ; [#uses=1 type=i64] [debug line = 72:87]
  %198 = udiv i64 %197, 4, !dbg !148              ; [#uses=1 type=i64] [debug line = 72:87]
  %199 = load i32* %b_, align 4, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %200 = load i32* %5, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %201 = mul nsw i32 %199, %200, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %202 = load i32* %6, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %203 = mul nsw i32 %201, %202, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %204 = load i32* %7, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %205 = mul nsw i32 %203, %204, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %206 = sext i32 %205 to i64, !dbg !148          ; [#uses=1 type=i64] [debug line = 72:87]
  %207 = add i64 %198, %206, !dbg !148            ; [#uses=1 type=i64] [debug line = 72:87]
  %208 = load i32* %o_d, align 4, !dbg !148       ; [#uses=1 type=i32] [debug line = 72:87]
  %209 = load i32* %6, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %210 = mul nsw i32 %208, %209, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %211 = load i32* %7, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %212 = mul nsw i32 %210, %211, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %213 = sext i32 %212 to i64, !dbg !148          ; [#uses=1 type=i64] [debug line = 72:87]
  %214 = add i64 %207, %213, !dbg !148            ; [#uses=1 type=i64] [debug line = 72:87]
  %215 = load i32* %o_y, align 4, !dbg !148       ; [#uses=1 type=i32] [debug line = 72:87]
  %216 = load i32* %6, align 4, !dbg !148         ; [#uses=1 type=i32] [debug line = 72:87]
  %217 = mul nsw i32 %215, %216, !dbg !148        ; [#uses=1 type=i32] [debug line = 72:87]
  %218 = sext i32 %217 to i64, !dbg !148          ; [#uses=1 type=i64] [debug line = 72:87]
  %219 = add i64 %214, %218, !dbg !148            ; [#uses=1 type=i64] [debug line = 72:87]
  %220 = load i32* %o_x, align 4, !dbg !148       ; [#uses=1 type=i32] [debug line = 72:87]
  %221 = sext i32 %220 to i64, !dbg !148          ; [#uses=1 type=i64] [debug line = 72:87]
  %222 = add i64 %219, %221, !dbg !148            ; [#uses=1 type=i64] [debug line = 72:87]
  %223 = load float** %1, align 8, !dbg !148      ; [#uses=1 type=float*] [debug line = 72:87]
  %224 = getelementptr inbounds float* %223, i64 %222, !dbg !148 ; [#uses=1 type=float*] [debug line = 72:87]
  store float %195, float* %224, align 4, !dbg !148 ; [debug line = 72:87]
  br label %225, !dbg !149                        ; [debug line = 73:9]

; <label>:225                                     ; preds = %193
  %226 = load i32* %o_x, align 4, !dbg !150       ; [#uses=1 type=i32] [debug line = 50:37]
  %227 = add nsw i32 %226, 1, !dbg !150           ; [#uses=1 type=i32] [debug line = 50:37]
  store i32 %227, i32* %o_x, align 4, !dbg !150   ; [debug line = 50:37]
  br label %63, !dbg !150                         ; [debug line = 50:37]

; <label>:228                                     ; preds = %63
  br label %229, !dbg !151                        ; [debug line = 74:7]

; <label>:229                                     ; preds = %228
  %230 = load i32* %o_y, align 4, !dbg !152       ; [#uses=1 type=i32] [debug line = 47:35]
  %231 = add nsw i32 %230, 1, !dbg !152           ; [#uses=1 type=i32] [debug line = 47:35]
  store i32 %231, i32* %o_y, align 4, !dbg !152   ; [debug line = 47:35]
  br label %58, !dbg !152                         ; [debug line = 47:35]

; <label>:232                                     ; preds = %58
  br label %233, !dbg !153                        ; [debug line = 75:5]

; <label>:233                                     ; preds = %232
  %234 = load i32* %o_d, align 4, !dbg !154       ; [#uses=1 type=i32] [debug line = 44:33]
  %235 = add nsw i32 %234, 1, !dbg !154           ; [#uses=1 type=i32] [debug line = 44:33]
  store i32 %235, i32* %o_d, align 4, !dbg !154   ; [debug line = 44:33]
  br label %53, !dbg !154                         ; [debug line = 44:33]

; <label>:236                                     ; preds = %53
  br label %237, !dbg !155                        ; [debug line = 76:3]

; <label>:237                                     ; preds = %236
  %238 = load i32* %b_, align 4, !dbg !156        ; [#uses=1 type=i32] [debug line = 41:25]
  %239 = add nsw i32 %238, 1, !dbg !156           ; [#uses=1 type=i32] [debug line = 41:25]
  store i32 %239, i32* %b_, align 4, !dbg !156    ; [debug line = 41:25]
  br label %48, !dbg !156                         ; [debug line = 41:25]

; <label>:240                                     ; preds = %48
  ret void, !dbg !157                             ; [debug line = 77:1]
}

; [#uses=28]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=13]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
define internal float* @_ZSt3maxIfERKT_S2_S2_(float* %__a, float* %__b) nounwind uwtable {
  %1 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %2 = alloca float*, align 8                     ; [#uses=3 type=float**]
  %3 = alloca float*, align 8                     ; [#uses=3 type=float**]
  store float* %__a, float** %2, align 8
  call void @llvm.dbg.declare(metadata !{float** %2}, metadata !158), !dbg !159 ; [debug line = 353:19] [debug variable = __a]
  store float* %__b, float** %3, align 8
  call void @llvm.dbg.declare(metadata !{float** %3}, metadata !160), !dbg !161 ; [debug line = 353:31] [debug variable = __b]
  %4 = load float** %2, align 8, !dbg !162        ; [#uses=1 type=float*] [debug line = 215:7]
  %5 = load float* %4, align 4, !dbg !162         ; [#uses=1 type=float] [debug line = 215:7]
  %6 = load float** %3, align 8, !dbg !162        ; [#uses=1 type=float*] [debug line = 215:7]
  %7 = load float* %6, align 4, !dbg !162         ; [#uses=1 type=float] [debug line = 215:7]
  %8 = fcmp olt float %5, %7, !dbg !162           ; [#uses=1 type=i1] [debug line = 215:7]
  br i1 %8, label %9, label %11, !dbg !162        ; [debug line = 215:7]

; <label>:9                                       ; preds = %0
  %10 = load float** %3, align 8, !dbg !165       ; [#uses=1 type=float*] [debug line = 216:2]
  store float* %10, float** %1, !dbg !165         ; [debug line = 216:2]
  br label %13, !dbg !165                         ; [debug line = 216:2]

; <label>:11                                      ; preds = %0
  %12 = load float** %2, align 8, !dbg !166       ; [#uses=1 type=float*] [debug line = 217:7]
  store float* %12, float** %1, !dbg !166         ; [debug line = 217:7]
  br label %13, !dbg !166                         ; [debug line = 217:7]

; <label>:13                                      ; preds = %11, %9
  %14 = load float** %1, !dbg !167                ; [#uses=1 type=float*] [debug line = 218:5]
  ret float* %14, !dbg !167                       ; [debug line = 218:5]
}

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!36, !43}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"/home/tarafdar/workDir/galapagos/userIP/conv_proj/solution1/.autopilot/db/conv_layer.pragma.2.cpp", metadata !"/home/tarafdar/workDir/galapagos", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !24} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5, metadata !15}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"conv_layer", metadata !"conv_layer", metadata !"_Z10conv_layerPfiiiiiiiiiii", metadata !6, i32 5, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_Z10conv_layerPfiiiiiiiiiii, null, null, metadata !13, i32 17} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"../telepathy/hlsSources/conv_layer.cpp", metadata !"/home/tarafdar/workDir/galapagos", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !11, metadata !11, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12, metadata !12}
!9 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !10} ; [ DW_TAG_pointer_type ]
!10 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!11 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_const_type ]
!13 = metadata !{metadata !14}
!14 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"max<float>", metadata !"max<float>", metadata !"_ZSt3maxIfERKT_S2_S2_", metadata !17, i32 353, metadata !18, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !22, null, metadata !13, i32 211} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786489, null, metadata !"std", metadata !17, i32 39} ; [ DW_TAG_namespace ]
!17 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/algorithmfwd.h", metadata !"/home/tarafdar/workDir/galapagos", null} ; [ DW_TAG_file_type ]
!18 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !19, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!19 = metadata !{metadata !20, metadata !20, metadata !20}
!20 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!21 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_const_type ]
!22 = metadata !{metadata !23}
!23 = metadata !{i32 786479, null, metadata !"_Tp", metadata !10, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !26, metadata !28, metadata !29, metadata !30, metadata !31}
!26 = metadata !{i32 786484, i32 0, null, metadata !"__digits", metadata !"__digits", metadata !"_ZN9__gnu_cxx24__numeric_traits_integer8__digitsE", metadata !27, i32 76, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!27 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/ext/numeric_traits.h", metadata !"/home/tarafdar/workDir/galapagos", null} ; [ DW_TAG_file_type ]
!28 = metadata !{i32 786484, i32 0, null, metadata !"__max_digits10", metadata !"__max_digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating14__max_digits10E", metadata !27, i32 111, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!29 = metadata !{i32 786484, i32 0, null, metadata !"__digits10", metadata !"__digits10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating10__digits10E", metadata !27, i32 117, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!30 = metadata !{i32 786484, i32 0, null, metadata !"__max_exponent10", metadata !"__max_exponent10", metadata !"_ZN9__gnu_cxx25__numeric_traits_floating16__max_exponent10E", metadata !27, i32 120, metadata !12, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!31 = metadata !{i32 786484, i32 0, metadata !32, metadata !"nothrow", metadata !"nothrow", metadata !"_ZSt7nothrow", metadata !33, i32 70, metadata !34, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!32 = metadata !{i32 786489, null, metadata !"std", metadata !33, i32 47} ; [ DW_TAG_namespace ]
!33 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/new", metadata !"/home/tarafdar/workDir/galapagos", null} ; [ DW_TAG_file_type ]
!34 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!35 = metadata !{i32 786434, metadata !32, metadata !"nothrow_t", metadata !33, i32 68, i64 8, i64 8, i32 0, i32 0, null, metadata !2, i32 0, null, null} ; [ DW_TAG_class_type ]
!36 = metadata !{void (float*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @_Z10conv_layerPfiiiiiiiiiii, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42}
!37 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!38 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"float*", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int", metadata !"int"}
!40 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const", metadata !"const"}
!41 = metadata !{metadata !"kernel_arg_name", metadata !"mem", metadata !"input_offset", metadata !"output_offset", metadata !"b", metadata !"od", metadata !"ox", metadata !"oy", metadata !"id", metadata !"ix", metadata !"iy", metadata !"s", metadata !"k"}
!42 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!43 = metadata !{float* (float*, float*)* @_ZSt3maxIfERKT_S2_S2_, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !42}
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
!87 = metadata !{i32 786688, metadata !74, metadata !"num_weights", metadata !6, i32 35, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!88 = metadata !{i32 35, i32 6, metadata !74, null}
!89 = metadata !{i32 35, i32 29, metadata !74, null}
!90 = metadata !{i32 786688, metadata !74, metadata !"num_biases", metadata !6, i32 36, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!91 = metadata !{i32 36, i32 7, metadata !74, null}
!92 = metadata !{i32 36, i32 22, metadata !74, null}
!93 = metadata !{i32 786688, metadata !74, metadata !"num_input", metadata !6, i32 37, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!94 = metadata !{i32 37, i32 7, metadata !74, null}
!95 = metadata !{i32 37, i32 29, metadata !74, null}
!96 = metadata !{i32 786688, metadata !74, metadata !"num_output", metadata !6, i32 38, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!97 = metadata !{i32 38, i32 7, metadata !74, null}
!98 = metadata !{i32 38, i32 30, metadata !74, null}
!99 = metadata !{i32 786688, metadata !100, metadata !"b_", metadata !6, i32 41, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!100 = metadata !{i32 786443, metadata !74, i32 41, i32 3, metadata !6, i32 1} ; [ DW_TAG_lexical_block ]
!101 = metadata !{i32 41, i32 12, metadata !100, null}
!102 = metadata !{i32 41, i32 16, metadata !100, null}
!103 = metadata !{i32 786688, metadata !104, metadata !"o_d", metadata !6, i32 44, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!104 = metadata !{i32 786443, metadata !105, i32 44, i32 5, metadata !6, i32 3} ; [ DW_TAG_lexical_block ]
!105 = metadata !{i32 786443, metadata !100, i32 42, i32 3, metadata !6, i32 2} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 44, i32 14, metadata !104, null}
!107 = metadata !{i32 44, i32 21, metadata !104, null}
!108 = metadata !{i32 786688, metadata !109, metadata !"o_y", metadata !6, i32 47, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!109 = metadata !{i32 786443, metadata !110, i32 47, i32 7, metadata !6, i32 5} ; [ DW_TAG_lexical_block ]
!110 = metadata !{i32 786443, metadata !104, i32 45, i32 5, metadata !6, i32 4} ; [ DW_TAG_lexical_block ]
!111 = metadata !{i32 47, i32 16, metadata !109, null}
!112 = metadata !{i32 47, i32 23, metadata !109, null}
!113 = metadata !{i32 786688, metadata !114, metadata !"o_x", metadata !6, i32 50, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!114 = metadata !{i32 786443, metadata !115, i32 50, i32 9, metadata !6, i32 7} ; [ DW_TAG_lexical_block ]
!115 = metadata !{i32 786443, metadata !109, i32 48, i32 7, metadata !6, i32 6} ; [ DW_TAG_lexical_block ]
!116 = metadata !{i32 50, i32 18, metadata !114, null}
!117 = metadata !{i32 50, i32 25, metadata !114, null}
!118 = metadata !{i32 786688, metadata !119, metadata !"output_element", metadata !6, i32 53, metadata !10, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 786443, metadata !114, i32 51, i32 9, metadata !6, i32 8} ; [ DW_TAG_lexical_block ]
!120 = metadata !{i32 53, i32 18, metadata !119, null}
!121 = metadata !{i32 53, i32 86, metadata !119, null}
!122 = metadata !{i32 786688, metadata !123, metadata !"i_d", metadata !6, i32 58, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 786443, metadata !119, i32 58, i32 11, metadata !6, i32 9} ; [ DW_TAG_lexical_block ]
!124 = metadata !{i32 58, i32 20, metadata !123, null}
!125 = metadata !{i32 58, i32 27, metadata !123, null}
!126 = metadata !{i32 786688, metadata !127, metadata !"i_y", metadata !6, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!127 = metadata !{i32 786443, metadata !128, i32 61, i32 13, metadata !6, i32 11} ; [ DW_TAG_lexical_block ]
!128 = metadata !{i32 786443, metadata !123, i32 59, i32 11, metadata !6, i32 10} ; [ DW_TAG_lexical_block ]
!129 = metadata !{i32 61, i32 22, metadata !127, null}
!130 = metadata !{i32 61, i32 42, metadata !127, null}
!131 = metadata !{i32 786688, metadata !127, metadata !"iiy", metadata !6, i32 61, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 61, i32 35, metadata !127, null}
!133 = metadata !{i32 786688, metadata !134, metadata !"i_x", metadata !6, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!134 = metadata !{i32 786443, metadata !135, i32 64, i32 15, metadata !6, i32 13} ; [ DW_TAG_lexical_block ]
!135 = metadata !{i32 786443, metadata !127, i32 62, i32 13, metadata !6, i32 12} ; [ DW_TAG_lexical_block ]
!136 = metadata !{i32 64, i32 24, metadata !134, null}
!137 = metadata !{i32 64, i32 44, metadata !134, null}
!138 = metadata !{i32 786688, metadata !134, metadata !"iix", metadata !6, i32 64, metadata !11, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!139 = metadata !{i32 64, i32 37, metadata !134, null}
!140 = metadata !{i32 66, i32 17, metadata !141, null}
!141 = metadata !{i32 786443, metadata !134, i32 65, i32 15, metadata !6, i32 14} ; [ DW_TAG_lexical_block ]
!142 = metadata !{i32 68, i32 15, metadata !141, null}
!143 = metadata !{i32 64, i32 61, metadata !134, null}
!144 = metadata !{i32 69, i32 13, metadata !135, null}
!145 = metadata !{i32 61, i32 59, metadata !127, null}
!146 = metadata !{i32 70, i32 11, metadata !128, null}
!147 = metadata !{i32 58, i32 39, metadata !123, null}
!148 = metadata !{i32 72, i32 87, metadata !119, null}
!149 = metadata !{i32 73, i32 9, metadata !119, null}
!150 = metadata !{i32 50, i32 37, metadata !114, null}
!151 = metadata !{i32 74, i32 7, metadata !115, null}
!152 = metadata !{i32 47, i32 35, metadata !109, null}
!153 = metadata !{i32 75, i32 5, metadata !110, null}
!154 = metadata !{i32 44, i32 33, metadata !104, null}
!155 = metadata !{i32 76, i32 3, metadata !105, null}
!156 = metadata !{i32 41, i32 25, metadata !100, null}
!157 = metadata !{i32 77, i32 1, metadata !74, null}
!158 = metadata !{i32 786689, metadata !15, metadata !"__a", metadata !17, i32 16777569, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 353, i32 19, metadata !15, null}
!160 = metadata !{i32 786689, metadata !15, metadata !"__b", metadata !17, i32 33554785, metadata !20, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!161 = metadata !{i32 353, i32 31, metadata !15, null}
!162 = metadata !{i32 215, i32 7, metadata !163, null}
!163 = metadata !{i32 786443, metadata !15, i32 211, i32 5, metadata !164, i32 15} ; [ DW_TAG_lexical_block ]
!164 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/lnx64/tools/gcc/lib/gcc/x86_64-unknown-linux-gnu/4.6.3/../../../../include/c++/4.6.3/bits/stl_algobase.h", metadata !"/home/tarafdar/workDir/galapagos", null} ; [ DW_TAG_file_type ]
!165 = metadata !{i32 216, i32 2, metadata !163, null}
!166 = metadata !{i32 217, i32 7, metadata !163, null}
!167 = metadata !{i32 218, i32 5, metadata !163, null}
