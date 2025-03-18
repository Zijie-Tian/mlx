; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [92 x i8] c"Assert fail: num_args == 4, preprocessor_t12_int8_m4096_k4096_n512_b2: num_args should be 4\00", align 1
@.str.1 = private constant [110 x i8] c"Assert fail: not T.isnullptr(args), preprocessor_t12_int8_m4096_k4096_n512_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [112 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), preprocessor_t12_int8_m4096_k4096_n512_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [143 x i8] c"Assert fail: B_code == 3 or B_code == 13 or B_code == 7 or B_code == 4, preprocessor_t12_int8_m4096_k4096_n512_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [179 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, preprocessor_t12_int8_m4096_k4096_n512_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [179 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, preprocessor_t12_int8_m4096_k4096_n512_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [155 x i8] c"Assert fail: QLUT_code == 3 or QLUT_code == 13 or QLUT_code == 7 or QLUT_code == 4, preprocessor_t12_int8_m4096_k4096_n512_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [124 x i8] c"Assert fail: not T.isnullptr(B), preprocessor_t12_int8_m4096_k4096_n512_b2.B is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.8 = private constant [126 x i8] c"Assert fail: 2 == T.tvm_struct_get(B, 0, 4, \22int32\22), preprocessor_t12_int8_m4096_k4096_n512_b2.B.ndim is expected to equal 2\00", align 1
@.str.9 = private constant [142 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [144 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.11 = private constant [142 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [144 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [130 x i8] c"Assert fail: not T.isnullptr(QLUT), preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [132 x i8] c"Assert fail: 3 == T.tvm_struct_get(QLUT, 0, 4, \22int32\22), preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [248 x i8] c"Assert fail: T.tvm_struct_get(B, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(B, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(B, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t12_int8_m4096_k4096_n512_b2.B.dtype is expected to be float16\00", align 1
@.str.16 = private constant [261 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_B_shape[0]) == 512, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_B_shape[0])\00", align 1
@.str.17 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_B_shape[1]) == 4096, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_B_shape[1])\00", align 1
@.str.18 = private constant [257 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_B_strides[1]) and 4096 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_B_strides[0]), preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides: expected to be compact array\00", align 1
@.str.19 = private constant [212 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(B, 0, 8, \22uint64\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.B.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(B, 0, 8, \22uint64\22)\00", align 1
@.str.20 = private constant [192 x i8] c"Assert fail: T.tvm_struct_get(B, 0, 10, \22int32\22) == 1, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.B.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(B, 0, 10, \22int32\22)\00", align 1
@.str.21 = private constant [119 x i8] c"Assert fail: not T.isnullptr(B), preprocessor_t12_int8_m4096_k4096_n512_b2.B is expected to have non-NULL data pointer\00", align 1
@.str.22 = private constant [284 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.23 = private constant [288 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[0]) == 512, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[0])\00", align 1
@.str.24 = private constant [286 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[1]) == 64, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[1])\00", align 1
@.str.25 = private constant [282 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Scales_strides[1]) and 64 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Scales_strides[0]), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.26 = private constant [239 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [219 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [225 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.29 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.30 = private constant [284 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.31 = private constant [288 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[0]) == 512, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[0])\00", align 1
@.str.32 = private constant [286 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[1]) == 64, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[1])\00", align 1
@.str.33 = private constant [282 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Biases_strides[1]) and 64 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_LUT_Biases_strides[0]), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.34 = private constant [239 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [219 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [225 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [256 x i8] c"Assert fail: T.tvm_struct_get(QLUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(QLUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(QLUT, 0, 7, \22uint16\22) == T.uint16(1), preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.dtype is expected to be int8\00", align 1
@.str.39 = private constant [270 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_shape[0]) == 512, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_shape[0])\00", align 1
@.str.40 = private constant [272 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_shape[1]) == 1024, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_shape[1])\00", align 1
@.str.41 = private constant [268 x i8] c"Assert fail: T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_shape[2]) == 16, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_shape[2])\00", align 1
@.str.42 = private constant [352 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_strides[2]) and 16 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_strides[1]) and 16384 == T.Cast(\22int32\22, preprocessor_t12_int8_m4096_k4096_n512_b2_QLUT_strides[0]), preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides: expected to be compact array\00", align 1
@.str.43 = private constant [221 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(QLUT, 0, 8, \22uint64\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(QLUT, 0, 8, \22uint64\22)\00", align 1
@.str.44 = private constant [201 x i8] c"Assert fail: T.tvm_struct_get(QLUT, 0, 10, \22int32\22) == 1, Argument preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(QLUT, 0, 10, \22int32\22)\00", align 1
@.str.45 = private constant [207 x i8] c"Assert fail: dev_id == T.tvm_struct_get(QLUT, 0, 9, \22int32\22), Argument preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(QLUT, 0, 9, \22int32\22)\00", align 1
@.str.46 = private constant [125 x i8] c"Assert fail: not T.isnullptr(QLUT), preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [42 x i8] c"preprocessor_t12_int8_m4096_k4096_n512_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @preprocessor_t12_int8_m4096_k4096_n512_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !21, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = icmp eq i32 %num_args, 4, !dbg !24
  br i1 %0, label %assert_end, label %assert_fail, !dbg !24, !prof !25

common.ret:                                       ; preds = %assert_end106, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail97, %assert_fail93, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail77, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail55, %assert_fail53, %assert_fail51, %assert_fail49, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail27, %assert_fail25, %assert_fail21, %assert_fail19, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail51 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail77 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail93 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ 0, %assert_end106 ]
  ret i32 %common.ret.op, !dbg !24

assert_fail:                                      ; preds = %entry
  %1 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %1(ptr nonnull @.str), !dbg !24
  br label %common.ret

assert_end:                                       ; preds = %entry
  %.not = icmp eq ptr %args, null, !dbg !24
  br i1 %.not, label %assert_fail1, label %assert_end2, !dbg !24, !prof !29

assert_fail1:                                     ; preds = %assert_end
  %2 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %2(ptr nonnull @.str.1), !dbg !24
  br label %common.ret

assert_end2:                                      ; preds = %assert_end
  %.not111 = icmp eq ptr %arg_type_ids, null, !dbg !24
  br i1 %.not111, label %assert_fail3, label %assert_end4, !dbg !24, !prof !29

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %3(ptr nonnull @.str.2), !dbg !24
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %B.code = load i32, ptr %arg_type_ids, align 4, !dbg !24, !tbaa !30
  call void @llvm.dbg.declare(metadata i32 %B.code, metadata !41, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %B.code, metadata !41, metadata !DIExpression()), !dbg !24
  switch i32 %B.code, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ], !dbg !24

assert_fail5:                                     ; preds = %assert_end4
  %4 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %4(ptr nonnull @.str.3), !dbg !24
  br label %common.ret

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %5 = getelementptr inbounds i32, ptr %arg_type_ids, i64 1, !dbg !24
  %LUT_Scales.code = load i32, ptr %5, align 4, !dbg !24, !tbaa !42
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !44, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !44, metadata !DIExpression()), !dbg !24
  switch i32 %LUT_Scales.code, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ], !dbg !24

assert_fail7:                                     ; preds = %assert_end6
  %6 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %6(ptr nonnull @.str.4), !dbg !24
  br label %common.ret

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %7 = getelementptr inbounds i32, ptr %arg_type_ids, i64 2, !dbg !24
  %LUT_Biases.code = load i32, ptr %7, align 4, !dbg !24, !tbaa !45
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !48, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !48, metadata !DIExpression()), !dbg !24
  switch i32 %LUT_Biases.code, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ], !dbg !24

assert_fail9:                                     ; preds = %assert_end8
  %8 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %8(ptr nonnull @.str.5), !dbg !24
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  %9 = getelementptr inbounds i32, ptr %arg_type_ids, i64 3, !dbg !24
  %QLUT.code = load i32, ptr %9, align 4, !dbg !24, !tbaa !49
  call void @llvm.dbg.declare(metadata i32 %QLUT.code, metadata !51, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %QLUT.code, metadata !51, metadata !DIExpression()), !dbg !24
  switch i32 %QLUT.code, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ], !dbg !24

assert_fail11:                                    ; preds = %assert_end10
  %10 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %10(ptr nonnull @.str.6), !dbg !24
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %B = load ptr, ptr %args, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %B, metadata !52, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %B, metadata !52, metadata !DIExpression()), !dbg !24
  %11 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !24
  %LUT_Scales = load ptr, ptr %11, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales, metadata !53, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales, metadata !53, metadata !DIExpression()), !dbg !24
  %12 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !24
  %LUT_Biases = load ptr, ptr %12, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases, metadata !54, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases, metadata !54, metadata !DIExpression()), !dbg !24
  %13 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !24
  %QLUT = load ptr, ptr %13, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %QLUT, metadata !55, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %QLUT, metadata !55, metadata !DIExpression()), !dbg !24
  %.not112 = icmp eq ptr %B, null, !dbg !24
  br i1 %.not112, label %assert_fail13, label %assert_end14, !dbg !24, !prof !29

assert_fail13:                                    ; preds = %assert_end12
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %14(ptr nonnull @.str.7), !dbg !24
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %15 = getelementptr inbounds %1, ptr %B, i64 0, i32 2, !dbg !24
  %16 = load i32, ptr %15, align 4, !dbg !24
  %17 = icmp eq i32 %16, 2, !dbg !24
  br i1 %17, label %assert_end16, label %assert_fail15, !dbg !24, !prof !25

assert_fail15:                                    ; preds = %assert_end14
  %18 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %18(ptr nonnull @.str.8), !dbg !24
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %19 = getelementptr inbounds %1, ptr %B, i64 0, i32 4, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape = load ptr, ptr %19, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape, metadata !56, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape, metadata !56, metadata !DIExpression()), !dbg !24
  %20 = getelementptr inbounds %1, ptr %B, i64 0, i32 5, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides = load ptr, ptr %20, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides, metadata !59, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides, metadata !59, metadata !DIExpression()), !dbg !24
  %21 = getelementptr inbounds %1, ptr %B, i64 0, i32 1, i32 1, !dbg !24
  %dev_id = load i32, ptr %21, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !60, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !60, metadata !DIExpression()), !dbg !24
  %B108 = load ptr, ptr %B, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %B108, metadata !61, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %B108, metadata !61, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %B108, i64 64) ], !dbg !24
  %.not113 = icmp eq ptr %LUT_Scales, null, !dbg !24
  br i1 %.not113, label %assert_fail19, label %assert_end20, !dbg !24, !prof !29

assert_fail19:                                    ; preds = %assert_end16
  %22 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %22(ptr nonnull @.str.9), !dbg !24
  br label %common.ret

assert_end20:                                     ; preds = %assert_end16
  %23 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 2, !dbg !24
  %24 = load i32, ptr %23, align 4, !dbg !24
  %25 = icmp eq i32 %24, 2, !dbg !24
  br i1 %25, label %assert_end22, label %assert_fail21, !dbg !24, !prof !25

assert_fail21:                                    ; preds = %assert_end20
  %26 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %26(ptr nonnull @.str.10), !dbg !24
  br label %common.ret

assert_end22:                                     ; preds = %assert_end20
  %27 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 4, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape = load ptr, ptr %27, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, metadata !64, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, metadata !64, metadata !DIExpression()), !dbg !24
  %28 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides = load ptr, ptr %28, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, metadata !65, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, metadata !65, metadata !DIExpression()), !dbg !24
  %LUT_Scales107 = load ptr, ptr %LUT_Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales107, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales107, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Scales107, i64 64) ], !dbg !24
  %.not114 = icmp eq ptr %LUT_Biases, null, !dbg !24
  br i1 %.not114, label %assert_fail25, label %assert_end26, !dbg !24, !prof !29

assert_fail25:                                    ; preds = %assert_end22
  %29 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %29(ptr nonnull @.str.11), !dbg !24
  br label %common.ret

assert_end26:                                     ; preds = %assert_end22
  %30 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 2, !dbg !24
  %31 = load i32, ptr %30, align 4, !dbg !24
  %32 = icmp eq i32 %31, 2, !dbg !24
  br i1 %32, label %assert_end28, label %assert_fail27, !dbg !24, !prof !25

assert_fail27:                                    ; preds = %assert_end26
  %33 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %33(ptr nonnull @.str.12), !dbg !24
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %34 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 4, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, metadata !67, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, metadata !67, metadata !DIExpression()), !dbg !24
  %35 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides = load ptr, ptr %35, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, metadata !68, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, metadata !68, metadata !DIExpression()), !dbg !24
  %LUT_Biases110 = load ptr, ptr %LUT_Biases, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases110, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases110, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Biases110, i64 64) ], !dbg !24
  %.not115 = icmp eq ptr %QLUT, null, !dbg !24
  br i1 %.not115, label %assert_fail31, label %assert_end32, !dbg !24, !prof !29

assert_fail31:                                    ; preds = %assert_end28
  %36 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %36(ptr nonnull @.str.13), !dbg !24
  br label %common.ret

assert_end32:                                     ; preds = %assert_end28
  %37 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 2, !dbg !24
  %38 = load i32, ptr %37, align 4, !dbg !24
  %39 = icmp eq i32 %38, 3, !dbg !24
  br i1 %39, label %assert_end34, label %assert_fail33, !dbg !24, !prof !25

assert_fail33:                                    ; preds = %assert_end32
  %40 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %40(ptr nonnull @.str.14), !dbg !24
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %41 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 4, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape = load ptr, ptr %41, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape, metadata !70, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape, metadata !70, metadata !DIExpression()), !dbg !24
  %42 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 5, !dbg !24
  %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides = load ptr, ptr %42, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides, metadata !71, metadata !DIExpression()), !dbg !24
  %QLUT109 = load ptr, ptr %QLUT, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %QLUT109, metadata !72, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %QLUT109, metadata !72, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %QLUT109, i64 64) ], !dbg !24
  %43 = getelementptr inbounds %1, ptr %B, i64 0, i32 3, i32 0, !dbg !24
  %44 = load i8, ptr %43, align 1, !dbg !24
  %45 = icmp eq i8 %44, 2, !dbg !24
  %46 = getelementptr inbounds %1, ptr %B, i64 0, i32 3, i32 1, !dbg !24
  %47 = load i8, ptr %46, align 1, !dbg !24
  %48 = icmp eq i8 %47, 16, !dbg !24
  %49 = and i1 %45, %48, !dbg !24
  %50 = getelementptr inbounds %1, ptr %B, i64 0, i32 3, i32 2, !dbg !24
  %51 = load i16, ptr %50, align 2, !dbg !24
  %52 = icmp eq i16 %51, 1, !dbg !24
  %53 = and i1 %49, %52, !dbg !24
  br i1 %53, label %assert_end38, label %assert_fail37, !dbg !24, !prof !25

assert_fail37:                                    ; preds = %assert_end34
  %54 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %54(ptr nonnull @.str.15), !dbg !24
  br label %common.ret

assert_end38:                                     ; preds = %assert_end34
  %55 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape, align 8, !dbg !24, !tbaa !75
  %56 = and i64 %55, 4294967295, !dbg !24
  %57 = icmp eq i64 %56, 512, !dbg !24
  br i1 %57, label %assert_end40, label %assert_fail39, !dbg !24, !prof !25

assert_fail39:                                    ; preds = %assert_end38
  %58 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %58(ptr nonnull @.str.16), !dbg !24
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  %59 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape, i64 1, !dbg !24
  %60 = load i64, ptr %59, align 8, !dbg !24, !tbaa !85
  %61 = and i64 %60, 4294967295, !dbg !24
  %62 = icmp eq i64 %61, 4096, !dbg !24
  br i1 %62, label %assert_end42, label %assert_fail41, !dbg !24, !prof !25

assert_fail41:                                    ; preds = %assert_end40
  %63 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %63(ptr nonnull @.str.17), !dbg !24
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %.not116 = icmp eq ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides, null, !dbg !24
  br i1 %.not116, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end42
  %64 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides, i64 1, !dbg !24
  %65 = load i64, ptr %64, align 8, !dbg !24, !tbaa !87
  %66 = and i64 %65, 4294967295, !dbg !24
  %67 = icmp eq i64 %66, 1, !dbg !24
  %68 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides, align 8, !dbg !24, !tbaa !97
  %69 = and i64 %68, 4294967295, !dbg !24
  %70 = icmp eq i64 %69, 4096, !dbg !24
  %71 = and i1 %67, %70, !dbg !24
  br i1 %71, label %if_end, label %assert_fail43, !dbg !24, !prof !25

if_end:                                           ; preds = %if_then, %assert_end42
  %72 = getelementptr inbounds %1, ptr %B, i64 0, i32 6, !dbg !24
  %73 = load i64, ptr %72, align 8, !dbg !24
  %74 = icmp eq i64 %73, 0, !dbg !24
  br i1 %74, label %assert_end46, label %assert_fail45, !dbg !24, !prof !25

assert_fail43:                                    ; preds = %if_then
  %75 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %75(ptr nonnull @.str.18), !dbg !24
  br label %common.ret

assert_fail45:                                    ; preds = %if_end
  %76 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %76(ptr nonnull @.str.19), !dbg !24
  br label %common.ret

assert_end46:                                     ; preds = %if_end
  %77 = getelementptr inbounds %1, ptr %B, i64 0, i32 1, i32 0, !dbg !24
  %78 = load i32, ptr %77, align 4, !dbg !24
  %79 = icmp eq i32 %78, 1, !dbg !24
  br i1 %79, label %assert_end48, label %assert_fail47, !dbg !24, !prof !25

assert_fail47:                                    ; preds = %assert_end46
  %80 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %80(ptr nonnull @.str.20), !dbg !24
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %.not117 = icmp eq ptr %B108, null, !dbg !24
  br i1 %.not117, label %assert_fail49, label %assert_end50, !dbg !24, !prof !29

assert_fail49:                                    ; preds = %assert_end48
  %81 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %81(ptr nonnull @.str.21), !dbg !24
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %82 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 0, !dbg !24
  %83 = load i8, ptr %82, align 1, !dbg !24
  %84 = icmp eq i8 %83, 2, !dbg !24
  %85 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 1, !dbg !24
  %86 = load i8, ptr %85, align 1, !dbg !24
  %87 = icmp eq i8 %86, 16, !dbg !24
  %88 = and i1 %84, %87, !dbg !24
  %89 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 2, !dbg !24
  %90 = load i16, ptr %89, align 2, !dbg !24
  %91 = icmp eq i16 %90, 1, !dbg !24
  %92 = and i1 %88, %91, !dbg !24
  br i1 %92, label %assert_end52, label %assert_fail51, !dbg !24, !prof !25

assert_fail51:                                    ; preds = %assert_end50
  %93 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %93(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end52:                                     ; preds = %assert_end50
  %94 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !99
  %95 = and i64 %94, 4294967295, !dbg !24
  %96 = icmp eq i64 %95, 512, !dbg !24
  br i1 %96, label %assert_end54, label %assert_fail53, !dbg !24, !prof !25

assert_fail53:                                    ; preds = %assert_end52
  %97 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %97(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end54:                                     ; preds = %assert_end52
  %98 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, i64 1, !dbg !24
  %99 = load i64, ptr %98, align 8, !dbg !24, !tbaa !109
  %100 = and i64 %99, 4294967295, !dbg !24
  %101 = icmp eq i64 %100, 64, !dbg !24
  br i1 %101, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %102 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %102(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %.not118 = icmp eq ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not118, label %if_end58, label %if_then57, !dbg !24, !prof !29

if_then57:                                        ; preds = %assert_end56
  %103 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, i64 1, !dbg !24
  %104 = load i64, ptr %103, align 8, !dbg !24, !tbaa !111
  %105 = and i64 %104, 4294967295, !dbg !24
  %106 = icmp eq i64 %105, 1, !dbg !24
  %107 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, align 8, !dbg !24, !tbaa !121
  %108 = and i64 %107, 4294967295, !dbg !24
  %109 = icmp eq i64 %108, 64, !dbg !24
  %110 = and i1 %106, %109, !dbg !24
  br i1 %110, label %if_end58, label %assert_fail59, !dbg !24, !prof !25

if_end58:                                         ; preds = %if_then57, %assert_end56
  %111 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 6, !dbg !24
  %112 = load i64, ptr %111, align 8, !dbg !24
  %113 = icmp eq i64 %112, 0, !dbg !24
  br i1 %113, label %assert_end62, label %assert_fail61, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %if_then57
  %114 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %114(ptr nonnull @.str.25), !dbg !24
  br label %common.ret

assert_fail61:                                    ; preds = %if_end58
  %115 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %115(ptr nonnull @.str.26), !dbg !24
  br label %common.ret

assert_end62:                                     ; preds = %if_end58
  %116 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 0, !dbg !24
  %117 = load i32, ptr %116, align 4, !dbg !24
  %118 = icmp eq i32 %117, 1, !dbg !24
  br i1 %118, label %assert_end64, label %assert_fail63, !dbg !24, !prof !25

assert_fail63:                                    ; preds = %assert_end62
  %119 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %119(ptr nonnull @.str.27), !dbg !24
  br label %common.ret

assert_end64:                                     ; preds = %assert_end62
  %120 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 1, !dbg !24
  %121 = load i32, ptr %120, align 4, !dbg !24
  %122 = icmp eq i32 %dev_id, %121, !dbg !24
  br i1 %122, label %assert_end66, label %assert_fail65, !dbg !24, !prof !25

assert_fail65:                                    ; preds = %assert_end64
  %123 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %123(ptr nonnull @.str.28), !dbg !24
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not119 = icmp eq ptr %LUT_Scales107, null, !dbg !24
  br i1 %.not119, label %assert_fail67, label %assert_end68, !dbg !24, !prof !29

assert_fail67:                                    ; preds = %assert_end66
  %124 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %124(ptr nonnull @.str.29), !dbg !24
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %125 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 0, !dbg !24
  %126 = load i8, ptr %125, align 1, !dbg !24
  %127 = icmp eq i8 %126, 2, !dbg !24
  %128 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 1, !dbg !24
  %129 = load i8, ptr %128, align 1, !dbg !24
  %130 = icmp eq i8 %129, 16, !dbg !24
  %131 = and i1 %127, %130, !dbg !24
  %132 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 2, !dbg !24
  %133 = load i16, ptr %132, align 2, !dbg !24
  %134 = icmp eq i16 %133, 1, !dbg !24
  %135 = and i1 %131, %134, !dbg !24
  br i1 %135, label %assert_end70, label %assert_fail69, !dbg !24, !prof !25

assert_fail69:                                    ; preds = %assert_end68
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %137 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !123
  %138 = and i64 %137, 4294967295, !dbg !24
  %139 = icmp eq i64 %138, 512, !dbg !24
  br i1 %139, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %140 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %140(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %141 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, i64 1, !dbg !24
  %142 = load i64, ptr %141, align 8, !dbg !24, !tbaa !133
  %143 = and i64 %142, 4294967295, !dbg !24
  %144 = icmp eq i64 %143, 64, !dbg !24
  br i1 %144, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %145 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %145(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %.not120 = icmp eq ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not120, label %if_end76, label %if_then75, !dbg !24, !prof !29

if_then75:                                        ; preds = %assert_end74
  %146 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, i64 1, !dbg !24
  %147 = load i64, ptr %146, align 8, !dbg !24, !tbaa !135
  %148 = and i64 %147, 4294967295, !dbg !24
  %149 = icmp eq i64 %148, 1, !dbg !24
  %150 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, align 8, !dbg !24, !tbaa !145
  %151 = and i64 %150, 4294967295, !dbg !24
  %152 = icmp eq i64 %151, 64, !dbg !24
  %153 = and i1 %149, %152, !dbg !24
  br i1 %153, label %if_end76, label %assert_fail77, !dbg !24, !prof !25

if_end76:                                         ; preds = %if_then75, %assert_end74
  %154 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 6, !dbg !24
  %155 = load i64, ptr %154, align 8, !dbg !24
  %156 = icmp eq i64 %155, 0, !dbg !24
  br i1 %156, label %assert_end80, label %assert_fail79, !dbg !24, !prof !25

assert_fail77:                                    ; preds = %if_then75
  %157 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %157(ptr nonnull @.str.33), !dbg !24
  br label %common.ret

assert_fail79:                                    ; preds = %if_end76
  %158 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %158(ptr nonnull @.str.34), !dbg !24
  br label %common.ret

assert_end80:                                     ; preds = %if_end76
  %159 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 0, !dbg !24
  %160 = load i32, ptr %159, align 4, !dbg !24
  %161 = icmp eq i32 %160, 1, !dbg !24
  br i1 %161, label %assert_end82, label %assert_fail81, !dbg !24, !prof !25

assert_fail81:                                    ; preds = %assert_end80
  %162 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %162(ptr nonnull @.str.35), !dbg !24
  br label %common.ret

assert_end82:                                     ; preds = %assert_end80
  %163 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 1, !dbg !24
  %164 = load i32, ptr %163, align 4, !dbg !24
  %165 = icmp eq i32 %dev_id, %164, !dbg !24
  br i1 %165, label %assert_end84, label %assert_fail83, !dbg !24, !prof !25

assert_fail83:                                    ; preds = %assert_end82
  %166 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %166(ptr nonnull @.str.36), !dbg !24
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %.not121 = icmp eq ptr %LUT_Biases110, null, !dbg !24
  br i1 %.not121, label %assert_fail85, label %assert_end86, !dbg !24, !prof !29

assert_fail85:                                    ; preds = %assert_end84
  %167 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %167(ptr nonnull @.str.37), !dbg !24
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %168 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 3, i32 0, !dbg !24
  %169 = load i8, ptr %168, align 1, !dbg !24
  %170 = icmp eq i8 %169, 0, !dbg !24
  %171 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 3, i32 1, !dbg !24
  %172 = load i8, ptr %171, align 1, !dbg !24
  %173 = icmp eq i8 %172, 8, !dbg !24
  %174 = and i1 %170, %173, !dbg !24
  %175 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 3, i32 2, !dbg !24
  %176 = load i16, ptr %175, align 2, !dbg !24
  %177 = icmp eq i16 %176, 1, !dbg !24
  %178 = and i1 %174, %177, !dbg !24
  br i1 %178, label %assert_end88, label %assert_fail87, !dbg !24, !prof !25

assert_fail87:                                    ; preds = %assert_end86
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %179(ptr nonnull @.str.38), !dbg !24
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %180 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape, align 8, !dbg !24, !tbaa !147
  %181 = and i64 %180, 4294967295, !dbg !24
  %182 = icmp eq i64 %181, 512, !dbg !24
  br i1 %182, label %assert_end90, label %assert_fail89, !dbg !24, !prof !25

assert_fail89:                                    ; preds = %assert_end88
  %183 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %183(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %184 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape, i64 1, !dbg !24
  %185 = load i64, ptr %184, align 8, !dbg !24, !tbaa !157
  %186 = and i64 %185, 4294967295, !dbg !24
  %187 = icmp eq i64 %186, 1024, !dbg !24
  br i1 %187, label %assert_end92, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %188 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %188(ptr nonnull @.str.40), !dbg !24
  br label %common.ret

assert_end92:                                     ; preds = %assert_end90
  %189 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape, i64 2, !dbg !24
  %190 = load i64, ptr %189, align 8, !dbg !24, !tbaa !159
  %191 = and i64 %190, 4294967295, !dbg !24
  %192 = icmp eq i64 %191, 16, !dbg !24
  br i1 %192, label %assert_end94, label %assert_fail93, !dbg !24, !prof !25

assert_fail93:                                    ; preds = %assert_end92
  %193 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %193(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end94:                                     ; preds = %assert_end92
  %.not122 = icmp eq ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides, null, !dbg !24
  br i1 %.not122, label %if_end96, label %if_then95, !dbg !24, !prof !29

if_then95:                                        ; preds = %assert_end94
  %194 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides, i64 2, !dbg !24
  %195 = load i64, ptr %194, align 8, !dbg !24, !tbaa !162
  %196 = and i64 %195, 4294967295, !dbg !24
  %197 = icmp eq i64 %196, 1, !dbg !24
  %198 = getelementptr inbounds i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides, i64 1, !dbg !24
  %199 = load i64, ptr %198, align 8, !dbg !24, !tbaa !172
  %200 = and i64 %199, 4294967295, !dbg !24
  %201 = icmp eq i64 %200, 16, !dbg !24
  %202 = and i1 %197, %201, !dbg !24
  %203 = load i64, ptr %preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides, align 8, !dbg !24, !tbaa !175
  %204 = and i64 %203, 4294967295, !dbg !24
  %205 = icmp eq i64 %204, 16384, !dbg !24
  %206 = and i1 %202, %205, !dbg !24
  br i1 %206, label %if_end96, label %assert_fail97, !dbg !24, !prof !25

if_end96:                                         ; preds = %if_then95, %assert_end94
  %207 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 6, !dbg !24
  %208 = load i64, ptr %207, align 8, !dbg !24
  %209 = icmp eq i64 %208, 0, !dbg !24
  br i1 %209, label %assert_end100, label %assert_fail99, !dbg !24, !prof !25

assert_fail97:                                    ; preds = %if_then95
  %210 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %210(ptr nonnull @.str.42), !dbg !24
  br label %common.ret

assert_fail99:                                    ; preds = %if_end96
  %211 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %211(ptr nonnull @.str.43), !dbg !24
  br label %common.ret

assert_end100:                                    ; preds = %if_end96
  %212 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 1, i32 0, !dbg !24
  %213 = load i32, ptr %212, align 4, !dbg !24
  %214 = icmp eq i32 %213, 1, !dbg !24
  br i1 %214, label %assert_end102, label %assert_fail101, !dbg !24, !prof !25

assert_fail101:                                   ; preds = %assert_end100
  %215 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %215(ptr nonnull @.str.44), !dbg !24
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %216 = getelementptr inbounds %1, ptr %QLUT, i64 0, i32 1, i32 1, !dbg !24
  %217 = load i32, ptr %216, align 4, !dbg !24
  %218 = icmp eq i32 %dev_id, %217, !dbg !24
  br i1 %218, label %assert_end104, label %assert_fail103, !dbg !24, !prof !25

assert_fail103:                                   ; preds = %assert_end102
  %219 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %219(ptr nonnull @.str.45), !dbg !24
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %.not123 = icmp eq ptr %QLUT109, null, !dbg !24
  br i1 %.not123, label %assert_fail105, label %assert_end106, !dbg !24, !prof !29

assert_fail105:                                   ; preds = %assert_end104
  %220 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %220(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  tail call fastcc void @preprocessor_t12_int8_m4096_k4096_n512_b2_compute_(ptr nonnull %LUT_Scales107, ptr nonnull %B108, ptr nonnull %QLUT109, ptr nonnull %LUT_Biases110), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite)
define internal fastcc void @preprocessor_t12_int8_m4096_k4096_n512_b2_compute_(ptr noalias nocapture align 64 %LUT_Scales, ptr noalias align 64 %B, ptr noalias writeonly align 64 %QLUT, ptr noalias nocapture writeonly align 64 %LUT_Biases) unnamed_addr #3 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !181, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %B, metadata !182, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %QLUT, metadata !183, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i32 0, metadata !186, metadata !DIExpression()), !dbg !185
  br label %for_begin_kk.outer.preheader, !dbg !185

for_begin_kk.outer.preheader:                     ; preds = %entry, %for_end_kk.outer
  %indvars.iv18 = phi i64 [ 0, %entry ], [ %indvars.iv.next19, %for_end_kk.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv18, metadata !186, metadata !DIExpression()), !dbg !185
  %0 = shl nsw i64 %indvars.iv18, 6
  %1 = shl nsw i64 %indvars.iv18, 12
  call void @llvm.dbg.declare(metadata i32 0, metadata !187, metadata !DIExpression()), !dbg !185
  br label %for_body_kk.outer, !dbg !185

for_body_kk.outer:                                ; preds = %for_begin_kk.outer.preheader, %for_body_kk.outer
  %indvars.iv = phi i64 [ 0, %for_begin_kk.outer.preheader ], [ %indvars.iv.next, %for_body_kk.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !187, metadata !DIExpression()), !dbg !185
  %2 = add nuw nsw i64 %indvars.iv, %0, !dbg !185
  %3 = getelementptr inbounds half, ptr %LUT_Scales, i64 %2, !dbg !185
  %4 = shl nsw i64 %indvars.iv, 6
  %5 = add nuw nsw i64 %4, %1
  call void @llvm.dbg.declare(metadata i32 0, metadata !188, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i64 0, metadata !188, metadata !DIExpression()), !dbg !185
  %6 = getelementptr inbounds half, ptr %B, i64 %5, !dbg !185
  %7 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0(ptr %6), !dbg !185
  %8 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %7, 0, !dbg !185
  %9 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %7, 1, !dbg !185
  %10 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %7, 2, !dbg !185
  %11 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %7, 3, !dbg !185
  %12 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %8), !dbg !185
  %13 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %9), !dbg !185
  %14 = fadd <8 x half> %12, %13, !dbg !185
  %15 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %10), !dbg !185
  %16 = fadd <8 x half> %15, %14, !dbg !185
  %17 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %11), !dbg !185
  %18 = fadd <8 x half> %17, %16, !dbg !185
  %19 = tail call half @llvm.aarch64.neon.fmaxv.f16.v8f16(<8 x half> %18), !dbg !185
  %20 = fdiv half %19, 0xH57F0, !dbg !185
  %21 = fcmp ogt half %20, 0xH0000, !dbg !185
  %22 = select i1 %21, half %20, half 0xH0000, !dbg !185
  call void @llvm.dbg.declare(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i64 1, metadata !188, metadata !DIExpression()), !dbg !185
  %23 = or i64 %5, 32, !dbg !185
  %24 = getelementptr inbounds half, ptr %B, i64 %23, !dbg !185
  %25 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0(ptr nonnull %24), !dbg !185
  %26 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %25, 0, !dbg !185
  %27 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %25, 1, !dbg !185
  %28 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %25, 2, !dbg !185
  %29 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %25, 3, !dbg !185
  %30 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %26), !dbg !185
  %31 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %27), !dbg !185
  %32 = fadd <8 x half> %30, %31, !dbg !185
  %33 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %28), !dbg !185
  %34 = fadd <8 x half> %33, %32, !dbg !185
  %35 = tail call <8 x half> @llvm.fabs.v8f16(<8 x half> %29), !dbg !185
  %36 = fadd <8 x half> %35, %34, !dbg !185
  %37 = tail call half @llvm.aarch64.neon.fmaxv.f16.v8f16(<8 x half> %36), !dbg !185
  %38 = fdiv half %37, 0xH57F0, !dbg !185
  %39 = fcmp olt half %22, %38, !dbg !185
  %40 = select i1 %39, half %38, half %22, !dbg !185
  call void @llvm.dbg.declare(metadata i64 2, metadata !188, metadata !DIExpression()), !dbg !185
  store half %40, ptr %3, align 2, !dbg !185, !tbaa !189
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !185
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !187, metadata !DIExpression()), !dbg !185
  %exitcond.not = icmp eq i64 %indvars.iv.next, 64, !dbg !185
  br i1 %exitcond.not, label %for_end_kk.outer, label %for_body_kk.outer, !dbg !185, !prof !29

for_end_kk.outer:                                 ; preds = %for_body_kk.outer
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1, !dbg !185
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next19, metadata !186, metadata !DIExpression()), !dbg !185
  %exitcond21.not = icmp eq i64 %indvars.iv.next19, 512, !dbg !185
  br i1 %exitcond21.not, label %for_begin_k.outer5.preheader, label %for_begin_kk.outer.preheader, !dbg !185, !prof !29

for_begin_k.outer5.preheader:                     ; preds = %for_end_kk.outer, %for_end_k.outer7
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for_end_k.outer7 ], [ 0, %for_end_kk.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv27, metadata !186, metadata !DIExpression()), !dbg !185
  %41 = shl nsw i64 %indvars.iv27, 6
  %42 = shl nsw i64 %indvars.iv27, 14
  %43 = shl nsw i64 %indvars.iv27, 12
  call void @llvm.dbg.declare(metadata i32 0, metadata !188, metadata !DIExpression()), !dbg !185
  br label %for_body_k.outer6, !dbg !185

for_end_n3:                                       ; preds = %for_end_k.outer7
  ret void, !dbg !185

for_body_k.outer6:                                ; preds = %for_begin_k.outer5.preheader, %lut_ctor_g4_int8_k16_b2.exit
  %indvars.iv22 = phi i64 [ 0, %for_begin_k.outer5.preheader ], [ %indvars.iv.next23, %lut_ctor_g4_int8_k16_b2.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv22, metadata !188, metadata !DIExpression()), !dbg !185
  %44 = add nuw nsw i64 %indvars.iv22, %41, !dbg !185
  call void @llvm.dbg.declare(metadata i64 %44, metadata !193, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i64 %44, metadata !193, metadata !DIExpression()), !dbg !185
  %45 = shl nuw nsw i64 %indvars.iv22, 8, !dbg !185
  %46 = add nuw nsw i64 %45, %42, !dbg !185
  %47 = getelementptr inbounds i8, ptr %QLUT, i64 %46, !dbg !185
  %48 = shl nuw nsw i64 %indvars.iv22, 6, !dbg !185
  %49 = add nuw nsw i64 %48, %43, !dbg !185
  %50 = getelementptr inbounds half, ptr %B, i64 %49, !dbg !185
  %51 = getelementptr inbounds half, ptr %LUT_Scales, i64 %44, !dbg !185
  %52 = load half, ptr %51, align 2, !dbg !185, !tbaa !189
  %53 = getelementptr inbounds i8, ptr %47, i64 16, !dbg !185
  %54 = getelementptr inbounds i8, ptr %47, i64 32, !dbg !185
  %55 = getelementptr inbounds i8, ptr %47, i64 48, !dbg !185
  %56 = getelementptr inbounds i8, ptr %47, i64 64, !dbg !185
  %57 = getelementptr inbounds i8, ptr %47, i64 80, !dbg !185
  %58 = getelementptr inbounds i8, ptr %47, i64 96, !dbg !185
  %59 = getelementptr inbounds i8, ptr %47, i64 112, !dbg !185
  %60 = fcmp une half %52, 0xH0000, !dbg !185
  %61 = fdiv half 0xH3C00, %52, !dbg !185
  %62 = select i1 %60, half %61, half 0xH0000, !dbg !185
  %63 = insertelement <8 x half> undef, half %62, i64 0, !dbg !185
  %64 = shufflevector <8 x half> %63, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !185
  br label %65, !dbg !185

65:                                               ; preds = %65, %for_body_k.outer6
  %66 = phi i64 [ 0, %for_body_k.outer6 ], [ %428, %65 ], !dbg !185
  %67 = phi half [ 0xH0000, %for_body_k.outer6 ], [ %427, %65 ], !dbg !185
  %68 = shl nsw i64 %66, 5, !dbg !185
  %69 = getelementptr inbounds half, ptr %50, i64 %68, !dbg !185
  %70 = tail call { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0(ptr %69), !dbg !185
  %71 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %70, 0, !dbg !185
  %72 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %70, 1, !dbg !185
  %73 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %70, 2, !dbg !185
  %74 = extractvalue { <8 x half>, <8 x half>, <8 x half>, <8 x half> } %70, 3, !dbg !185
  %75 = fsub <8 x half> %71, %72, !dbg !185
  %76 = fsub <8 x half> %75, %73, !dbg !185
  %77 = fsub <8 x half> %76, %74, !dbg !185
  %78 = fadd <8 x half> %71, %72, !dbg !185
  %79 = fsub <8 x half> %78, %73, !dbg !185
  %80 = fsub <8 x half> %79, %74, !dbg !185
  %81 = fadd <8 x half> %73, %75, !dbg !185
  %82 = fsub <8 x half> %81, %74, !dbg !185
  %83 = fadd <8 x half> %73, %78, !dbg !185
  %84 = fsub <8 x half> %83, %74, !dbg !185
  %85 = fadd <8 x half> %74, %76, !dbg !185
  %86 = fadd <8 x half> %74, %79, !dbg !185
  %87 = fadd <8 x half> %74, %81, !dbg !185
  %88 = fadd <8 x half> %74, %83, !dbg !185
  %89 = fneg <8 x half> %88, !dbg !185
  %90 = fneg <8 x half> %87, !dbg !185
  %91 = fneg <8 x half> %86, !dbg !185
  %92 = fneg <8 x half> %85, !dbg !185
  %93 = fneg <8 x half> %84, !dbg !185
  %94 = fneg <8 x half> %82, !dbg !185
  %95 = fneg <8 x half> %80, !dbg !185
  %96 = fneg <8 x half> %77, !dbg !185
  %97 = shufflevector <8 x half> %89, <8 x half> poison, <2 x i32> <i32 0, i32 1>, !dbg !185
  %98 = fpext <2 x half> %97 to <2 x float>, !dbg !185
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> <i32 1, i32 poison>, !dbg !185
  %100 = fadd <2 x float> %99, %98, !dbg !185
  %101 = extractelement <2 x float> %100, i64 0, !dbg !185
  %102 = extractelement <8 x half> %89, i64 2, !dbg !185
  %103 = fpext half %102 to float, !dbg !185
  %104 = fadd float %101, %103, !dbg !185
  %105 = extractelement <8 x half> %89, i64 3, !dbg !185
  %106 = fpext half %105 to float, !dbg !185
  %107 = fadd float %104, %106, !dbg !185
  %108 = extractelement <8 x half> %89, i64 4, !dbg !185
  %109 = fpext half %108 to float, !dbg !185
  %110 = fadd float %107, %109, !dbg !185
  %111 = extractelement <8 x half> %89, i64 5, !dbg !185
  %112 = fpext half %111 to float, !dbg !185
  %113 = fadd float %110, %112, !dbg !185
  %114 = extractelement <8 x half> %89, i64 6, !dbg !185
  %115 = fpext half %114 to float, !dbg !185
  %116 = fadd float %113, %115, !dbg !185
  %117 = extractelement <8 x half> %89, i64 7, !dbg !185
  %118 = fpext half %117 to float, !dbg !185
  %119 = fadd float %116, %118, !dbg !185
  %120 = fpext half %67 to float, !dbg !185
  %121 = fadd float %119, %120, !dbg !185
  %122 = fmul <8 x half> %64, %89, !dbg !185
  %123 = fmul <8 x half> %64, %77, !dbg !185
  %124 = fmul <8 x half> %64, %90, !dbg !185
  %125 = fmul <8 x half> %64, %80, !dbg !185
  %126 = fmul <8 x half> %64, %91, !dbg !185
  %127 = fmul <8 x half> %64, %82, !dbg !185
  %128 = fmul <8 x half> %64, %92, !dbg !185
  %129 = fmul <8 x half> %64, %84, !dbg !185
  %130 = fmul <8 x half> %64, %93, !dbg !185
  %131 = fmul <8 x half> %64, %85, !dbg !185
  %132 = fmul <8 x half> %64, %94, !dbg !185
  %133 = fmul <8 x half> %64, %86, !dbg !185
  %134 = fmul <8 x half> %64, %95, !dbg !185
  %135 = fmul <8 x half> %64, %87, !dbg !185
  %136 = fmul <8 x half> %64, %96, !dbg !185
  %137 = fmul <8 x half> %64, %88, !dbg !185
  %138 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %122), !dbg !185
  %139 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %138), !dbg !185
  %140 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %123), !dbg !185
  %141 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %140), !dbg !185
  %142 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %124), !dbg !185
  %143 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %142), !dbg !185
  %144 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %125), !dbg !185
  %145 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %144), !dbg !185
  %146 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %126), !dbg !185
  %147 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %146), !dbg !185
  %148 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %127), !dbg !185
  %149 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %148), !dbg !185
  %150 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %128), !dbg !185
  %151 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %150), !dbg !185
  %152 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %129), !dbg !185
  %153 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %152), !dbg !185
  %154 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %130), !dbg !185
  %155 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %154), !dbg !185
  %156 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %131), !dbg !185
  %157 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %156), !dbg !185
  %158 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %132), !dbg !185
  %159 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %158), !dbg !185
  %160 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %133), !dbg !185
  %161 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %160), !dbg !185
  %162 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %134), !dbg !185
  %163 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %162), !dbg !185
  %164 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %135), !dbg !185
  %165 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %164), !dbg !185
  %166 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %136), !dbg !185
  %167 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %166), !dbg !185
  %168 = tail call <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half> %137), !dbg !185
  %169 = tail call <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16> %168), !dbg !185
  %170 = shl i64 %66, 7, !dbg !185
  %171 = getelementptr inbounds i8, ptr %47, i64 %170, !dbg !185
  %172 = extractelement <8 x i8> %139, i64 0, !dbg !185
  store i8 %172, ptr %171, align 64, !dbg !185
  %173 = getelementptr inbounds i8, ptr %171, i64 1, !dbg !185
  %174 = extractelement <8 x i8> %141, i64 0, !dbg !185
  store i8 %174, ptr %173, align 1, !dbg !185
  %175 = getelementptr inbounds i8, ptr %171, i64 2, !dbg !185
  %176 = extractelement <8 x i8> %143, i64 0, !dbg !185
  store i8 %176, ptr %175, align 2, !dbg !185
  %177 = getelementptr inbounds i8, ptr %171, i64 3, !dbg !185
  %178 = extractelement <8 x i8> %145, i64 0, !dbg !185
  store i8 %178, ptr %177, align 1, !dbg !185
  %179 = getelementptr inbounds i8, ptr %171, i64 4, !dbg !185
  %180 = extractelement <8 x i8> %147, i64 0, !dbg !185
  store i8 %180, ptr %179, align 4, !dbg !185
  %181 = getelementptr inbounds i8, ptr %171, i64 5, !dbg !185
  %182 = extractelement <8 x i8> %149, i64 0, !dbg !185
  store i8 %182, ptr %181, align 1, !dbg !185
  %183 = getelementptr inbounds i8, ptr %171, i64 6, !dbg !185
  %184 = extractelement <8 x i8> %151, i64 0, !dbg !185
  store i8 %184, ptr %183, align 2, !dbg !185
  %185 = getelementptr inbounds i8, ptr %171, i64 7, !dbg !185
  %186 = extractelement <8 x i8> %153, i64 0, !dbg !185
  store i8 %186, ptr %185, align 1, !dbg !185
  %187 = getelementptr inbounds i8, ptr %171, i64 8, !dbg !185
  %188 = extractelement <8 x i8> %155, i64 0, !dbg !185
  store i8 %188, ptr %187, align 8, !dbg !185
  %189 = getelementptr inbounds i8, ptr %171, i64 9, !dbg !185
  %190 = extractelement <8 x i8> %157, i64 0, !dbg !185
  store i8 %190, ptr %189, align 1, !dbg !185
  %191 = getelementptr inbounds i8, ptr %171, i64 10, !dbg !185
  %192 = extractelement <8 x i8> %159, i64 0, !dbg !185
  store i8 %192, ptr %191, align 2, !dbg !185
  %193 = getelementptr inbounds i8, ptr %171, i64 11, !dbg !185
  %194 = extractelement <8 x i8> %161, i64 0, !dbg !185
  store i8 %194, ptr %193, align 1, !dbg !185
  %195 = getelementptr inbounds i8, ptr %171, i64 12, !dbg !185
  %196 = extractelement <8 x i8> %163, i64 0, !dbg !185
  store i8 %196, ptr %195, align 4, !dbg !185
  %197 = getelementptr inbounds i8, ptr %171, i64 13, !dbg !185
  %198 = extractelement <8 x i8> %165, i64 0, !dbg !185
  store i8 %198, ptr %197, align 1, !dbg !185
  %199 = getelementptr inbounds i8, ptr %171, i64 14, !dbg !185
  %200 = extractelement <8 x i8> %167, i64 0, !dbg !185
  store i8 %200, ptr %199, align 2, !dbg !185
  %201 = getelementptr inbounds i8, ptr %171, i64 15, !dbg !185
  %202 = extractelement <8 x i8> %169, i64 0, !dbg !185
  store i8 %202, ptr %201, align 1, !dbg !185
  %203 = getelementptr inbounds i8, ptr %53, i64 %170, !dbg !185
  %204 = extractelement <8 x i8> %139, i64 1, !dbg !185
  store i8 %204, ptr %203, align 16, !dbg !185
  %205 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !185
  %206 = extractelement <8 x i8> %141, i64 1, !dbg !185
  store i8 %206, ptr %205, align 1, !dbg !185
  %207 = getelementptr inbounds i8, ptr %203, i64 2, !dbg !185
  %208 = extractelement <8 x i8> %143, i64 1, !dbg !185
  store i8 %208, ptr %207, align 2, !dbg !185
  %209 = getelementptr inbounds i8, ptr %203, i64 3, !dbg !185
  %210 = extractelement <8 x i8> %145, i64 1, !dbg !185
  store i8 %210, ptr %209, align 1, !dbg !185
  %211 = getelementptr inbounds i8, ptr %203, i64 4, !dbg !185
  %212 = extractelement <8 x i8> %147, i64 1, !dbg !185
  store i8 %212, ptr %211, align 4, !dbg !185
  %213 = getelementptr inbounds i8, ptr %203, i64 5, !dbg !185
  %214 = extractelement <8 x i8> %149, i64 1, !dbg !185
  store i8 %214, ptr %213, align 1, !dbg !185
  %215 = getelementptr inbounds i8, ptr %203, i64 6, !dbg !185
  %216 = extractelement <8 x i8> %151, i64 1, !dbg !185
  store i8 %216, ptr %215, align 2, !dbg !185
  %217 = getelementptr inbounds i8, ptr %203, i64 7, !dbg !185
  %218 = extractelement <8 x i8> %153, i64 1, !dbg !185
  store i8 %218, ptr %217, align 1, !dbg !185
  %219 = getelementptr inbounds i8, ptr %203, i64 8, !dbg !185
  %220 = extractelement <8 x i8> %155, i64 1, !dbg !185
  store i8 %220, ptr %219, align 8, !dbg !185
  %221 = getelementptr inbounds i8, ptr %203, i64 9, !dbg !185
  %222 = extractelement <8 x i8> %157, i64 1, !dbg !185
  store i8 %222, ptr %221, align 1, !dbg !185
  %223 = getelementptr inbounds i8, ptr %203, i64 10, !dbg !185
  %224 = extractelement <8 x i8> %159, i64 1, !dbg !185
  store i8 %224, ptr %223, align 2, !dbg !185
  %225 = getelementptr inbounds i8, ptr %203, i64 11, !dbg !185
  %226 = extractelement <8 x i8> %161, i64 1, !dbg !185
  store i8 %226, ptr %225, align 1, !dbg !185
  %227 = getelementptr inbounds i8, ptr %203, i64 12, !dbg !185
  %228 = extractelement <8 x i8> %163, i64 1, !dbg !185
  store i8 %228, ptr %227, align 4, !dbg !185
  %229 = getelementptr inbounds i8, ptr %203, i64 13, !dbg !185
  %230 = extractelement <8 x i8> %165, i64 1, !dbg !185
  store i8 %230, ptr %229, align 1, !dbg !185
  %231 = getelementptr inbounds i8, ptr %203, i64 14, !dbg !185
  %232 = extractelement <8 x i8> %167, i64 1, !dbg !185
  store i8 %232, ptr %231, align 2, !dbg !185
  %233 = getelementptr inbounds i8, ptr %203, i64 15, !dbg !185
  %234 = extractelement <8 x i8> %169, i64 1, !dbg !185
  store i8 %234, ptr %233, align 1, !dbg !185
  %235 = getelementptr inbounds i8, ptr %54, i64 %170, !dbg !185
  %236 = extractelement <8 x i8> %139, i64 2, !dbg !185
  store i8 %236, ptr %235, align 32, !dbg !185
  %237 = getelementptr inbounds i8, ptr %235, i64 1, !dbg !185
  %238 = extractelement <8 x i8> %141, i64 2, !dbg !185
  store i8 %238, ptr %237, align 1, !dbg !185
  %239 = getelementptr inbounds i8, ptr %235, i64 2, !dbg !185
  %240 = extractelement <8 x i8> %143, i64 2, !dbg !185
  store i8 %240, ptr %239, align 2, !dbg !185
  %241 = getelementptr inbounds i8, ptr %235, i64 3, !dbg !185
  %242 = extractelement <8 x i8> %145, i64 2, !dbg !185
  store i8 %242, ptr %241, align 1, !dbg !185
  %243 = getelementptr inbounds i8, ptr %235, i64 4, !dbg !185
  %244 = extractelement <8 x i8> %147, i64 2, !dbg !185
  store i8 %244, ptr %243, align 4, !dbg !185
  %245 = getelementptr inbounds i8, ptr %235, i64 5, !dbg !185
  %246 = extractelement <8 x i8> %149, i64 2, !dbg !185
  store i8 %246, ptr %245, align 1, !dbg !185
  %247 = getelementptr inbounds i8, ptr %235, i64 6, !dbg !185
  %248 = extractelement <8 x i8> %151, i64 2, !dbg !185
  store i8 %248, ptr %247, align 2, !dbg !185
  %249 = getelementptr inbounds i8, ptr %235, i64 7, !dbg !185
  %250 = extractelement <8 x i8> %153, i64 2, !dbg !185
  store i8 %250, ptr %249, align 1, !dbg !185
  %251 = getelementptr inbounds i8, ptr %235, i64 8, !dbg !185
  %252 = extractelement <8 x i8> %155, i64 2, !dbg !185
  store i8 %252, ptr %251, align 8, !dbg !185
  %253 = getelementptr inbounds i8, ptr %235, i64 9, !dbg !185
  %254 = extractelement <8 x i8> %157, i64 2, !dbg !185
  store i8 %254, ptr %253, align 1, !dbg !185
  %255 = getelementptr inbounds i8, ptr %235, i64 10, !dbg !185
  %256 = extractelement <8 x i8> %159, i64 2, !dbg !185
  store i8 %256, ptr %255, align 2, !dbg !185
  %257 = getelementptr inbounds i8, ptr %235, i64 11, !dbg !185
  %258 = extractelement <8 x i8> %161, i64 2, !dbg !185
  store i8 %258, ptr %257, align 1, !dbg !185
  %259 = getelementptr inbounds i8, ptr %235, i64 12, !dbg !185
  %260 = extractelement <8 x i8> %163, i64 2, !dbg !185
  store i8 %260, ptr %259, align 4, !dbg !185
  %261 = getelementptr inbounds i8, ptr %235, i64 13, !dbg !185
  %262 = extractelement <8 x i8> %165, i64 2, !dbg !185
  store i8 %262, ptr %261, align 1, !dbg !185
  %263 = getelementptr inbounds i8, ptr %235, i64 14, !dbg !185
  %264 = extractelement <8 x i8> %167, i64 2, !dbg !185
  store i8 %264, ptr %263, align 2, !dbg !185
  %265 = getelementptr inbounds i8, ptr %235, i64 15, !dbg !185
  %266 = extractelement <8 x i8> %169, i64 2, !dbg !185
  store i8 %266, ptr %265, align 1, !dbg !185
  %267 = getelementptr inbounds i8, ptr %55, i64 %170, !dbg !185
  %268 = extractelement <8 x i8> %139, i64 3, !dbg !185
  store i8 %268, ptr %267, align 16, !dbg !185
  %269 = getelementptr inbounds i8, ptr %267, i64 1, !dbg !185
  %270 = extractelement <8 x i8> %141, i64 3, !dbg !185
  store i8 %270, ptr %269, align 1, !dbg !185
  %271 = getelementptr inbounds i8, ptr %267, i64 2, !dbg !185
  %272 = extractelement <8 x i8> %143, i64 3, !dbg !185
  store i8 %272, ptr %271, align 2, !dbg !185
  %273 = getelementptr inbounds i8, ptr %267, i64 3, !dbg !185
  %274 = extractelement <8 x i8> %145, i64 3, !dbg !185
  store i8 %274, ptr %273, align 1, !dbg !185
  %275 = getelementptr inbounds i8, ptr %267, i64 4, !dbg !185
  %276 = extractelement <8 x i8> %147, i64 3, !dbg !185
  store i8 %276, ptr %275, align 4, !dbg !185
  %277 = getelementptr inbounds i8, ptr %267, i64 5, !dbg !185
  %278 = extractelement <8 x i8> %149, i64 3, !dbg !185
  store i8 %278, ptr %277, align 1, !dbg !185
  %279 = getelementptr inbounds i8, ptr %267, i64 6, !dbg !185
  %280 = extractelement <8 x i8> %151, i64 3, !dbg !185
  store i8 %280, ptr %279, align 2, !dbg !185
  %281 = getelementptr inbounds i8, ptr %267, i64 7, !dbg !185
  %282 = extractelement <8 x i8> %153, i64 3, !dbg !185
  store i8 %282, ptr %281, align 1, !dbg !185
  %283 = getelementptr inbounds i8, ptr %267, i64 8, !dbg !185
  %284 = extractelement <8 x i8> %155, i64 3, !dbg !185
  store i8 %284, ptr %283, align 8, !dbg !185
  %285 = getelementptr inbounds i8, ptr %267, i64 9, !dbg !185
  %286 = extractelement <8 x i8> %157, i64 3, !dbg !185
  store i8 %286, ptr %285, align 1, !dbg !185
  %287 = getelementptr inbounds i8, ptr %267, i64 10, !dbg !185
  %288 = extractelement <8 x i8> %159, i64 3, !dbg !185
  store i8 %288, ptr %287, align 2, !dbg !185
  %289 = getelementptr inbounds i8, ptr %267, i64 11, !dbg !185
  %290 = extractelement <8 x i8> %161, i64 3, !dbg !185
  store i8 %290, ptr %289, align 1, !dbg !185
  %291 = getelementptr inbounds i8, ptr %267, i64 12, !dbg !185
  %292 = extractelement <8 x i8> %163, i64 3, !dbg !185
  store i8 %292, ptr %291, align 4, !dbg !185
  %293 = getelementptr inbounds i8, ptr %267, i64 13, !dbg !185
  %294 = extractelement <8 x i8> %165, i64 3, !dbg !185
  store i8 %294, ptr %293, align 1, !dbg !185
  %295 = getelementptr inbounds i8, ptr %267, i64 14, !dbg !185
  %296 = extractelement <8 x i8> %167, i64 3, !dbg !185
  store i8 %296, ptr %295, align 2, !dbg !185
  %297 = getelementptr inbounds i8, ptr %267, i64 15, !dbg !185
  %298 = extractelement <8 x i8> %169, i64 3, !dbg !185
  store i8 %298, ptr %297, align 1, !dbg !185
  %299 = getelementptr inbounds i8, ptr %56, i64 %170, !dbg !185
  %300 = extractelement <8 x i8> %139, i64 4, !dbg !185
  store i8 %300, ptr %299, align 64, !dbg !185
  %301 = getelementptr inbounds i8, ptr %299, i64 1, !dbg !185
  %302 = extractelement <8 x i8> %141, i64 4, !dbg !185
  store i8 %302, ptr %301, align 1, !dbg !185
  %303 = getelementptr inbounds i8, ptr %299, i64 2, !dbg !185
  %304 = extractelement <8 x i8> %143, i64 4, !dbg !185
  store i8 %304, ptr %303, align 2, !dbg !185
  %305 = getelementptr inbounds i8, ptr %299, i64 3, !dbg !185
  %306 = extractelement <8 x i8> %145, i64 4, !dbg !185
  store i8 %306, ptr %305, align 1, !dbg !185
  %307 = getelementptr inbounds i8, ptr %299, i64 4, !dbg !185
  %308 = extractelement <8 x i8> %147, i64 4, !dbg !185
  store i8 %308, ptr %307, align 4, !dbg !185
  %309 = getelementptr inbounds i8, ptr %299, i64 5, !dbg !185
  %310 = extractelement <8 x i8> %149, i64 4, !dbg !185
  store i8 %310, ptr %309, align 1, !dbg !185
  %311 = getelementptr inbounds i8, ptr %299, i64 6, !dbg !185
  %312 = extractelement <8 x i8> %151, i64 4, !dbg !185
  store i8 %312, ptr %311, align 2, !dbg !185
  %313 = getelementptr inbounds i8, ptr %299, i64 7, !dbg !185
  %314 = extractelement <8 x i8> %153, i64 4, !dbg !185
  store i8 %314, ptr %313, align 1, !dbg !185
  %315 = getelementptr inbounds i8, ptr %299, i64 8, !dbg !185
  %316 = extractelement <8 x i8> %155, i64 4, !dbg !185
  store i8 %316, ptr %315, align 8, !dbg !185
  %317 = getelementptr inbounds i8, ptr %299, i64 9, !dbg !185
  %318 = extractelement <8 x i8> %157, i64 4, !dbg !185
  store i8 %318, ptr %317, align 1, !dbg !185
  %319 = getelementptr inbounds i8, ptr %299, i64 10, !dbg !185
  %320 = extractelement <8 x i8> %159, i64 4, !dbg !185
  store i8 %320, ptr %319, align 2, !dbg !185
  %321 = getelementptr inbounds i8, ptr %299, i64 11, !dbg !185
  %322 = extractelement <8 x i8> %161, i64 4, !dbg !185
  store i8 %322, ptr %321, align 1, !dbg !185
  %323 = getelementptr inbounds i8, ptr %299, i64 12, !dbg !185
  %324 = extractelement <8 x i8> %163, i64 4, !dbg !185
  store i8 %324, ptr %323, align 4, !dbg !185
  %325 = getelementptr inbounds i8, ptr %299, i64 13, !dbg !185
  %326 = extractelement <8 x i8> %165, i64 4, !dbg !185
  store i8 %326, ptr %325, align 1, !dbg !185
  %327 = getelementptr inbounds i8, ptr %299, i64 14, !dbg !185
  %328 = extractelement <8 x i8> %167, i64 4, !dbg !185
  store i8 %328, ptr %327, align 2, !dbg !185
  %329 = getelementptr inbounds i8, ptr %299, i64 15, !dbg !185
  %330 = extractelement <8 x i8> %169, i64 4, !dbg !185
  store i8 %330, ptr %329, align 1, !dbg !185
  %331 = getelementptr inbounds i8, ptr %57, i64 %170, !dbg !185
  %332 = extractelement <8 x i8> %139, i64 5, !dbg !185
  store i8 %332, ptr %331, align 16, !dbg !185
  %333 = getelementptr inbounds i8, ptr %331, i64 1, !dbg !185
  %334 = extractelement <8 x i8> %141, i64 5, !dbg !185
  store i8 %334, ptr %333, align 1, !dbg !185
  %335 = getelementptr inbounds i8, ptr %331, i64 2, !dbg !185
  %336 = extractelement <8 x i8> %143, i64 5, !dbg !185
  store i8 %336, ptr %335, align 2, !dbg !185
  %337 = getelementptr inbounds i8, ptr %331, i64 3, !dbg !185
  %338 = extractelement <8 x i8> %145, i64 5, !dbg !185
  store i8 %338, ptr %337, align 1, !dbg !185
  %339 = getelementptr inbounds i8, ptr %331, i64 4, !dbg !185
  %340 = extractelement <8 x i8> %147, i64 5, !dbg !185
  store i8 %340, ptr %339, align 4, !dbg !185
  %341 = getelementptr inbounds i8, ptr %331, i64 5, !dbg !185
  %342 = extractelement <8 x i8> %149, i64 5, !dbg !185
  store i8 %342, ptr %341, align 1, !dbg !185
  %343 = getelementptr inbounds i8, ptr %331, i64 6, !dbg !185
  %344 = extractelement <8 x i8> %151, i64 5, !dbg !185
  store i8 %344, ptr %343, align 2, !dbg !185
  %345 = getelementptr inbounds i8, ptr %331, i64 7, !dbg !185
  %346 = extractelement <8 x i8> %153, i64 5, !dbg !185
  store i8 %346, ptr %345, align 1, !dbg !185
  %347 = getelementptr inbounds i8, ptr %331, i64 8, !dbg !185
  %348 = extractelement <8 x i8> %155, i64 5, !dbg !185
  store i8 %348, ptr %347, align 8, !dbg !185
  %349 = getelementptr inbounds i8, ptr %331, i64 9, !dbg !185
  %350 = extractelement <8 x i8> %157, i64 5, !dbg !185
  store i8 %350, ptr %349, align 1, !dbg !185
  %351 = getelementptr inbounds i8, ptr %331, i64 10, !dbg !185
  %352 = extractelement <8 x i8> %159, i64 5, !dbg !185
  store i8 %352, ptr %351, align 2, !dbg !185
  %353 = getelementptr inbounds i8, ptr %331, i64 11, !dbg !185
  %354 = extractelement <8 x i8> %161, i64 5, !dbg !185
  store i8 %354, ptr %353, align 1, !dbg !185
  %355 = getelementptr inbounds i8, ptr %331, i64 12, !dbg !185
  %356 = extractelement <8 x i8> %163, i64 5, !dbg !185
  store i8 %356, ptr %355, align 4, !dbg !185
  %357 = getelementptr inbounds i8, ptr %331, i64 13, !dbg !185
  %358 = extractelement <8 x i8> %165, i64 5, !dbg !185
  store i8 %358, ptr %357, align 1, !dbg !185
  %359 = getelementptr inbounds i8, ptr %331, i64 14, !dbg !185
  %360 = extractelement <8 x i8> %167, i64 5, !dbg !185
  store i8 %360, ptr %359, align 2, !dbg !185
  %361 = getelementptr inbounds i8, ptr %331, i64 15, !dbg !185
  %362 = extractelement <8 x i8> %169, i64 5, !dbg !185
  store i8 %362, ptr %361, align 1, !dbg !185
  %363 = getelementptr inbounds i8, ptr %58, i64 %170, !dbg !185
  %364 = extractelement <8 x i8> %139, i64 6, !dbg !185
  store i8 %364, ptr %363, align 32, !dbg !185
  %365 = getelementptr inbounds i8, ptr %363, i64 1, !dbg !185
  %366 = extractelement <8 x i8> %141, i64 6, !dbg !185
  store i8 %366, ptr %365, align 1, !dbg !185
  %367 = getelementptr inbounds i8, ptr %363, i64 2, !dbg !185
  %368 = extractelement <8 x i8> %143, i64 6, !dbg !185
  store i8 %368, ptr %367, align 2, !dbg !185
  %369 = getelementptr inbounds i8, ptr %363, i64 3, !dbg !185
  %370 = extractelement <8 x i8> %145, i64 6, !dbg !185
  store i8 %370, ptr %369, align 1, !dbg !185
  %371 = getelementptr inbounds i8, ptr %363, i64 4, !dbg !185
  %372 = extractelement <8 x i8> %147, i64 6, !dbg !185
  store i8 %372, ptr %371, align 4, !dbg !185
  %373 = getelementptr inbounds i8, ptr %363, i64 5, !dbg !185
  %374 = extractelement <8 x i8> %149, i64 6, !dbg !185
  store i8 %374, ptr %373, align 1, !dbg !185
  %375 = getelementptr inbounds i8, ptr %363, i64 6, !dbg !185
  %376 = extractelement <8 x i8> %151, i64 6, !dbg !185
  store i8 %376, ptr %375, align 2, !dbg !185
  %377 = getelementptr inbounds i8, ptr %363, i64 7, !dbg !185
  %378 = extractelement <8 x i8> %153, i64 6, !dbg !185
  store i8 %378, ptr %377, align 1, !dbg !185
  %379 = getelementptr inbounds i8, ptr %363, i64 8, !dbg !185
  %380 = extractelement <8 x i8> %155, i64 6, !dbg !185
  store i8 %380, ptr %379, align 8, !dbg !185
  %381 = getelementptr inbounds i8, ptr %363, i64 9, !dbg !185
  %382 = extractelement <8 x i8> %157, i64 6, !dbg !185
  store i8 %382, ptr %381, align 1, !dbg !185
  %383 = getelementptr inbounds i8, ptr %363, i64 10, !dbg !185
  %384 = extractelement <8 x i8> %159, i64 6, !dbg !185
  store i8 %384, ptr %383, align 2, !dbg !185
  %385 = getelementptr inbounds i8, ptr %363, i64 11, !dbg !185
  %386 = extractelement <8 x i8> %161, i64 6, !dbg !185
  store i8 %386, ptr %385, align 1, !dbg !185
  %387 = getelementptr inbounds i8, ptr %363, i64 12, !dbg !185
  %388 = extractelement <8 x i8> %163, i64 6, !dbg !185
  store i8 %388, ptr %387, align 4, !dbg !185
  %389 = getelementptr inbounds i8, ptr %363, i64 13, !dbg !185
  %390 = extractelement <8 x i8> %165, i64 6, !dbg !185
  store i8 %390, ptr %389, align 1, !dbg !185
  %391 = getelementptr inbounds i8, ptr %363, i64 14, !dbg !185
  %392 = extractelement <8 x i8> %167, i64 6, !dbg !185
  store i8 %392, ptr %391, align 2, !dbg !185
  %393 = getelementptr inbounds i8, ptr %363, i64 15, !dbg !185
  %394 = extractelement <8 x i8> %169, i64 6, !dbg !185
  store i8 %394, ptr %393, align 1, !dbg !185
  %395 = getelementptr inbounds i8, ptr %59, i64 %170, !dbg !185
  %396 = extractelement <8 x i8> %139, i64 7, !dbg !185
  store i8 %396, ptr %395, align 16, !dbg !185
  %397 = getelementptr inbounds i8, ptr %395, i64 1, !dbg !185
  %398 = extractelement <8 x i8> %141, i64 7, !dbg !185
  store i8 %398, ptr %397, align 1, !dbg !185
  %399 = getelementptr inbounds i8, ptr %395, i64 2, !dbg !185
  %400 = extractelement <8 x i8> %143, i64 7, !dbg !185
  store i8 %400, ptr %399, align 2, !dbg !185
  %401 = getelementptr inbounds i8, ptr %395, i64 3, !dbg !185
  %402 = extractelement <8 x i8> %145, i64 7, !dbg !185
  store i8 %402, ptr %401, align 1, !dbg !185
  %403 = getelementptr inbounds i8, ptr %395, i64 4, !dbg !185
  %404 = extractelement <8 x i8> %147, i64 7, !dbg !185
  store i8 %404, ptr %403, align 4, !dbg !185
  %405 = getelementptr inbounds i8, ptr %395, i64 5, !dbg !185
  %406 = extractelement <8 x i8> %149, i64 7, !dbg !185
  store i8 %406, ptr %405, align 1, !dbg !185
  %407 = getelementptr inbounds i8, ptr %395, i64 6, !dbg !185
  %408 = extractelement <8 x i8> %151, i64 7, !dbg !185
  store i8 %408, ptr %407, align 2, !dbg !185
  %409 = getelementptr inbounds i8, ptr %395, i64 7, !dbg !185
  %410 = extractelement <8 x i8> %153, i64 7, !dbg !185
  store i8 %410, ptr %409, align 1, !dbg !185
  %411 = getelementptr inbounds i8, ptr %395, i64 8, !dbg !185
  %412 = extractelement <8 x i8> %155, i64 7, !dbg !185
  store i8 %412, ptr %411, align 8, !dbg !185
  %413 = getelementptr inbounds i8, ptr %395, i64 9, !dbg !185
  %414 = extractelement <8 x i8> %157, i64 7, !dbg !185
  store i8 %414, ptr %413, align 1, !dbg !185
  %415 = getelementptr inbounds i8, ptr %395, i64 10, !dbg !185
  %416 = extractelement <8 x i8> %159, i64 7, !dbg !185
  store i8 %416, ptr %415, align 2, !dbg !185
  %417 = getelementptr inbounds i8, ptr %395, i64 11, !dbg !185
  %418 = extractelement <8 x i8> %161, i64 7, !dbg !185
  store i8 %418, ptr %417, align 1, !dbg !185
  %419 = getelementptr inbounds i8, ptr %395, i64 12, !dbg !185
  %420 = extractelement <8 x i8> %163, i64 7, !dbg !185
  store i8 %420, ptr %419, align 4, !dbg !185
  %421 = getelementptr inbounds i8, ptr %395, i64 13, !dbg !185
  %422 = extractelement <8 x i8> %165, i64 7, !dbg !185
  store i8 %422, ptr %421, align 1, !dbg !185
  %423 = getelementptr inbounds i8, ptr %395, i64 14, !dbg !185
  %424 = extractelement <8 x i8> %167, i64 7, !dbg !185
  store i8 %424, ptr %423, align 2, !dbg !185
  %425 = getelementptr inbounds i8, ptr %395, i64 15, !dbg !185
  %426 = extractelement <8 x i8> %169, i64 7, !dbg !185
  store i8 %426, ptr %425, align 1, !dbg !185
  %427 = fptrunc float %121 to half, !dbg !185
  %428 = add nuw nsw i64 %66, 1, !dbg !185
  %429 = icmp eq i64 %428, 2, !dbg !185
  br i1 %429, label %lut_ctor_g4_int8_k16_b2.exit, label %65, !dbg !185, !llvm.loop !194

lut_ctor_g4_int8_k16_b2.exit:                     ; preds = %65
  %430 = getelementptr inbounds half, ptr %LUT_Biases, i64 %44, !dbg !185
  store half %52, ptr %51, align 2, !dbg !185, !tbaa !189
  store half %427, ptr %430, align 2, !dbg !185, !tbaa !189
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !185
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next23, metadata !188, metadata !DIExpression()), !dbg !185
  %exitcond26.not = icmp eq i64 %indvars.iv.next23, 64, !dbg !185
  br i1 %exitcond26.not, label %for_end_k.outer7, label %for_body_k.outer6, !dbg !185, !prof !29

for_end_k.outer7:                                 ; preds = %lut_ctor_g4_int8_k16_b2.exit
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1, !dbg !185
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next28, metadata !186, metadata !DIExpression()), !dbg !185
  %exitcond30.not = icmp eq i64 %indvars.iv.next28, 512, !dbg !185
  br i1 %exitcond30.not, label %for_end_n3, label %for_begin_k.outer5.preheader, !dbg !185, !prof !29
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #4 {
b0:
  %v0 = bitcast float %a0 to i32
  %v1 = and i32 %v0, 2147483647
  %v2 = add nsw i32 %v1, -947912704
  %v3 = add nsw i32 %v1, -1199570944
  %v4 = icmp ult i32 %v2, %v3
  br i1 %v4, label %b1, label %b5

b1:                                               ; preds = %b0
  %v5 = lshr i32 %v0, 13
  %v6 = and i32 %v5, 65535
  %v7 = add nuw nsw i32 %v6, -114688
  %v8 = and i32 %v0, 8191
  %v9 = icmp ugt i32 %v8, 4096
  br i1 %v9, label %b2, label %b3

b2:                                               ; preds = %b1
  %v10 = add nuw nsw i32 %v6, -114687
  br label %b13

b3:                                               ; preds = %b1
  %v11 = icmp eq i32 %v8, 4096
  br i1 %v11, label %b4, label %b13

b4:                                               ; preds = %b3
  %v12 = and i32 %v7, 65535
  %v13 = and i32 %v5, 1
  %v14 = add nuw nsw i32 %v12, %v13
  br label %b13

b5:                                               ; preds = %b0
  %v15 = icmp ugt i32 %v1, 2139095040
  br i1 %v15, label %b6, label %b7

b6:                                               ; preds = %b5
  %v16 = lshr i32 %v0, 13
  %v17 = and i32 %v16, 511
  %v18 = or i32 %v17, 32256
  br label %b13

b7:                                               ; preds = %b5
  %v19 = icmp ugt i32 %v1, 1199570943
  br i1 %v19, label %b13, label %b8

b8:                                               ; preds = %b7
  %v20 = icmp ult i32 %v1, 754974720
  br i1 %v20, label %b13, label %b9

b9:                                               ; preds = %b8
  %v21 = lshr i32 %v1, 23
  %v22 = sub nsw i32 113, %v21
  %v23 = and i32 %v0, 8388607
  %v24 = or i32 %v23, 8388608
  %v25 = add nsw i32 %v21, -81
  %v26 = shl i32 %v24, %v25
  %v27 = icmp ne i32 %v26, 0
  %v28 = lshr i32 %v24, %v22
  %v29 = zext i1 %v27 to i32
  %v30 = lshr i32 %v28, 13
  %v31 = and i32 %v28, 8191
  %v32 = or i32 %v31, %v29
  %v33 = icmp ugt i32 %v32, 4096
  br i1 %v33, label %b10, label %b11

b10:                                              ; preds = %b9
  %v34 = add nuw nsw i32 %v30, 1
  br label %b13

b11:                                              ; preds = %b9
  %v35 = icmp eq i32 %v32, 4096
  br i1 %v35, label %b12, label %b13

b12:                                              ; preds = %b11
  %v36 = and i32 %v30, 1
  %v37 = add nuw nsw i32 %v36, %v30
  br label %b13

b13:                                              ; preds = %b12, %b11, %b10, %b8, %b7, %b6, %b4, %b3, %b2
  %v38 = phi i32 [ %v18, %b6 ], [ %v10, %b2 ], [ %v14, %b4 ], [ %v7, %b3 ], [ 31744, %b7 ], [ 0, %b8 ], [ %v34, %b10 ], [ %v37, %b12 ], [ %v30, %b11 ]
  %v39 = lshr i32 %v0, 16
  %v40 = and i32 %v39, 32768
  %v41 = or i32 %v38, %v40
  %vlast = trunc i32 %v41 to i16
  ret i16 %vlast
}

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #4 {
b0:
  %v1 = and i16 %a0, 32767
  %v2 = zext i16 %v1 to i32
  %v3 = add nsw i16 %v1, -1024
  %v4 = icmp ult i16 %v3, 30720
  br i1 %v4, label %b1, label %b2

b1:                                               ; preds = %b0
  %v5 = shl nuw nsw i32 %v2, 13
  %v6 = add nuw nsw i32 %v5, 939524096
  br label %b6

b2:                                               ; preds = %b0
  %v7 = icmp ugt i16 %v1, 31743
  br i1 %v7, label %b3, label %b4

b3:                                               ; preds = %b2
  %v8 = shl nuw nsw i32 %v2, 13
  %v9 = or i32 %v8, 2139095040
  br label %b6

b4:                                               ; preds = %b2
  %v10 = icmp eq i16 %v1, 0
  br i1 %v10, label %b6, label %b5

b5:                                               ; preds = %b4
  %v11 = icmp ult i16 %v1, 256
  %v12 = lshr i32 %v2, 8
  %v13 = select i1 %v11, i32 %v2, i32 %v12
  %v14 = select i1 %v11, i32 32, i32 24
  %v15 = icmp ult i32 %v13, 16
  %v16 = lshr i32 %v13, 4
  %v17 = add nsw i32 %v14, -4
  %v18 = select i1 %v15, i32 %v13, i32 %v16
  %v19 = select i1 %v15, i32 %v14, i32 %v17
  %v20 = icmp ult i32 %v18, 4
  %v21 = lshr i32 %v18, 2
  %v22 = add nsw i32 %v19, -2
  %v23 = select i1 %v20, i32 %v18, i32 %v21
  %v24 = select i1 %v20, i32 %v19, i32 %v22
  %v25 = icmp ult i32 %v23, 2
  %v26 = sub nsw i32 0, %v23
  %v27 = select i1 %v25, i32 %v26, i32 -2
  %v28 = add nsw i32 %v27, %v24
  %v29 = add nsw i32 %v28, -8
  %v30 = shl i32 %v2, %v29
  %v31 = xor i32 %v30, 8388608
  %v32 = shl i32 %v28, 23
  %v33 = sub i32 1124073472, %v32
  %v34 = or i32 %v31, %v33
  br label %b6

b6:                                               ; preds = %b5, %b4, %b3, %b1
  %v35 = phi i32 [ %v6, %b1 ], [ %v9, %b3 ], [ %v34, %b5 ], [ 0, %b4 ]
  %v36 = and i16 %a0, -32768
  %v37 = zext i16 %v36 to i32
  %v38 = shl nuw i32 %v37, 16
  %v39 = or i32 %v35, %v38
  %v40 = bitcast i32 %v39 to float
  ret float %v40
}

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare { <8 x half>, <8 x half>, <8 x half>, <8 x half> } @llvm.aarch64.neon.ld4.v8f16.p0(ptr) #5

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fabs.v8f16(<8 x half>) #6

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare half @llvm.aarch64.neon.fmaxv.f16.v8f16(<8 x half>) #7

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.aarch64.neon.fcvtns.v8i16.v8f16(<8 x half>) #7

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i8> @llvm.aarch64.neon.sqxtn.v8i8(<8 x i16>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nofree noinline nosync nounwind memory(argmem: readwrite) "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #4 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #5 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #6 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2, !2}
!llvm.module.flags = !{!3, !4, !5, !6, !7, !8, !9, !10}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "IRModule.CodeGenLLVM", directory: ".")
!2 = !{!"Apple clang version 16.0.0 (clang-1600.0.26.6)"}
!3 = !{i32 2, !"SDK Version", [2 x i32] [i32 15, i32 2]}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 1}
!8 = !{i32 2, !"tvm_target", !"llvm -mtriple=arm64-apple-darwin23.1.0 -mcpu=apple-m2"}
!9 = !{i32 4, !"Debug Info Version", i32 3}
!10 = !{i32 4, !"Dwarf Version", i32 2}
!11 = distinct !DISubprogram(name: "preprocessor_t12_int8_m4096_k4096_n512_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !16, !14, !15, !16, !15}
!14 = !DIBasicType(name: "int32", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14)
!17 = !{!18, !19, !20, !21, !22, !23}
!18 = !DILocalVariable(name: "args", arg: 1, scope: !11, file: !1, type: !15)
!19 = !DILocalVariable(name: "arg_type_ids", arg: 2, scope: !11, file: !1, type: !16)
!20 = !DILocalVariable(name: "num_args", arg: 3, scope: !11, file: !1, type: !14)
!21 = !DILocalVariable(name: "out_ret_value", arg: 4, scope: !11, file: !1, type: !15)
!22 = !DILocalVariable(name: "out_ret_tcode", arg: 5, scope: !11, file: !1, type: !16)
!23 = !DILocalVariable(name: "resource_handle", arg: 6, scope: !11, file: !1, type: !15)
!24 = !DILocation(line: 0, scope: !11)
!25 = !{!"branch_weights", i32 1048576, i32 1}
!26 = !{!27, !27, i64 0}
!27 = !{!"ctx_ptr", !28, i64 0}
!28 = !{!"tvm-tbaa"}
!29 = !{!"branch_weights", i32 1, i32 1048576}
!30 = !{!31, !31, i64 0}
!31 = !{!"0x6000006d6eb0.w4.b0", !32, i64 0}
!32 = !{!"0x6000006d6eb0.w8.b0", !33, i64 0}
!33 = !{!"0x6000006d6eb0.w16.b0", !34, i64 0}
!34 = !{!"0x6000006d6eb0.w32.b0", !35, i64 0}
!35 = !{!"0x6000006d6eb0.w64.b0", !36, i64 0}
!36 = !{!"0x6000006d6eb0.w128.b0", !37, i64 0}
!37 = !{!"0x6000006d6eb0.w256.b0", !38, i64 0}
!38 = !{!"0x6000006d6eb0.w512.b0", !39, i64 0}
!39 = !{!"0x6000006d6eb0.w1024.b0", !40, i64 0}
!40 = !{!"0x6000006d6eb0", !28, i64 0}
!41 = !DILocalVariable(name: "B.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x6000006d6eb0.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x6000006d6eb0.w4.b8", !47, i64 0}
!47 = !{!"0x6000006d6eb0.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x6000006d6eb0.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "QLUT.code", scope: !11, file: !1, type: !14)
!52 = !DILocalVariable(name: "B", scope: !11, file: !1, type: !15)
!53 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!54 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!55 = !DILocalVariable(name: "QLUT", scope: !11, file: !1, type: !15)
!56 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.B.shape", scope: !11, file: !1, type: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58)
!58 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!59 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.B.strides", scope: !11, file: !1, type: !57)
!60 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!61 = !DILocalVariable(name: "B", scope: !11, file: !1, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63)
!63 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!64 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape", scope: !11, file: !1, type: !57)
!65 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides", scope: !11, file: !1, type: !57)
!66 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !62)
!67 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape", scope: !11, file: !1, type: !57)
!68 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides", scope: !11, file: !1, type: !57)
!69 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !62)
!70 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.shape", scope: !11, file: !1, type: !57)
!71 = !DILocalVariable(name: "preprocessor_t12_int8_m4096_k4096_n512_b2.QLUT.strides", scope: !11, file: !1, type: !57)
!72 = !DILocalVariable(name: "QLUT", scope: !11, file: !1, type: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74)
!74 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!75 = !{!76, !76, i64 0}
!76 = !{!"0x600000683a20.w8.b0", !77, i64 0}
!77 = !{!"0x600000683a20.w16.b0", !78, i64 0}
!78 = !{!"0x600000683a20.w32.b0", !79, i64 0}
!79 = !{!"0x600000683a20.w64.b0", !80, i64 0}
!80 = !{!"0x600000683a20.w128.b0", !81, i64 0}
!81 = !{!"0x600000683a20.w256.b0", !82, i64 0}
!82 = !{!"0x600000683a20.w512.b0", !83, i64 0}
!83 = !{!"0x600000683a20.w1024.b0", !84, i64 0}
!84 = !{!"0x600000683a20", !28, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"0x600000683a20.w8.b8", !77, i64 0}
!87 = !{!88, !88, i64 0}
!88 = !{!"0x600000683e70.w8.b8", !89, i64 0}
!89 = !{!"0x600000683e70.w16.b0", !90, i64 0}
!90 = !{!"0x600000683e70.w32.b0", !91, i64 0}
!91 = !{!"0x600000683e70.w64.b0", !92, i64 0}
!92 = !{!"0x600000683e70.w128.b0", !93, i64 0}
!93 = !{!"0x600000683e70.w256.b0", !94, i64 0}
!94 = !{!"0x600000683e70.w512.b0", !95, i64 0}
!95 = !{!"0x600000683e70.w1024.b0", !96, i64 0}
!96 = !{!"0x600000683e70", !28, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"0x600000683e70.w8.b0", !89, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x600000546430.w8.b0", !101, i64 0}
!101 = !{!"0x600000546430.w16.b0", !102, i64 0}
!102 = !{!"0x600000546430.w32.b0", !103, i64 0}
!103 = !{!"0x600000546430.w64.b0", !104, i64 0}
!104 = !{!"0x600000546430.w128.b0", !105, i64 0}
!105 = !{!"0x600000546430.w256.b0", !106, i64 0}
!106 = !{!"0x600000546430.w512.b0", !107, i64 0}
!107 = !{!"0x600000546430.w1024.b0", !108, i64 0}
!108 = !{!"0x600000546430", !28, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x600000546430.w8.b8", !101, i64 0}
!111 = !{!112, !112, i64 0}
!112 = !{!"0x60000063d200.w8.b8", !113, i64 0}
!113 = !{!"0x60000063d200.w16.b0", !114, i64 0}
!114 = !{!"0x60000063d200.w32.b0", !115, i64 0}
!115 = !{!"0x60000063d200.w64.b0", !116, i64 0}
!116 = !{!"0x60000063d200.w128.b0", !117, i64 0}
!117 = !{!"0x60000063d200.w256.b0", !118, i64 0}
!118 = !{!"0x60000063d200.w512.b0", !119, i64 0}
!119 = !{!"0x60000063d200.w1024.b0", !120, i64 0}
!120 = !{!"0x60000063d200", !28, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x60000063d200.w8.b0", !113, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x60000063e8b0.w8.b0", !125, i64 0}
!125 = !{!"0x60000063e8b0.w16.b0", !126, i64 0}
!126 = !{!"0x60000063e8b0.w32.b0", !127, i64 0}
!127 = !{!"0x60000063e8b0.w64.b0", !128, i64 0}
!128 = !{!"0x60000063e8b0.w128.b0", !129, i64 0}
!129 = !{!"0x60000063e8b0.w256.b0", !130, i64 0}
!130 = !{!"0x60000063e8b0.w512.b0", !131, i64 0}
!131 = !{!"0x60000063e8b0.w1024.b0", !132, i64 0}
!132 = !{!"0x60000063e8b0", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x60000063e8b0.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x60000063da70.w8.b8", !137, i64 0}
!137 = !{!"0x60000063da70.w16.b0", !138, i64 0}
!138 = !{!"0x60000063da70.w32.b0", !139, i64 0}
!139 = !{!"0x60000063da70.w64.b0", !140, i64 0}
!140 = !{!"0x60000063da70.w128.b0", !141, i64 0}
!141 = !{!"0x60000063da70.w256.b0", !142, i64 0}
!142 = !{!"0x60000063da70.w512.b0", !143, i64 0}
!143 = !{!"0x60000063da70.w1024.b0", !144, i64 0}
!144 = !{!"0x60000063da70", !28, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"0x60000063da70.w8.b0", !137, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"0x6000006de070.w8.b0", !149, i64 0}
!149 = !{!"0x6000006de070.w16.b0", !150, i64 0}
!150 = !{!"0x6000006de070.w32.b0", !151, i64 0}
!151 = !{!"0x6000006de070.w64.b0", !152, i64 0}
!152 = !{!"0x6000006de070.w128.b0", !153, i64 0}
!153 = !{!"0x6000006de070.w256.b0", !154, i64 0}
!154 = !{!"0x6000006de070.w512.b0", !155, i64 0}
!155 = !{!"0x6000006de070.w1024.b0", !156, i64 0}
!156 = !{!"0x6000006de070", !28, i64 0}
!157 = !{!158, !158, i64 0}
!158 = !{!"0x6000006de070.w8.b8", !149, i64 0}
!159 = !{!160, !160, i64 0}
!160 = !{!"0x6000006de070.w8.b16", !161, i64 0}
!161 = !{!"0x6000006de070.w16.b16", !150, i64 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"0x60000062fae0.w8.b16", !164, i64 0}
!164 = !{!"0x60000062fae0.w16.b16", !165, i64 0}
!165 = !{!"0x60000062fae0.w32.b0", !166, i64 0}
!166 = !{!"0x60000062fae0.w64.b0", !167, i64 0}
!167 = !{!"0x60000062fae0.w128.b0", !168, i64 0}
!168 = !{!"0x60000062fae0.w256.b0", !169, i64 0}
!169 = !{!"0x60000062fae0.w512.b0", !170, i64 0}
!170 = !{!"0x60000062fae0.w1024.b0", !171, i64 0}
!171 = !{!"0x60000062fae0", !28, i64 0}
!172 = !{!173, !173, i64 0}
!173 = !{!"0x60000062fae0.w8.b8", !174, i64 0}
!174 = !{!"0x60000062fae0.w16.b0", !165, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"0x60000062fae0.w8.b0", !174, i64 0}
!177 = distinct !DISubprogram(name: "preprocessor_t12_int8_m4096_k4096_n512_b2_compute_", scope: !1, file: !1, type: !178, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!178 = !DISubroutineType(cc: DW_CC_nocall, types: !179)
!179 = !{!14, !62, !62, !73, !62}
!180 = !{!181, !182, !183, !184}
!181 = !DILocalVariable(name: "LUT_Scales", arg: 1, scope: !177, file: !1, type: !62)
!182 = !DILocalVariable(name: "B", arg: 2, scope: !177, file: !1, type: !62)
!183 = !DILocalVariable(name: "QLUT", arg: 3, scope: !177, file: !1, type: !73)
!184 = !DILocalVariable(name: "LUT_Biases", arg: 4, scope: !177, file: !1, type: !62)
!185 = !DILocation(line: 0, scope: !177)
!186 = !DILocalVariable(name: "n", scope: !177, file: !1, type: !14)
!187 = !DILocalVariable(name: "kk.outer", scope: !177, file: !1, type: !14)
!188 = !DILocalVariable(name: "k.outer", scope: !177, file: !1, type: !14)
!189 = !{!190, !190, i64 0}
!190 = !{!"__fp16", !191, i64 0}
!191 = !{!"omnipotent char", !192, i64 0}
!192 = !{!"Simple C++ TBAA"}
!193 = !DILocalVariable(name: "cse_var_1", scope: !177, file: !1, type: !14)
!194 = distinct !{!194, !195}
!195 = !{!"llvm.loop.mustprogress"}
