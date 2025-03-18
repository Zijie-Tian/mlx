; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { ptr, i32 }
%closure_loop_parallel_n.outer = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [89 x i8] c"Assert fail: num_args == 6, qgemm_lut_t12_int8_m4096_k4096_n512_b2: num_args should be 6\00", align 1
@.str.1 = private constant [107 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t12_int8_m4096_k4096_n512_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [109 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t12_int8_m4096_k4096_n512_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [140 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t12_int8_m4096_k4096_n512_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [148 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t12_int8_m4096_k4096_n512_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [160 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t12_int8_m4096_k4096_n512_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [176 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t12_int8_m4096_k4096_n512_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [176 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t12_int8_m4096_k4096_n512_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [140 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t12_int8_m4096_k4096_n512_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [121 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t12_int8_m4096_k4096_n512_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [123 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [125 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [127 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [131 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [133 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [139 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [141 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [139 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [141 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [121 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t12_int8_m4096_k4096_n512_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [123 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [242 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [250 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_shape[0]) == 16, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape[0] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_shape[0])\00", align 1
@.str.23 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_shape[1]) == 1024, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_shape[1])\00", align 1
@.str.24 = private constant [252 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_shape[2]) == 128, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape[2] has an unsatisfied constraint: 128 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_shape[2])\00", align 1
@.str.25 = private constant [330 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_strides[2]) and 128 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_strides[1]) and 131072 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_A_strides[0]), qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [209 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [189 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [116 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t12_int8_m4096_k4096_n512_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [249 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [258 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_shape[0]) == 512, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [260 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_shape[1]) == 1024, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape[1] has an unsatisfied constraint: 1024 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [256 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [336 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_strides[1]) and 16384 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_strides[0]), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [215 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [195 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [201 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [120 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [265 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [224 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [204 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [210 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [126 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [281 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [279 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[0]) == 512, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[1]) == 64, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [273 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Scales_strides[1]) and 64 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Scales_strides[0]), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [236 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [216 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [222 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [134 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [281 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [279 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[0]) == 512, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [277 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[1]) == 64, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [273 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Biases_strides[1]) and 64 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_LUT_Biases_strides[0]), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [236 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [216 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [222 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [134 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [245 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [252 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_C_shape[0]) == 512, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape[0] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_C_shape[0])\00", align 1
@.str.63 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_C_shape[1]) == 2048, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape[1] has an unsatisfied constraint: 2048 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_C_shape[1])\00", align 1
@.str.64 = private constant [248 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_C_strides[1]) and 2048 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m4096_k4096_n512_b2_C_strides[0]), qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [209 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [189 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [195 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [116 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t12_int8_m4096_k4096_n512_b2.C is expected to have non-NULL data pointer\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__tvm_main__ = weak dllexport local_unnamed_addr constant [39 x i8] c"qgemm_lut_t12_int8_m4096_k4096_n512_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t12_int8_m4096_k4096_n512_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
entry:
  call void @llvm.dbg.value(metadata ptr %args, metadata !18, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %arg_type_ids, metadata !19, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata i32 %num_args, metadata !20, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_value, metadata !21, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %out_ret_tcode, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.value(metadata ptr %resource_handle, metadata !23, metadata !DIExpression()), !dbg !24
  %0 = icmp eq i32 %num_args, 6, !dbg !24
  br i1 %0, label %assert_end, label %assert_fail, !dbg !24, !prof !25

common.ret:                                       ; preds = %assert_end158, %assert_fail157, %assert_fail155, %assert_fail153, %assert_fail151, %assert_fail149, %assert_fail145, %assert_fail143, %assert_fail141, %assert_fail139, %assert_fail137, %assert_fail135, %assert_fail133, %assert_fail131, %assert_fail127, %assert_fail125, %assert_fail123, %assert_fail121, %assert_fail119, %assert_fail117, %assert_fail115, %assert_fail113, %assert_fail109, %assert_fail107, %assert_fail105, %assert_fail103, %assert_fail101, %assert_fail99, %assert_fail97, %assert_fail91, %assert_fail89, %assert_fail87, %assert_fail85, %assert_fail83, %assert_fail81, %assert_fail79, %assert_fail75, %assert_fail73, %assert_fail71, %assert_fail69, %assert_fail67, %assert_fail65, %assert_fail63, %assert_fail61, %assert_fail59, %assert_fail57, %assert_fail55, %assert_fail53, %assert_fail49, %assert_fail47, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail7, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail113 ], [ -1, %assert_fail115 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail131 ], [ -1, %assert_fail133 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail149 ], [ -1, %assert_fail151 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ %322, %assert_end158 ]
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
  %.not165 = icmp eq ptr %arg_type_ids, null, !dbg !24
  br i1 %.not165, label %assert_fail3, label %assert_end4, !dbg !24, !prof !29

assert_fail3:                                     ; preds = %assert_end2
  %3 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %3(ptr nonnull @.str.2), !dbg !24
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2
  %A.code = load i32, ptr %arg_type_ids, align 4, !dbg !24, !tbaa !30
  call void @llvm.dbg.declare(metadata i32 %A.code, metadata !41, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %A.code, metadata !41, metadata !DIExpression()), !dbg !24
  switch i32 %A.code, label %assert_fail5 [
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
  %LUT.code = load i32, ptr %5, align 4, !dbg !24, !tbaa !42
  call void @llvm.dbg.declare(metadata i32 %LUT.code, metadata !44, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT.code, metadata !44, metadata !DIExpression()), !dbg !24
  switch i32 %LUT.code, label %assert_fail7 [
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
  %Scales.code = load i32, ptr %7, align 4, !dbg !24, !tbaa !45
  call void @llvm.dbg.declare(metadata i32 %Scales.code, metadata !48, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %Scales.code, metadata !48, metadata !DIExpression()), !dbg !24
  switch i32 %Scales.code, label %assert_fail9 [
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
  %LUT_Scales.code = load i32, ptr %9, align 4, !dbg !24, !tbaa !49
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !51, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT_Scales.code, metadata !51, metadata !DIExpression()), !dbg !24
  switch i32 %LUT_Scales.code, label %assert_fail11 [
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
  %11 = getelementptr inbounds i32, ptr %arg_type_ids, i64 4, !dbg !24
  %LUT_Biases.code = load i32, ptr %11, align 4, !dbg !24, !tbaa !52
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !56, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %LUT_Biases.code, metadata !56, metadata !DIExpression()), !dbg !24
  switch i32 %LUT_Biases.code, label %assert_fail13 [
    i32 13, label %assert_end14
    i32 7, label %assert_end14
    i32 4, label %assert_end14
    i32 3, label %assert_end14
  ], !dbg !24

assert_fail13:                                    ; preds = %assert_end12
  %12 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %12(ptr nonnull @.str.7), !dbg !24
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12, %assert_end12, %assert_end12, %assert_end12
  %13 = getelementptr inbounds i32, ptr %arg_type_ids, i64 5, !dbg !24
  %C.code = load i32, ptr %13, align 4, !dbg !24, !tbaa !57
  call void @llvm.dbg.declare(metadata i32 %C.code, metadata !59, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %C.code, metadata !59, metadata !DIExpression()), !dbg !24
  switch i32 %C.code, label %assert_fail15 [
    i32 13, label %assert_end16
    i32 7, label %assert_end16
    i32 4, label %assert_end16
    i32 3, label %assert_end16
  ], !dbg !24

assert_fail15:                                    ; preds = %assert_end14
  %14 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %14(ptr nonnull @.str.8), !dbg !24
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14, %assert_end14, %assert_end14, %assert_end14
  %A = load ptr, ptr %args, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A, metadata !60, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A, metadata !60, metadata !DIExpression()), !dbg !24
  %15 = getelementptr inbounds %0, ptr %args, i64 1, !dbg !24
  %LUT = load ptr, ptr %15, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT, metadata !61, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT, metadata !61, metadata !DIExpression()), !dbg !24
  %16 = getelementptr inbounds %0, ptr %args, i64 2, !dbg !24
  %Scales = load ptr, ptr %16, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales, metadata !62, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales, metadata !62, metadata !DIExpression()), !dbg !24
  %17 = getelementptr inbounds %0, ptr %args, i64 3, !dbg !24
  %LUT_Scales = load ptr, ptr %17, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales, metadata !63, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales, metadata !63, metadata !DIExpression()), !dbg !24
  %18 = getelementptr inbounds %0, ptr %args, i64 4, !dbg !24
  %LUT_Biases = load ptr, ptr %18, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases, metadata !64, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases, metadata !64, metadata !DIExpression()), !dbg !24
  %19 = getelementptr inbounds %0, ptr %args, i64 5, !dbg !24
  %C = load ptr, ptr %19, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C, metadata !65, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C, metadata !65, metadata !DIExpression()), !dbg !24
  %.not166 = icmp eq ptr %A, null, !dbg !24
  br i1 %.not166, label %assert_fail17, label %assert_end18, !dbg !24, !prof !29

assert_fail17:                                    ; preds = %assert_end16
  %20 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %20(ptr nonnull @.str.9), !dbg !24
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %21 = getelementptr inbounds %1, ptr %A, i64 0, i32 2, !dbg !24
  %22 = load i32, ptr %21, align 4, !dbg !24
  %23 = icmp eq i32 %22, 3, !dbg !24
  br i1 %23, label %assert_end20, label %assert_fail19, !dbg !24, !prof !25

assert_fail19:                                    ; preds = %assert_end18
  %24 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %24(ptr nonnull @.str.10), !dbg !24
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %25 = getelementptr inbounds %1, ptr %A, i64 0, i32 4, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  %27 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 1, !dbg !24
  %dev_id = load i32, ptr %27, align 4, !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !70, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32 %dev_id, metadata !70, metadata !DIExpression()), !dbg !24
  %A160 = load ptr, ptr %A, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A160, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %A160, metadata !71, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %A160, i64 64) ], !dbg !24
  %.not167 = icmp eq ptr %LUT, null, !dbg !24
  br i1 %.not167, label %assert_fail23, label %assert_end24, !dbg !24, !prof !29

assert_fail23:                                    ; preds = %assert_end20
  %28 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %28(ptr nonnull @.str.11), !dbg !24
  br label %common.ret

assert_end24:                                     ; preds = %assert_end20
  %29 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 2, !dbg !24
  %30 = load i32, ptr %29, align 4, !dbg !24
  %31 = icmp eq i32 %30, 3, !dbg !24
  br i1 %31, label %assert_end26, label %assert_fail25, !dbg !24, !prof !25

assert_fail25:                                    ; preds = %assert_end24
  %32 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %32(ptr nonnull @.str.12), !dbg !24
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %33 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 4, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  %LUT159 = load ptr, ptr %LUT, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT159, metadata !76, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT159, metadata !76, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT159, i64 64) ], !dbg !24
  %.not168 = icmp eq ptr %Scales, null, !dbg !24
  br i1 %.not168, label %assert_fail29, label %assert_end30, !dbg !24, !prof !29

assert_fail29:                                    ; preds = %assert_end26
  %35 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %35(ptr nonnull @.str.13), !dbg !24
  br label %common.ret

assert_end30:                                     ; preds = %assert_end26
  %36 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 2, !dbg !24
  %37 = load i32, ptr %36, align 4, !dbg !24
  %38 = icmp eq i32 %37, 1, !dbg !24
  br i1 %38, label %assert_end32, label %assert_fail31, !dbg !24, !prof !25

assert_fail31:                                    ; preds = %assert_end30
  %39 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %39(ptr nonnull @.str.14), !dbg !24
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %40 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 4, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr poison, metadata !80, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr poison, metadata !80, metadata !DIExpression()), !dbg !24
  %Scales161 = load ptr, ptr %Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales161, metadata !81, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %Scales161, metadata !81, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %Scales161, i64 64) ], !dbg !24
  %.not169 = icmp eq ptr %LUT_Scales, null, !dbg !24
  br i1 %.not169, label %assert_fail35, label %assert_end36, !dbg !24, !prof !29

assert_fail35:                                    ; preds = %assert_end32
  %41 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %41(ptr nonnull @.str.15), !dbg !24
  br label %common.ret

assert_end36:                                     ; preds = %assert_end32
  %42 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 2, !dbg !24
  %43 = load i32, ptr %42, align 4, !dbg !24
  %44 = icmp eq i32 %43, 2, !dbg !24
  br i1 %44, label %assert_end38, label %assert_fail37, !dbg !24, !prof !25

assert_fail37:                                    ; preds = %assert_end36
  %45 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %45(ptr nonnull @.str.16), !dbg !24
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %46 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 4, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  %LUT_Scales162 = load ptr, ptr %LUT_Scales, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales162, metadata !86, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Scales162, metadata !86, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Scales162, i64 64) ], !dbg !24
  %.not170 = icmp eq ptr %LUT_Biases, null, !dbg !24
  br i1 %.not170, label %assert_fail41, label %assert_end42, !dbg !24, !prof !29

assert_fail41:                                    ; preds = %assert_end38
  %48 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %48(ptr nonnull @.str.17), !dbg !24
  br label %common.ret

assert_end42:                                     ; preds = %assert_end38
  %49 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 2, !dbg !24
  %50 = load i32, ptr %49, align 4, !dbg !24
  %51 = icmp eq i32 %50, 2, !dbg !24
  br i1 %51, label %assert_end44, label %assert_fail43, !dbg !24, !prof !25

assert_fail43:                                    ; preds = %assert_end42
  %52 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %52(ptr nonnull @.str.18), !dbg !24
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  %53 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 4, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  %LUT_Biases163 = load ptr, ptr %LUT_Biases, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases163, metadata !89, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %LUT_Biases163, metadata !89, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %LUT_Biases163, i64 64) ], !dbg !24
  %.not171 = icmp eq ptr %C, null, !dbg !24
  br i1 %.not171, label %assert_fail47, label %assert_end48, !dbg !24, !prof !29

assert_fail47:                                    ; preds = %assert_end44
  %55 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %55(ptr nonnull @.str.19), !dbg !24
  br label %common.ret

assert_end48:                                     ; preds = %assert_end44
  %56 = getelementptr inbounds %1, ptr %C, i64 0, i32 2, !dbg !24
  %57 = load i32, ptr %56, align 4, !dbg !24
  %58 = icmp eq i32 %57, 2, !dbg !24
  br i1 %58, label %assert_end50, label %assert_fail49, !dbg !24, !prof !25

assert_fail49:                                    ; preds = %assert_end48
  %59 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %59(ptr nonnull @.str.20), !dbg !24
  br label %common.ret

assert_end50:                                     ; preds = %assert_end48
  %60 = getelementptr inbounds %1, ptr %C, i64 0, i32 4, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  %C164 = load ptr, ptr %C, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C164, metadata !92, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %C164, metadata !92, metadata !DIExpression()), !dbg !24
  call void @llvm.assume(i1 true) [ "align"(ptr %C164, i64 64) ], !dbg !24
  %62 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 0, !dbg !24
  %63 = load i8, ptr %62, align 1, !dbg !24
  %64 = icmp eq i8 %63, 1, !dbg !24
  %65 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 1, !dbg !24
  %66 = load i8, ptr %65, align 1, !dbg !24
  %67 = icmp eq i8 %66, 8, !dbg !24
  %68 = and i1 %64, %67, !dbg !24
  %69 = getelementptr inbounds %1, ptr %A, i64 0, i32 3, i32 2, !dbg !24
  %70 = load i16, ptr %69, align 2, !dbg !24
  %71 = icmp eq i16 %70, 1, !dbg !24
  %72 = and i1 %68, %71, !dbg !24
  br i1 %72, label %assert_end54, label %assert_fail53, !dbg !24, !prof !25

assert_fail53:                                    ; preds = %assert_end50
  %73 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %73(ptr nonnull @.str.21), !dbg !24
  br label %common.ret

assert_end54:                                     ; preds = %assert_end50
  %74 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 16, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 1024, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 128, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 128, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  %97 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %98 = and i64 %97, 4294967295, !dbg !24
  %99 = icmp eq i64 %98, 131072, !dbg !24
  %100 = and i1 %96, %99, !dbg !24
  br i1 %100, label %if_end, label %assert_fail61, !dbg !24, !prof !25

if_end:                                           ; preds = %if_then, %assert_end60
  %101 = getelementptr inbounds %1, ptr %A, i64 0, i32 6, !dbg !24
  %102 = load i64, ptr %101, align 8, !dbg !24
  %103 = icmp eq i64 %102, 0, !dbg !24
  br i1 %103, label %assert_end64, label %assert_fail63, !dbg !24, !prof !25

assert_fail61:                                    ; preds = %if_then
  %104 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %104(ptr nonnull @.str.25), !dbg !24
  br label %common.ret

assert_fail63:                                    ; preds = %if_end
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %105(ptr nonnull @.str.26), !dbg !24
  br label %common.ret

assert_end64:                                     ; preds = %if_end
  %106 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 0, !dbg !24
  %107 = load i32, ptr %106, align 4, !dbg !24
  %108 = icmp eq i32 %107, 1, !dbg !24
  br i1 %108, label %assert_end66, label %assert_fail65, !dbg !24, !prof !25

assert_fail65:                                    ; preds = %assert_end64
  %109 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %109(ptr nonnull @.str.27), !dbg !24
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not173 = icmp eq ptr %A160, null, !dbg !24
  br i1 %.not173, label %assert_fail67, label %assert_end68, !dbg !24, !prof !29

assert_fail67:                                    ; preds = %assert_end66
  %110 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %110(ptr nonnull @.str.28), !dbg !24
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %111 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 0, !dbg !24
  %112 = load i8, ptr %111, align 1, !dbg !24
  %113 = icmp eq i8 %112, 0, !dbg !24
  %114 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 1, !dbg !24
  %115 = load i8, ptr %114, align 1, !dbg !24
  %116 = icmp eq i8 %115, 8, !dbg !24
  %117 = and i1 %113, %116, !dbg !24
  %118 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 2, !dbg !24
  %119 = load i16, ptr %118, align 2, !dbg !24
  %120 = icmp eq i16 %119, 1, !dbg !24
  %121 = and i1 %117, %120, !dbg !24
  br i1 %121, label %assert_end70, label %assert_fail69, !dbg !24, !prof !25

assert_fail69:                                    ; preds = %assert_end68
  %122 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %122(ptr nonnull @.str.29), !dbg !24
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %123 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %124 = and i64 %123, 4294967295, !dbg !24
  %125 = icmp eq i64 %124, 512, !dbg !24
  br i1 %125, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %126(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %127 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape, i64 1, !dbg !24
  %128 = load i64, ptr %127, align 8, !dbg !24, !tbaa !133
  %129 = and i64 %128, 4294967295, !dbg !24
  %130 = icmp eq i64 %129, 1024, !dbg !24
  br i1 %130, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %131(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %132 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape, i64 2, !dbg !24
  %133 = load i64, ptr %132, align 8, !dbg !24, !tbaa !135
  %134 = and i64 %133, 4294967295, !dbg !24
  %135 = icmp eq i64 %134, 16, !dbg !24
  br i1 %135, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides, i64 2, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !138
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 1, !dbg !24
  %141 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides, i64 1, !dbg !24
  %142 = load i64, ptr %141, align 8, !dbg !24, !tbaa !148
  %143 = and i64 %142, 4294967295, !dbg !24
  %144 = icmp eq i64 %143, 16, !dbg !24
  %145 = and i1 %140, %144, !dbg !24
  %146 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides, align 8, !dbg !24, !tbaa !151
  %147 = and i64 %146, 4294967295, !dbg !24
  %148 = icmp eq i64 %147, 16384, !dbg !24
  %149 = and i1 %145, %148, !dbg !24
  br i1 %149, label %if_end78, label %assert_fail79, !dbg !24, !prof !25

if_end78:                                         ; preds = %if_then77, %assert_end76
  %150 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 6, !dbg !24
  %151 = load i64, ptr %150, align 8, !dbg !24
  %152 = icmp eq i64 %151, 0, !dbg !24
  br i1 %152, label %assert_end82, label %assert_fail81, !dbg !24, !prof !25

assert_fail79:                                    ; preds = %if_then77
  %153 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %153(ptr nonnull @.str.33), !dbg !24
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %154 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %154(ptr nonnull @.str.34), !dbg !24
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %155 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 0, !dbg !24
  %156 = load i32, ptr %155, align 4, !dbg !24
  %157 = icmp eq i32 %156, 1, !dbg !24
  br i1 %157, label %assert_end84, label %assert_fail83, !dbg !24, !prof !25

assert_fail83:                                    ; preds = %assert_end82
  %158 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %158(ptr nonnull @.str.35), !dbg !24
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %159 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 1, !dbg !24
  %160 = load i32, ptr %159, align 4, !dbg !24
  %161 = icmp eq i32 %dev_id, %160, !dbg !24
  br i1 %161, label %assert_end86, label %assert_fail85, !dbg !24, !prof !25

assert_fail85:                                    ; preds = %assert_end84
  %162 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %162(ptr nonnull @.str.36), !dbg !24
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not175 = icmp eq ptr %LUT159, null, !dbg !24
  br i1 %.not175, label %assert_fail87, label %assert_end88, !dbg !24, !prof !29

assert_fail87:                                    ; preds = %assert_end86
  %163 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %163(ptr nonnull @.str.37), !dbg !24
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %164 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 0, !dbg !24
  %165 = load i8, ptr %164, align 1, !dbg !24
  %166 = icmp eq i8 %165, 2, !dbg !24
  %167 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 1, !dbg !24
  %168 = load i8, ptr %167, align 1, !dbg !24
  %169 = icmp eq i8 %168, 16, !dbg !24
  %170 = and i1 %166, %169, !dbg !24
  %171 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 2, !dbg !24
  %172 = load i16, ptr %171, align 2, !dbg !24
  %173 = icmp eq i16 %172, 1, !dbg !24
  %174 = and i1 %170, %173, !dbg !24
  br i1 %174, label %assert_end90, label %assert_fail89, !dbg !24, !prof !25

assert_fail89:                                    ; preds = %assert_end88
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %175(ptr nonnull @.str.38), !dbg !24
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %176 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.shape, align 8, !dbg !24, !tbaa !153
  %177 = and i64 %176, 4294967295, !dbg !24
  %178 = icmp eq i64 %177, 1, !dbg !24
  br i1 %178, label %if_end94, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %179(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

if_end94:                                         ; preds = %assert_end90
  %180 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 6, !dbg !24
  %181 = load i64, ptr %180, align 8, !dbg !24
  %182 = icmp eq i64 %181, 0, !dbg !24
  br i1 %182, label %assert_end98, label %assert_fail97, !dbg !24, !prof !25

assert_fail97:                                    ; preds = %if_end94
  %183 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %183(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end98:                                     ; preds = %if_end94
  %184 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 0, !dbg !24
  %185 = load i32, ptr %184, align 4, !dbg !24
  %186 = icmp eq i32 %185, 1, !dbg !24
  br i1 %186, label %assert_end100, label %assert_fail99, !dbg !24, !prof !25

assert_fail99:                                    ; preds = %assert_end98
  %187 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %187(ptr nonnull @.str.42), !dbg !24
  br label %common.ret

assert_end100:                                    ; preds = %assert_end98
  %188 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 1, !dbg !24
  %189 = load i32, ptr %188, align 4, !dbg !24
  %190 = icmp eq i32 %dev_id, %189, !dbg !24
  br i1 %190, label %assert_end102, label %assert_fail101, !dbg !24, !prof !25

assert_fail101:                                   ; preds = %assert_end100
  %191 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %191(ptr nonnull @.str.43), !dbg !24
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %.not176 = icmp eq ptr %Scales161, null, !dbg !24
  br i1 %.not176, label %assert_fail103, label %assert_end104, !dbg !24, !prof !29

assert_fail103:                                   ; preds = %assert_end102
  %192 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %192(ptr nonnull @.str.44), !dbg !24
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %193 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 0, !dbg !24
  %194 = load i8, ptr %193, align 1, !dbg !24
  %195 = icmp eq i8 %194, 2, !dbg !24
  %196 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 1, !dbg !24
  %197 = load i8, ptr %196, align 1, !dbg !24
  %198 = icmp eq i8 %197, 16, !dbg !24
  %199 = and i1 %195, %198, !dbg !24
  %200 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 2, !dbg !24
  %201 = load i16, ptr %200, align 2, !dbg !24
  %202 = icmp eq i16 %201, 1, !dbg !24
  %203 = and i1 %199, %202, !dbg !24
  br i1 %203, label %assert_end106, label %assert_fail105, !dbg !24, !prof !25

assert_fail105:                                   ; preds = %assert_end104
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.45), !dbg !24
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %205 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !163
  %206 = and i64 %205, 4294967295, !dbg !24
  %207 = icmp eq i64 %206, 512, !dbg !24
  br i1 %207, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %208 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %208(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %209 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape, i64 1, !dbg !24
  %210 = load i64, ptr %209, align 8, !dbg !24, !tbaa !173
  %211 = and i64 %210, 4294967295, !dbg !24
  %212 = icmp eq i64 %211, 64, !dbg !24
  br i1 %212, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %213 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %213(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %214 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, i64 1, !dbg !24
  %215 = load i64, ptr %214, align 8, !dbg !24, !tbaa !175
  %216 = and i64 %215, 4294967295, !dbg !24
  %217 = icmp eq i64 %216, 1, !dbg !24
  %218 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides, align 8, !dbg !24, !tbaa !185
  %219 = and i64 %218, 4294967295, !dbg !24
  %220 = icmp eq i64 %219, 64, !dbg !24
  %221 = and i1 %217, %220, !dbg !24
  br i1 %221, label %if_end112, label %assert_fail113, !dbg !24, !prof !25

if_end112:                                        ; preds = %if_then111, %assert_end110
  %222 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 6, !dbg !24
  %223 = load i64, ptr %222, align 8, !dbg !24
  %224 = icmp eq i64 %223, 0, !dbg !24
  br i1 %224, label %assert_end116, label %assert_fail115, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %if_then111
  %225 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %225(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_fail115:                                   ; preds = %if_end112
  %226 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %226(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end116:                                    ; preds = %if_end112
  %227 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 0, !dbg !24
  %228 = load i32, ptr %227, align 4, !dbg !24
  %229 = icmp eq i32 %228, 1, !dbg !24
  br i1 %229, label %assert_end118, label %assert_fail117, !dbg !24, !prof !25

assert_fail117:                                   ; preds = %assert_end116
  %230 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %230(ptr nonnull @.str.50), !dbg !24
  br label %common.ret

assert_end118:                                    ; preds = %assert_end116
  %231 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 1, !dbg !24
  %232 = load i32, ptr %231, align 4, !dbg !24
  %233 = icmp eq i32 %dev_id, %232, !dbg !24
  br i1 %233, label %assert_end120, label %assert_fail119, !dbg !24, !prof !25

assert_fail119:                                   ; preds = %assert_end118
  %234 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %234(ptr nonnull @.str.51), !dbg !24
  br label %common.ret

assert_end120:                                    ; preds = %assert_end118
  %.not178 = icmp eq ptr %LUT_Scales162, null, !dbg !24
  br i1 %.not178, label %assert_fail121, label %assert_end122, !dbg !24, !prof !29

assert_fail121:                                   ; preds = %assert_end120
  %235 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %235(ptr nonnull @.str.52), !dbg !24
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %236 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 0, !dbg !24
  %237 = load i8, ptr %236, align 1, !dbg !24
  %238 = icmp eq i8 %237, 2, !dbg !24
  %239 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 1, !dbg !24
  %240 = load i8, ptr %239, align 1, !dbg !24
  %241 = icmp eq i8 %240, 16, !dbg !24
  %242 = and i1 %238, %241, !dbg !24
  %243 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 2, !dbg !24
  %244 = load i16, ptr %243, align 2, !dbg !24
  %245 = icmp eq i16 %244, 1, !dbg !24
  %246 = and i1 %242, %245, !dbg !24
  br i1 %246, label %assert_end124, label %assert_fail123, !dbg !24, !prof !25

assert_fail123:                                   ; preds = %assert_end122
  %247 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %247(ptr nonnull @.str.53), !dbg !24
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %248 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !187
  %249 = and i64 %248, 4294967295, !dbg !24
  %250 = icmp eq i64 %249, 512, !dbg !24
  br i1 %250, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %251 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %251(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %252 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape, i64 1, !dbg !24
  %253 = load i64, ptr %252, align 8, !dbg !24, !tbaa !197
  %254 = and i64 %253, 4294967295, !dbg !24
  %255 = icmp eq i64 %254, 64, !dbg !24
  br i1 %255, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %256 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %256(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %257 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, i64 1, !dbg !24
  %258 = load i64, ptr %257, align 8, !dbg !24, !tbaa !199
  %259 = and i64 %258, 4294967295, !dbg !24
  %260 = icmp eq i64 %259, 1, !dbg !24
  %261 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides, align 8, !dbg !24, !tbaa !209
  %262 = and i64 %261, 4294967295, !dbg !24
  %263 = icmp eq i64 %262, 64, !dbg !24
  %264 = and i1 %260, %263, !dbg !24
  br i1 %264, label %if_end130, label %assert_fail131, !dbg !24, !prof !25

if_end130:                                        ; preds = %if_then129, %assert_end128
  %265 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 6, !dbg !24
  %266 = load i64, ptr %265, align 8, !dbg !24
  %267 = icmp eq i64 %266, 0, !dbg !24
  br i1 %267, label %assert_end134, label %assert_fail133, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %if_then129
  %268 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %268(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_fail133:                                   ; preds = %if_end130
  %269 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %269(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end134:                                    ; preds = %if_end130
  %270 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 0, !dbg !24
  %271 = load i32, ptr %270, align 4, !dbg !24
  %272 = icmp eq i32 %271, 1, !dbg !24
  br i1 %272, label %assert_end136, label %assert_fail135, !dbg !24, !prof !25

assert_fail135:                                   ; preds = %assert_end134
  %273 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %273(ptr nonnull @.str.58), !dbg !24
  br label %common.ret

assert_end136:                                    ; preds = %assert_end134
  %274 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 1, !dbg !24
  %275 = load i32, ptr %274, align 4, !dbg !24
  %276 = icmp eq i32 %dev_id, %275, !dbg !24
  br i1 %276, label %assert_end138, label %assert_fail137, !dbg !24, !prof !25

assert_fail137:                                   ; preds = %assert_end136
  %277 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %277(ptr nonnull @.str.59), !dbg !24
  br label %common.ret

assert_end138:                                    ; preds = %assert_end136
  %.not180 = icmp eq ptr %LUT_Biases163, null, !dbg !24
  br i1 %.not180, label %assert_fail139, label %assert_end140, !dbg !24, !prof !29

assert_fail139:                                   ; preds = %assert_end138
  %278 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %278(ptr nonnull @.str.60), !dbg !24
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %279 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 0, !dbg !24
  %280 = load i8, ptr %279, align 1, !dbg !24
  %281 = icmp eq i8 %280, 2, !dbg !24
  %282 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 1, !dbg !24
  %283 = load i8, ptr %282, align 1, !dbg !24
  %284 = icmp eq i8 %283, 16, !dbg !24
  %285 = and i1 %281, %284, !dbg !24
  %286 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 2, !dbg !24
  %287 = load i16, ptr %286, align 2, !dbg !24
  %288 = icmp eq i16 %287, 1, !dbg !24
  %289 = and i1 %285, %288, !dbg !24
  br i1 %289, label %assert_end142, label %assert_fail141, !dbg !24, !prof !25

assert_fail141:                                   ; preds = %assert_end140
  %290 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %290(ptr nonnull @.str.61), !dbg !24
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %291 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape, align 8, !dbg !24, !tbaa !211
  %292 = and i64 %291, 4294967295, !dbg !24
  %293 = icmp eq i64 %292, 512, !dbg !24
  br i1 %293, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %294 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %294(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %295 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape, i64 1, !dbg !24
  %296 = load i64, ptr %295, align 8, !dbg !24, !tbaa !221
  %297 = and i64 %296, 4294967295, !dbg !24
  %298 = icmp eq i64 %297, 2048, !dbg !24
  br i1 %298, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %299 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %299(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %300 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides, i64 1, !dbg !24
  %301 = load i64, ptr %300, align 8, !dbg !24, !tbaa !223
  %302 = and i64 %301, 4294967295, !dbg !24
  %303 = icmp eq i64 %302, 1, !dbg !24
  %304 = load i64, ptr %qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides, align 8, !dbg !24, !tbaa !233
  %305 = and i64 %304, 4294967295, !dbg !24
  %306 = icmp eq i64 %305, 2048, !dbg !24
  %307 = and i1 %303, %306, !dbg !24
  br i1 %307, label %if_end148, label %assert_fail149, !dbg !24, !prof !25

if_end148:                                        ; preds = %if_then147, %assert_end146
  %308 = getelementptr inbounds %1, ptr %C, i64 0, i32 6, !dbg !24
  %309 = load i64, ptr %308, align 8, !dbg !24
  %310 = icmp eq i64 %309, 0, !dbg !24
  br i1 %310, label %assert_end152, label %assert_fail151, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %if_then147
  %311 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %311(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_fail151:                                   ; preds = %if_end148
  %312 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %312(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end152:                                    ; preds = %if_end148
  %313 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 0, !dbg !24
  %314 = load i32, ptr %313, align 4, !dbg !24
  %315 = icmp eq i32 %314, 1, !dbg !24
  br i1 %315, label %assert_end154, label %assert_fail153, !dbg !24, !prof !25

assert_fail153:                                   ; preds = %assert_end152
  %316 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %316(ptr nonnull @.str.66), !dbg !24
  br label %common.ret

assert_end154:                                    ; preds = %assert_end152
  %317 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 1, !dbg !24
  %318 = load i32, ptr %317, align 4, !dbg !24
  %319 = icmp eq i32 %dev_id, %318, !dbg !24
  br i1 %319, label %assert_end156, label %assert_fail155, !dbg !24, !prof !25

assert_fail155:                                   ; preds = %assert_end154
  %320 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %320(ptr nonnull @.str.67), !dbg !24
  br label %common.ret

assert_end156:                                    ; preds = %assert_end154
  %.not182 = icmp eq ptr %C164, null, !dbg !24
  br i1 %.not182, label %assert_fail157, label %assert_end158, !dbg !24, !prof !29

assert_fail157:                                   ; preds = %assert_end156
  %321 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %321(ptr nonnull @.str.68), !dbg !24
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  %322 = tail call fastcc i32 @qgemm_lut_t12_int8_m4096_k4096_n512_b2_compute_(i32 %dev_id, ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t12_int8_m4096_k4096_n512_b2_compute_(i32 %dev_id, ptr noalias align 64 %LUT, ptr noalias align 64 %A, ptr noalias align 64 %Scales, ptr noalias align 64 %LUT_Scales, ptr noalias align 64 %LUT_Biases, ptr noalias align 64 %C) unnamed_addr #3 !dbg !235 {
entry:
  call void @llvm.dbg.value(metadata i32 %dev_id, metadata !239, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !240, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %A, metadata !241, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !242, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !243, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !244, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.value(metadata ptr %C, metadata !245, metadata !DIExpression()), !dbg !246
  %0 = alloca %closure_loop_parallel_n.outer, align 8, !dbg !246
  store i32 %dev_id, ptr %0, align 8, !dbg !246
  %1 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %0, i64 0, i32 1, !dbg !246
  store ptr %LUT, ptr %1, align 8, !dbg !246
  %2 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %0, i64 0, i32 2, !dbg !246
  store ptr %A, ptr %2, align 8, !dbg !246
  %3 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %0, i64 0, i32 3, !dbg !246
  store ptr %Scales, ptr %3, align 8, !dbg !246
  %4 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %0, i64 0, i32 4, !dbg !246
  store ptr %LUT_Scales, ptr %4, align 8, !dbg !246
  %5 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %0, i64 0, i32 5, !dbg !246
  store ptr %LUT_Biases, ptr %5, align 8, !dbg !246
  %6 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %0, i64 0, i32 6, !dbg !246
  store ptr %C, ptr %6, align 8, !dbg !246
  %7 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !246, !tbaa !26
  %8 = call i32 %7(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !246
  ret i32 %8, !dbg !246
}

define private i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %dev_id = load i32, ptr %1, align 4, !dbg !246
  %2 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %1, i64 0, i32 1, !dbg !246
  %LUT = load ptr, ptr %2, align 8, !dbg !246
  %3 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %1, i64 0, i32 2, !dbg !246
  %A = load ptr, ptr %3, align 8, !dbg !246
  %4 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %1, i64 0, i32 3, !dbg !246
  %Scales = load ptr, ptr %4, align 8, !dbg !246
  %5 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %1, i64 0, i32 4, !dbg !246
  %LUT_Scales = load ptr, ptr %5, align 8, !dbg !246
  %6 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %1, i64 0, i32 5, !dbg !246
  %LUT_Biases = load ptr, ptr %6, align 8, !dbg !246
  %7 = getelementptr inbounds %closure_loop_parallel_n.outer, ptr %1, i64 0, i32 6, !dbg !246
  %C = load ptr, ptr %7, align 8, !dbg !246
  %8 = getelementptr inbounds %4, ptr %0, i64 0, i32 1, !dbg !246
  %num_task = load i32, ptr %8, align 4, !dbg !246
  %9 = add nsw i32 %num_task, 63, !dbg !246
  %10 = sdiv i32 %9, %num_task, !dbg !246
  %11 = mul nsw i32 %10, %task_id, !dbg !246
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 64), !dbg !246
  %13 = add nsw i32 %task_id, 1, !dbg !246
  %14 = mul nsw i32 %10, %13, !dbg !246
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 64), !dbg !246
  call void @llvm.dbg.declare(metadata i32 %12, metadata !247, metadata !DIExpression()), !dbg !246
  %16 = icmp slt i32 %12, %15, !dbg !246
  br i1 %16, label %for_body_n.outer, label %common.ret, !dbg !246, !prof !25

for_begin_n.outer:                                ; preds = %if_end5
  %17 = add nsw i32 %n.outer19, 1, !dbg !246
  call void @llvm.dbg.declare(metadata i32 %17, metadata !247, metadata !DIExpression()), !dbg !246
  %exitcond53.not = icmp eq i32 %17, %15, !dbg !246
  br i1 %exitcond53.not, label %common.ret, label %for_body_n.outer, !dbg !246, !prof !29

for_body_n.outer:                                 ; preds = %parallel_closure_entry, %for_begin_n.outer
  %n.outer19 = phi i32 [ %17, %for_begin_n.outer ], [ %12, %parallel_closure_entry ]
  call void @llvm.dbg.declare(metadata i32 %n.outer19, metadata !247, metadata !DIExpression()), !dbg !246
  %18 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !dbg !246, !tbaa !26
  %CBits = tail call ptr %18(i32 1, i32 %dev_id, i64 4096, i32 2, i32 16), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !248, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !248, metadata !DIExpression()), !dbg !246
  call void @llvm.assume(i1 true) [ "align"(ptr %CBits, i64 64) ], !dbg !246
  %19 = icmp eq ptr %CBits, null, !dbg !246
  br i1 %19, label %common.ret, label %if_end, !dbg !246, !prof !25

common.ret:                                       ; preds = %for_begin_n.outer, %for_body_n.outer, %if_end, %for_end_m.outer, %if_end5, %parallel_closure_entry
  %common.ret.op = phi i32 [ 0, %parallel_closure_entry ], [ -1, %if_end5 ], [ -1, %for_end_m.outer ], [ -1, %if_end ], [ -1, %for_body_n.outer ], [ 0, %for_begin_n.outer ]
  ret i32 %common.ret.op, !dbg !246

if_end:                                           ; preds = %for_body_n.outer
  %20 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !dbg !246, !tbaa !26
  %C.global = tail call ptr %20(i32 1, i32 %dev_id, i64 2048, i32 2, i32 16), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %C.global, metadata !249, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata ptr %C.global, metadata !249, metadata !DIExpression()), !dbg !246
  call void @llvm.assume(i1 true) [ "align"(ptr %C.global, i64 64) ], !dbg !246
  %21 = icmp eq ptr %C.global, null, !dbg !246
  br i1 %21, label %common.ret, label %for_begin_m.outer.preheader, !dbg !246, !prof !25

for_begin_m.outer.preheader:                      ; preds = %if_end
  %22 = shl nsw i32 %n.outer19, 9
  %23 = shl nsw i32 %n.outer19, 17
  %24 = shl nsw i32 %n.outer19, 14
  call void @llvm.dbg.declare(metadata i32 0, metadata !252, metadata !DIExpression()), !dbg !246
  %25 = getelementptr inbounds <32 x half>, ptr %C.global, i64 28, !dbg !246
  %26 = zext i32 %24 to i64, !dbg !246
  %27 = getelementptr inbounds <32 x half>, ptr %C.global, i64 1
  %28 = getelementptr inbounds <32 x half>, ptr %C.global, i64 2
  %29 = getelementptr inbounds <32 x half>, ptr %C.global, i64 3
  %30 = getelementptr inbounds <32 x half>, ptr %C.global, i64 4
  %31 = getelementptr inbounds <32 x half>, ptr %C.global, i64 5
  %32 = getelementptr inbounds <32 x half>, ptr %C.global, i64 6
  %33 = getelementptr inbounds <32 x half>, ptr %C.global, i64 7
  %34 = getelementptr inbounds <32 x half>, ptr %C.global, i64 8
  %35 = getelementptr inbounds <32 x half>, ptr %C.global, i64 9
  %36 = getelementptr inbounds <32 x half>, ptr %C.global, i64 10
  %37 = getelementptr inbounds <32 x half>, ptr %C.global, i64 11
  %38 = getelementptr inbounds <32 x half>, ptr %C.global, i64 12
  %39 = getelementptr inbounds <32 x half>, ptr %C.global, i64 13
  %40 = getelementptr inbounds <32 x half>, ptr %C.global, i64 14
  %41 = getelementptr inbounds <32 x half>, ptr %C.global, i64 15
  %42 = getelementptr inbounds <32 x half>, ptr %C.global, i64 16
  %43 = getelementptr inbounds <32 x half>, ptr %C.global, i64 17
  %44 = getelementptr inbounds <32 x half>, ptr %C.global, i64 18
  %45 = getelementptr inbounds <32 x half>, ptr %C.global, i64 19
  %46 = getelementptr inbounds <32 x half>, ptr %C.global, i64 20
  %47 = getelementptr inbounds <32 x half>, ptr %C.global, i64 21
  %48 = getelementptr inbounds <32 x half>, ptr %C.global, i64 22
  %49 = getelementptr inbounds <32 x half>, ptr %C.global, i64 23
  %50 = getelementptr inbounds <32 x half>, ptr %C.global, i64 24
  %51 = getelementptr inbounds <32 x half>, ptr %C.global, i64 25
  %52 = getelementptr inbounds <32 x half>, ptr %C.global, i64 26
  %53 = getelementptr inbounds <32 x half>, ptr %C.global, i64 27
  %54 = getelementptr inbounds <32 x half>, ptr %C.global, i64 29
  %55 = getelementptr inbounds <32 x half>, ptr %C.global, i64 30
  %56 = getelementptr inbounds <32 x half>, ptr %C.global, i64 31
  br label %for_begin_n.init.preheader, !dbg !246

for_begin_n.init.preheader:                       ; preds = %for_begin_m.outer.preheader, %for_begin_n.inner.preheader
  %indvars.iv49 = phi i64 [ 0, %for_begin_m.outer.preheader ], [ %indvars.iv.next50, %for_begin_n.inner.preheader ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv49, metadata !252, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !253, metadata !DIExpression()), !dbg !246
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(4096) %CBits, i8 0, i64 4096, i1 false), !dbg !246
  call void @llvm.dbg.declare(metadata i64 poison, metadata !253, metadata !DIExpression()), !dbg !246
  %57 = shl nsw i64 %indvars.iv49, 17
  call void @llvm.dbg.declare(metadata i32 0, metadata !254, metadata !DIExpression()), !dbg !246
  br label %for_begin_n.preheader, !dbg !246

for_end_m.outer:                                  ; preds = %for_begin_n.inner.preheader
  %58 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !dbg !246, !tbaa !26
  %59 = tail call i32 %58(i32 1, i32 %dev_id, ptr nonnull %C.global), !dbg !246
  %.not = icmp eq i32 %59, 0, !dbg !246
  br i1 %.not, label %if_end5, label %common.ret, !dbg !246, !prof !29

for_begin_n.preheader:                            ; preds = %for_begin_n.init.preheader, %for_end_n
  %indvars.iv26 = phi i64 [ 0, %for_begin_n.init.preheader ], [ %indvars.iv.next27, %for_end_n ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv26, metadata !254, metadata !DIExpression()), !dbg !246
  %60 = shl nsw i64 %indvars.iv26, 11
  %61 = add nuw nsw i64 %60, %57
  %62 = getelementptr inbounds i8, ptr %A, i64 %61
  call void @llvm.dbg.declare(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !246
  %63 = trunc i64 %indvars.iv26 to i32
  %64 = add i32 %22, %63
  %indvars.iv26.tr = trunc i64 %indvars.iv26 to i32
  %65 = shl i32 %indvars.iv26.tr, 8
  %66 = add i32 %65, %23
  br label %for_body_n, !dbg !246

for_body_n:                                       ; preds = %for_begin_n.preheader, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fatrue_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %for_begin_n.preheader ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fatrue_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !255, metadata !DIExpression()), !dbg !246
  %indvars.iv.tr = trunc i64 %indvars.iv to i32, !dbg !246
  %67 = shl i32 %indvars.iv.tr, 6, !dbg !246
  %cse_var_1 = add i32 %64, %67, !dbg !246
  call void @llvm.dbg.declare(metadata i32 %cse_var_1, metadata !256, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 %cse_var_1, metadata !256, metadata !DIExpression()), !dbg !246
  %68 = shl nuw nsw i64 %indvars.iv, 8, !dbg !246
  %69 = getelementptr inbounds half, ptr %CBits, i64 %68, !dbg !246
  %indvars.iv.tr54 = trunc i64 %indvars.iv to i32, !dbg !246
  %70 = shl i32 %indvars.iv.tr54, 14, !dbg !246
  %71 = add i32 %66, %70, !dbg !246
  %72 = sext i32 %71 to i64, !dbg !246
  %73 = getelementptr inbounds i8, ptr %LUT, i64 %72, !dbg !246
  %74 = sext i32 %cse_var_1 to i64, !dbg !246
  %75 = getelementptr inbounds half, ptr %LUT_Scales, i64 %74, !dbg !246
  %76 = getelementptr inbounds half, ptr %LUT_Biases, i64 %74, !dbg !246
  %77 = load <16 x i8>, ptr %73, align 1, !dbg !246
  %78 = getelementptr inbounds i8, ptr %73, i64 16, !dbg !246
  %79 = load <16 x i8>, ptr %78, align 1, !dbg !246
  %80 = getelementptr inbounds i8, ptr %73, i64 32, !dbg !246
  %81 = load <16 x i8>, ptr %80, align 1, !dbg !246
  %82 = getelementptr inbounds i8, ptr %73, i64 48, !dbg !246
  %83 = load <16 x i8>, ptr %82, align 1, !dbg !246
  %84 = getelementptr inbounds i8, ptr %73, i64 64, !dbg !246
  %85 = load <16 x i8>, ptr %84, align 1, !dbg !246
  %86 = getelementptr inbounds i8, ptr %73, i64 80, !dbg !246
  %87 = load <16 x i8>, ptr %86, align 1, !dbg !246
  %88 = getelementptr inbounds i8, ptr %73, i64 96, !dbg !246
  %89 = load <16 x i8>, ptr %88, align 1, !dbg !246
  %90 = getelementptr inbounds i8, ptr %73, i64 112, !dbg !246
  %91 = load <16 x i8>, ptr %90, align 1, !dbg !246
  %92 = getelementptr inbounds i8, ptr %73, i64 128, !dbg !246
  %93 = load <16 x i8>, ptr %92, align 1, !dbg !246
  %94 = getelementptr inbounds i8, ptr %73, i64 144, !dbg !246
  %95 = load <16 x i8>, ptr %94, align 1, !dbg !246
  %96 = getelementptr inbounds i8, ptr %73, i64 160, !dbg !246
  %97 = load <16 x i8>, ptr %96, align 1, !dbg !246
  %98 = getelementptr inbounds i8, ptr %73, i64 176, !dbg !246
  %99 = load <16 x i8>, ptr %98, align 1, !dbg !246
  %100 = getelementptr inbounds i8, ptr %73, i64 192, !dbg !246
  %101 = load <16 x i8>, ptr %100, align 1, !dbg !246
  %102 = getelementptr inbounds i8, ptr %73, i64 208, !dbg !246
  %103 = load <16 x i8>, ptr %102, align 1, !dbg !246
  %104 = getelementptr inbounds i8, ptr %73, i64 224, !dbg !246
  %105 = load <16 x i8>, ptr %104, align 1, !dbg !246
  %106 = getelementptr inbounds i8, ptr %73, i64 240, !dbg !246
  %107 = load <16 x i8>, ptr %106, align 1, !dbg !246
  br label %108, !dbg !246

108:                                              ; preds = %108, %for_body_n
  %109 = phi i64 [ 0, %for_body_n ], [ %277, %108 ], !dbg !246
  %110 = shl nuw nsw i64 %109, 4, !dbg !246
  %111 = getelementptr inbounds i8, ptr %62, i64 %110, !dbg !246
  %112 = load half, ptr %75, align 2, !dbg !246, !tbaa !257
  %113 = load half, ptr %76, align 2, !dbg !246, !tbaa !257
  %114 = fmul half %112, 0xH4C00, !dbg !246
  %115 = fpext half %114 to float, !dbg !246
  %116 = fpext half %113 to float, !dbg !246
  %117 = fneg float %115, !dbg !246
  %118 = tail call float @llvm.fmuladd.f32(float %117, float 3.000000e+00, float %116), !dbg !246
  %119 = fptrunc float %118 to half, !dbg !246
  %120 = insertelement <8 x half> poison, half %114, i64 0, !dbg !246
  %121 = insertelement <8 x half> poison, half %119, i64 0, !dbg !246
  %122 = load <16 x i8>, ptr %111, align 1, !dbg !246
  %123 = lshr <16 x i8> %122, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %124 = and <16 x i8> %122, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %125 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %124), !dbg !246
  %126 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %77, <16 x i8> %123), !dbg !246
  %127 = getelementptr inbounds i8, ptr %111, i64 16, !dbg !246
  %128 = load <16 x i8>, ptr %127, align 1, !dbg !246
  %129 = lshr <16 x i8> %128, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %130 = and <16 x i8> %128, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %131 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %79, <16 x i8> %130), !dbg !246
  %132 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %79, <16 x i8> %129), !dbg !246
  %133 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %125, <16 x i8> %131), !dbg !246
  %134 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %126, <16 x i8> %132), !dbg !246
  %135 = getelementptr inbounds i8, ptr %111, i64 32, !dbg !246
  %136 = load <16 x i8>, ptr %135, align 1, !dbg !246
  %137 = lshr <16 x i8> %136, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %138 = and <16 x i8> %136, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %139 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %81, <16 x i8> %138), !dbg !246
  %140 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %81, <16 x i8> %137), !dbg !246
  %141 = getelementptr inbounds i8, ptr %111, i64 48, !dbg !246
  %142 = load <16 x i8>, ptr %141, align 1, !dbg !246
  %143 = lshr <16 x i8> %142, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %144 = and <16 x i8> %142, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %145 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %144), !dbg !246
  %146 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %83, <16 x i8> %143), !dbg !246
  %147 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %139, <16 x i8> %145), !dbg !246
  %148 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %133, <16 x i8> %147), !dbg !246
  %149 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %140, <16 x i8> %146), !dbg !246
  %150 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %134, <16 x i8> %149), !dbg !246
  %151 = getelementptr inbounds i8, ptr %111, i64 64, !dbg !246
  %152 = load <16 x i8>, ptr %151, align 1, !dbg !246
  %153 = lshr <16 x i8> %152, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %154 = and <16 x i8> %152, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %155 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %85, <16 x i8> %154), !dbg !246
  %156 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %85, <16 x i8> %153), !dbg !246
  %157 = getelementptr inbounds i8, ptr %111, i64 80, !dbg !246
  %158 = load <16 x i8>, ptr %157, align 1, !dbg !246
  %159 = lshr <16 x i8> %158, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %160 = and <16 x i8> %158, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %161 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %87, <16 x i8> %160), !dbg !246
  %162 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %87, <16 x i8> %159), !dbg !246
  %163 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %155, <16 x i8> %161), !dbg !246
  %164 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %156, <16 x i8> %162), !dbg !246
  %165 = getelementptr inbounds i8, ptr %111, i64 96, !dbg !246
  %166 = load <16 x i8>, ptr %165, align 1, !dbg !246
  %167 = lshr <16 x i8> %166, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %168 = and <16 x i8> %166, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %169 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %168), !dbg !246
  %170 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %89, <16 x i8> %167), !dbg !246
  %171 = getelementptr inbounds i8, ptr %111, i64 112, !dbg !246
  %172 = load <16 x i8>, ptr %171, align 1, !dbg !246
  %173 = lshr <16 x i8> %172, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %174 = and <16 x i8> %172, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %175 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %91, <16 x i8> %174), !dbg !246
  %176 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %91, <16 x i8> %173), !dbg !246
  %177 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %169, <16 x i8> %175), !dbg !246
  %178 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %163, <16 x i8> %177), !dbg !246
  %179 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %148, <16 x i8> %178), !dbg !246
  %180 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %170, <16 x i8> %176), !dbg !246
  %181 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %164, <16 x i8> %180), !dbg !246
  %182 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %150, <16 x i8> %181), !dbg !246
  %183 = getelementptr inbounds i8, ptr %111, i64 128, !dbg !246
  %184 = load <16 x i8>, ptr %183, align 1, !dbg !246
  %185 = lshr <16 x i8> %184, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %186 = and <16 x i8> %184, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %187 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %93, <16 x i8> %186), !dbg !246
  %188 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %93, <16 x i8> %185), !dbg !246
  %189 = getelementptr inbounds i8, ptr %111, i64 144, !dbg !246
  %190 = load <16 x i8>, ptr %189, align 1, !dbg !246
  %191 = lshr <16 x i8> %190, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %192 = and <16 x i8> %190, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %193 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %95, <16 x i8> %192), !dbg !246
  %194 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %95, <16 x i8> %191), !dbg !246
  %195 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %187, <16 x i8> %193), !dbg !246
  %196 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %188, <16 x i8> %194), !dbg !246
  %197 = getelementptr inbounds i8, ptr %111, i64 160, !dbg !246
  %198 = load <16 x i8>, ptr %197, align 1, !dbg !246
  %199 = lshr <16 x i8> %198, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %200 = and <16 x i8> %198, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %201 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %97, <16 x i8> %200), !dbg !246
  %202 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %97, <16 x i8> %199), !dbg !246
  %203 = getelementptr inbounds i8, ptr %111, i64 176, !dbg !246
  %204 = load <16 x i8>, ptr %203, align 1, !dbg !246
  %205 = lshr <16 x i8> %204, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %206 = and <16 x i8> %204, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %207 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %99, <16 x i8> %206), !dbg !246
  %208 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %99, <16 x i8> %205), !dbg !246
  %209 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %201, <16 x i8> %207), !dbg !246
  %210 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %195, <16 x i8> %209), !dbg !246
  %211 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %202, <16 x i8> %208), !dbg !246
  %212 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %196, <16 x i8> %211), !dbg !246
  %213 = getelementptr inbounds i8, ptr %111, i64 192, !dbg !246
  %214 = load <16 x i8>, ptr %213, align 1, !dbg !246
  %215 = lshr <16 x i8> %214, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %216 = and <16 x i8> %214, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %217 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %101, <16 x i8> %216), !dbg !246
  %218 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %101, <16 x i8> %215), !dbg !246
  %219 = getelementptr inbounds i8, ptr %111, i64 208, !dbg !246
  %220 = load <16 x i8>, ptr %219, align 1, !dbg !246
  %221 = lshr <16 x i8> %220, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %222 = and <16 x i8> %220, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %223 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %103, <16 x i8> %222), !dbg !246
  %224 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %103, <16 x i8> %221), !dbg !246
  %225 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %217, <16 x i8> %223), !dbg !246
  %226 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %218, <16 x i8> %224), !dbg !246
  %227 = getelementptr inbounds i8, ptr %111, i64 224, !dbg !246
  %228 = load <16 x i8>, ptr %227, align 1, !dbg !246
  %229 = lshr <16 x i8> %228, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %230 = and <16 x i8> %228, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %231 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %105, <16 x i8> %230), !dbg !246
  %232 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %105, <16 x i8> %229), !dbg !246
  %233 = getelementptr inbounds i8, ptr %111, i64 240, !dbg !246
  %234 = load <16 x i8>, ptr %233, align 1, !dbg !246
  %235 = lshr <16 x i8> %234, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !246
  %236 = and <16 x i8> %234, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !246
  %237 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %107, <16 x i8> %236), !dbg !246
  %238 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %107, <16 x i8> %235), !dbg !246
  %239 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %232, <16 x i8> %238), !dbg !246
  %240 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %226, <16 x i8> %239), !dbg !246
  %241 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %212, <16 x i8> %240), !dbg !246
  %242 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %182, <16 x i8> %241), !dbg !246
  %243 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %231, <16 x i8> %237), !dbg !246
  %244 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %225, <16 x i8> %243), !dbg !246
  %245 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %210, <16 x i8> %244), !dbg !246
  %246 = tail call <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8> %179, <16 x i8> %245), !dbg !246
  %247 = shufflevector <8 x half> %120, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !246
  %248 = shufflevector <8 x half> %121, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !246
  %249 = shufflevector <16 x i8> %246, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !246
  %250 = sitofp <8 x i8> %249 to <8 x half>, !dbg !246
  %251 = shufflevector <16 x i8> %246, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !246
  %252 = sitofp <8 x i8> %251 to <8 x half>, !dbg !246
  %253 = shufflevector <16 x i8> %242, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !246
  %254 = sitofp <8 x i8> %253 to <8 x half>, !dbg !246
  %255 = shufflevector <16 x i8> %242, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !246
  %256 = sitofp <8 x i8> %255 to <8 x half>, !dbg !246
  %257 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %250, <8 x half> %247, <8 x half> %248), !dbg !246
  %258 = fmul <8 x half> %247, %252, !dbg !246
  %259 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %254, <8 x half> %247, <8 x half> %248), !dbg !246
  %260 = fmul <8 x half> %247, %256, !dbg !246
  %261 = load half, ptr %Scales, align 2, !dbg !246, !tbaa !257
  %262 = shl nuw nsw i64 %109, 1, !dbg !246
  %263 = getelementptr inbounds half, ptr %69, i64 %262, !dbg !246
  %264 = load <8 x half>, ptr %263, align 64, !dbg !246
  %265 = insertelement <8 x half> poison, half %261, i64 0, !dbg !246
  %266 = shufflevector <8 x half> %265, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !246
  %267 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %257, <8 x half> %266, <8 x half> %264), !dbg !246
  store <8 x half> %267, ptr %263, align 64, !dbg !246
  %268 = getelementptr inbounds half, ptr %263, i64 8, !dbg !246
  %269 = load <8 x half>, ptr %268, align 16, !dbg !246
  %270 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %258, <8 x half> %266, <8 x half> %269), !dbg !246
  store <8 x half> %270, ptr %268, align 16, !dbg !246
  %271 = getelementptr inbounds half, ptr %263, i64 16, !dbg !246
  %272 = load <8 x half>, ptr %271, align 32, !dbg !246
  %273 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %259, <8 x half> %266, <8 x half> %272), !dbg !246
  store <8 x half> %273, ptr %271, align 32, !dbg !246
  %274 = getelementptr inbounds half, ptr %263, i64 24, !dbg !246
  %275 = load <8 x half>, ptr %274, align 16, !dbg !246
  %276 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %260, <8 x half> %266, <8 x half> %275), !dbg !246
  store <8 x half> %276, ptr %274, align 16, !dbg !246
  %277 = add nuw nsw i64 %109, 16, !dbg !246
  %278 = icmp ult i64 %109, 112, !dbg !246
  br i1 %278, label %108, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fatrue_zfalse_ostrue.exit, !dbg !246, !llvm.loop !261

tbl_g4_int8_float_update_strue_k16_b2_ak16_fatrue_zfalse_ostrue.exit: ; preds = %108
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !246
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !255, metadata !DIExpression()), !dbg !246
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !246
  br i1 %exitcond.not, label %for_end_n, label %for_body_n, !dbg !246, !prof !29

for_end_n:                                        ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fatrue_zfalse_ostrue.exit
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1, !dbg !246
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next27, metadata !254, metadata !DIExpression()), !dbg !246
  %exitcond29.not = icmp eq i64 %indvars.iv.next27, 64, !dbg !246
  br i1 %exitcond29.not, label %for_begin_m.c.outer.preheader, label %for_begin_n.preheader, !dbg !246, !prof !29

for_begin_n.inner.preheader:                      ; preds = %for_end_m.c.outer
  %279 = shl nsw i64 %indvars.iv49, 7
  %280 = add nuw nsw i64 %279, %26
  call void @llvm.dbg.declare(metadata i32 0, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %sext = shl i64 %280, 32, !dbg !246
  %281 = ashr exact i64 %sext, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %282 = load <32 x half>, ptr %C.global, align 64, !dbg !246, !tbaa !265
  %283 = getelementptr inbounds half, ptr %C, i64 %281, !dbg !246
  store <32 x half> %282, ptr %283, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %284 = load <32 x half>, ptr %27, align 64, !dbg !246, !tbaa !265
  %285 = or i64 %281, 32, !dbg !246
  %286 = getelementptr inbounds half, ptr %C, i64 %285, !dbg !246
  store <32 x half> %284, ptr %286, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %287 = load <32 x half>, ptr %28, align 64, !dbg !246, !tbaa !265
  %288 = or i64 %281, 64, !dbg !246
  %289 = getelementptr inbounds half, ptr %C, i64 %288, !dbg !246
  store <32 x half> %287, ptr %289, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %290 = load <32 x half>, ptr %29, align 64, !dbg !246, !tbaa !265
  %291 = or i64 %281, 96, !dbg !246
  %292 = getelementptr inbounds half, ptr %C, i64 %291, !dbg !246
  store <32 x half> %290, ptr %292, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %293 = shl i64 %280, 32, !dbg !246
  %sext55 = add i64 %293, 8796093022208, !dbg !246
  %294 = ashr exact i64 %sext55, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %295 = load <32 x half>, ptr %30, align 64, !dbg !246, !tbaa !265
  %296 = getelementptr inbounds half, ptr %C, i64 %294, !dbg !246
  store <32 x half> %295, ptr %296, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %297 = load <32 x half>, ptr %31, align 64, !dbg !246, !tbaa !265
  %298 = or i64 %294, 32, !dbg !246
  %299 = getelementptr inbounds half, ptr %C, i64 %298, !dbg !246
  store <32 x half> %297, ptr %299, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %300 = load <32 x half>, ptr %32, align 64, !dbg !246, !tbaa !265
  %301 = or i64 %294, 64, !dbg !246
  %302 = getelementptr inbounds half, ptr %C, i64 %301, !dbg !246
  store <32 x half> %300, ptr %302, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %303 = load <32 x half>, ptr %33, align 64, !dbg !246, !tbaa !265
  %304 = or i64 %294, 96, !dbg !246
  %305 = getelementptr inbounds half, ptr %C, i64 %304, !dbg !246
  store <32 x half> %303, ptr %305, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %306 = shl i64 %280, 32, !dbg !246
  %sext56 = add i64 %306, 17592186044416, !dbg !246
  %307 = ashr exact i64 %sext56, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %308 = load <32 x half>, ptr %34, align 64, !dbg !246, !tbaa !265
  %309 = getelementptr inbounds half, ptr %C, i64 %307, !dbg !246
  store <32 x half> %308, ptr %309, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %310 = load <32 x half>, ptr %35, align 64, !dbg !246, !tbaa !265
  %311 = or i64 %307, 32, !dbg !246
  %312 = getelementptr inbounds half, ptr %C, i64 %311, !dbg !246
  store <32 x half> %310, ptr %312, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %313 = load <32 x half>, ptr %36, align 64, !dbg !246, !tbaa !265
  %314 = or i64 %307, 64, !dbg !246
  %315 = getelementptr inbounds half, ptr %C, i64 %314, !dbg !246
  store <32 x half> %313, ptr %315, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %316 = load <32 x half>, ptr %37, align 64, !dbg !246, !tbaa !265
  %317 = or i64 %307, 96, !dbg !246
  %318 = getelementptr inbounds half, ptr %C, i64 %317, !dbg !246
  store <32 x half> %316, ptr %318, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %319 = shl i64 %280, 32, !dbg !246
  %sext57 = add i64 %319, 26388279066624, !dbg !246
  %320 = ashr exact i64 %sext57, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %321 = load <32 x half>, ptr %38, align 64, !dbg !246, !tbaa !265
  %322 = getelementptr inbounds half, ptr %C, i64 %320, !dbg !246
  store <32 x half> %321, ptr %322, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %323 = load <32 x half>, ptr %39, align 64, !dbg !246, !tbaa !265
  %324 = or i64 %320, 32, !dbg !246
  %325 = getelementptr inbounds half, ptr %C, i64 %324, !dbg !246
  store <32 x half> %323, ptr %325, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %326 = load <32 x half>, ptr %40, align 64, !dbg !246, !tbaa !265
  %327 = or i64 %320, 64, !dbg !246
  %328 = getelementptr inbounds half, ptr %C, i64 %327, !dbg !246
  store <32 x half> %326, ptr %328, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %329 = load <32 x half>, ptr %41, align 64, !dbg !246, !tbaa !265
  %330 = or i64 %320, 96, !dbg !246
  %331 = getelementptr inbounds half, ptr %C, i64 %330, !dbg !246
  store <32 x half> %329, ptr %331, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 4, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 4, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %332 = shl i64 %280, 32, !dbg !246
  %sext58 = add i64 %332, 35184372088832, !dbg !246
  %333 = ashr exact i64 %sext58, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %334 = load <32 x half>, ptr %42, align 64, !dbg !246, !tbaa !265
  %335 = getelementptr inbounds half, ptr %C, i64 %333, !dbg !246
  store <32 x half> %334, ptr %335, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %336 = load <32 x half>, ptr %43, align 64, !dbg !246, !tbaa !265
  %337 = or i64 %333, 32, !dbg !246
  %338 = getelementptr inbounds half, ptr %C, i64 %337, !dbg !246
  store <32 x half> %336, ptr %338, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %339 = load <32 x half>, ptr %44, align 64, !dbg !246, !tbaa !265
  %340 = or i64 %333, 64, !dbg !246
  %341 = getelementptr inbounds half, ptr %C, i64 %340, !dbg !246
  store <32 x half> %339, ptr %341, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %342 = load <32 x half>, ptr %45, align 64, !dbg !246, !tbaa !265
  %343 = or i64 %333, 96, !dbg !246
  %344 = getelementptr inbounds half, ptr %C, i64 %343, !dbg !246
  store <32 x half> %342, ptr %344, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 5, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 5, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %345 = shl i64 %280, 32, !dbg !246
  %sext59 = add i64 %345, 43980465111040, !dbg !246
  %346 = ashr exact i64 %sext59, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %347 = load <32 x half>, ptr %46, align 64, !dbg !246, !tbaa !265
  %348 = getelementptr inbounds half, ptr %C, i64 %346, !dbg !246
  store <32 x half> %347, ptr %348, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %349 = load <32 x half>, ptr %47, align 64, !dbg !246, !tbaa !265
  %350 = or i64 %346, 32, !dbg !246
  %351 = getelementptr inbounds half, ptr %C, i64 %350, !dbg !246
  store <32 x half> %349, ptr %351, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %352 = load <32 x half>, ptr %48, align 64, !dbg !246, !tbaa !265
  %353 = or i64 %346, 64, !dbg !246
  %354 = getelementptr inbounds half, ptr %C, i64 %353, !dbg !246
  store <32 x half> %352, ptr %354, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %355 = load <32 x half>, ptr %49, align 64, !dbg !246, !tbaa !265
  %356 = or i64 %346, 96, !dbg !246
  %357 = getelementptr inbounds half, ptr %C, i64 %356, !dbg !246
  store <32 x half> %355, ptr %357, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 6, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 6, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %358 = shl i64 %280, 32, !dbg !246
  %sext60 = add i64 %358, 52776558133248, !dbg !246
  %359 = ashr exact i64 %sext60, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %360 = load <32 x half>, ptr %50, align 64, !dbg !246, !tbaa !265
  %361 = getelementptr inbounds half, ptr %C, i64 %359, !dbg !246
  store <32 x half> %360, ptr %361, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %362 = load <32 x half>, ptr %51, align 64, !dbg !246, !tbaa !265
  %363 = or i64 %359, 32, !dbg !246
  %364 = getelementptr inbounds half, ptr %C, i64 %363, !dbg !246
  store <32 x half> %362, ptr %364, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %365 = load <32 x half>, ptr %52, align 64, !dbg !246, !tbaa !265
  %366 = or i64 %359, 64, !dbg !246
  %367 = getelementptr inbounds half, ptr %C, i64 %366, !dbg !246
  store <32 x half> %365, ptr %367, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %368 = load <32 x half>, ptr %53, align 64, !dbg !246, !tbaa !265
  %369 = or i64 %359, 96, !dbg !246
  %370 = getelementptr inbounds half, ptr %C, i64 %369, !dbg !246
  store <32 x half> %368, ptr %370, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 7, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 7, metadata !263, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i32 0, metadata !264, metadata !DIExpression()), !dbg !246
  %371 = shl i64 %280, 32, !dbg !246
  %sext61 = add i64 %371, 61572651155456, !dbg !246
  %372 = ashr exact i64 %sext61, 32, !dbg !246
  call void @llvm.dbg.declare(metadata i64 0, metadata !264, metadata !DIExpression()), !dbg !246
  %373 = load <32 x half>, ptr %25, align 64, !dbg !246, !tbaa !265
  %374 = getelementptr inbounds half, ptr %C, i64 %372, !dbg !246
  store <32 x half> %373, ptr %374, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !246
  %375 = load <32 x half>, ptr %54, align 64, !dbg !246, !tbaa !265
  %376 = or i64 %372, 32, !dbg !246
  %377 = getelementptr inbounds half, ptr %C, i64 %376, !dbg !246
  store <32 x half> %375, ptr %377, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 2, metadata !264, metadata !DIExpression()), !dbg !246
  %378 = load <32 x half>, ptr %55, align 64, !dbg !246, !tbaa !265
  %379 = or i64 %372, 64, !dbg !246
  %380 = getelementptr inbounds half, ptr %C, i64 %379, !dbg !246
  store <32 x half> %378, ptr %380, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 3, metadata !264, metadata !DIExpression()), !dbg !246
  %381 = load <32 x half>, ptr %56, align 64, !dbg !246, !tbaa !265
  %382 = or i64 %372, 96, !dbg !246
  %383 = getelementptr inbounds half, ptr %C, i64 %382, !dbg !246
  store <32 x half> %381, ptr %383, align 64, !dbg !246, !tbaa !267
  call void @llvm.dbg.declare(metadata i64 4, metadata !264, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata i64 8, metadata !263, metadata !DIExpression()), !dbg !246
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1, !dbg !246
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next50, metadata !252, metadata !DIExpression()), !dbg !246
  %exitcond52.not = icmp eq i64 %indvars.iv.next50, 16, !dbg !246
  br i1 %exitcond52.not, label %for_end_m.outer, label %for_begin_n.init.preheader, !dbg !246, !prof !29

for_begin_m.c.outer.preheader:                    ; preds = %for_end_n, %for_end_m.c.outer
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for_end_m.c.outer ], [ 0, %for_end_n ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv34, metadata !269, metadata !DIExpression()), !dbg !246
  %384 = shl nsw i64 %indvars.iv34, 8
  %385 = shl nsw i64 %indvars.iv34, 2
  call void @llvm.dbg.declare(metadata i32 0, metadata !270, metadata !DIExpression()), !dbg !246
  br label %for_body_m.c.outer, !dbg !246

for_body_m.c.outer:                               ; preds = %for_begin_m.c.outer.preheader, %for_body_m.c.outer
  %indvars.iv30 = phi i64 [ 0, %for_begin_m.c.outer.preheader ], [ %indvars.iv.next31, %for_body_m.c.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv30, metadata !270, metadata !DIExpression()), !dbg !246
  %386 = shl nuw nsw i64 %indvars.iv30, 6, !dbg !246
  %387 = add nuw nsw i64 %386, %384, !dbg !246
  %388 = trunc i64 %387 to i32, !dbg !246
  %389 = insertelement <32 x i32> undef, i32 %388, i64 0, !dbg !246
  %390 = shufflevector <32 x i32> %389, <32 x i32> undef, <32 x i32> zeroinitializer, !dbg !246
  %cse_var_2 = or <32 x i32> %390, <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, !dbg !246
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_2, metadata !271, metadata !DIExpression()), !dbg !246
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_2, metadata !271, metadata !DIExpression()), !dbg !246
  %391 = getelementptr inbounds half, ptr %CBits, i64 %387, !dbg !246
  %392 = load half, ptr %391, align 64, !dbg !246, !tbaa !273
  %393 = extractelement <32 x i32> %cse_var_2, i64 1, !dbg !246
  %394 = sext i32 %393 to i64, !dbg !246
  %395 = getelementptr inbounds half, ptr %CBits, i64 %394, !dbg !246
  %396 = load half, ptr %395, align 2, !dbg !246, !tbaa !273
  %397 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !246
  %398 = sext <2 x i32> %397 to <2 x i64>, !dbg !246
  %399 = extractelement <2 x i64> %398, i64 0, !dbg !246
  %400 = getelementptr inbounds half, ptr %CBits, i64 %399, !dbg !246
  %401 = load half, ptr %400, align 2, !dbg !246, !tbaa !273
  %402 = extractelement <2 x i64> %398, i64 1, !dbg !246
  %403 = getelementptr inbounds half, ptr %CBits, i64 %402, !dbg !246
  %404 = load half, ptr %403, align 2, !dbg !246, !tbaa !273
  %405 = extractelement <32 x i32> %cse_var_2, i64 4, !dbg !246
  %406 = sext i32 %405 to i64, !dbg !246
  %407 = getelementptr inbounds half, ptr %CBits, i64 %406, !dbg !246
  %408 = load half, ptr %407, align 2, !dbg !246, !tbaa !273
  %409 = extractelement <32 x i32> %cse_var_2, i64 5, !dbg !246
  %410 = sext i32 %409 to i64, !dbg !246
  %411 = getelementptr inbounds half, ptr %CBits, i64 %410, !dbg !246
  %412 = load half, ptr %411, align 2, !dbg !246, !tbaa !273
  %413 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !246
  %414 = sext <2 x i32> %413 to <2 x i64>, !dbg !246
  %415 = extractelement <2 x i64> %414, i64 0, !dbg !246
  %416 = getelementptr inbounds half, ptr %CBits, i64 %415, !dbg !246
  %417 = load half, ptr %416, align 2, !dbg !246, !tbaa !273
  %418 = extractelement <2 x i64> %414, i64 1, !dbg !246
  %419 = getelementptr inbounds half, ptr %CBits, i64 %418, !dbg !246
  %420 = load half, ptr %419, align 2, !dbg !246, !tbaa !273
  %421 = extractelement <32 x i32> %cse_var_2, i64 8, !dbg !246
  %422 = sext i32 %421 to i64, !dbg !246
  %423 = getelementptr inbounds half, ptr %CBits, i64 %422, !dbg !246
  %424 = load half, ptr %423, align 2, !dbg !246, !tbaa !273
  %425 = extractelement <32 x i32> %cse_var_2, i64 9, !dbg !246
  %426 = sext i32 %425 to i64, !dbg !246
  %427 = getelementptr inbounds half, ptr %CBits, i64 %426, !dbg !246
  %428 = load half, ptr %427, align 2, !dbg !246, !tbaa !273
  %429 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !246
  %430 = sext <2 x i32> %429 to <2 x i64>, !dbg !246
  %431 = extractelement <2 x i64> %430, i64 0, !dbg !246
  %432 = getelementptr inbounds half, ptr %CBits, i64 %431, !dbg !246
  %433 = load half, ptr %432, align 2, !dbg !246, !tbaa !273
  %434 = extractelement <2 x i64> %430, i64 1, !dbg !246
  %435 = getelementptr inbounds half, ptr %CBits, i64 %434, !dbg !246
  %436 = load half, ptr %435, align 2, !dbg !246, !tbaa !273
  %437 = extractelement <32 x i32> %cse_var_2, i64 12, !dbg !246
  %438 = sext i32 %437 to i64, !dbg !246
  %439 = getelementptr inbounds half, ptr %CBits, i64 %438, !dbg !246
  %440 = load half, ptr %439, align 2, !dbg !246, !tbaa !273
  %441 = extractelement <32 x i32> %cse_var_2, i64 13, !dbg !246
  %442 = sext i32 %441 to i64, !dbg !246
  %443 = getelementptr inbounds half, ptr %CBits, i64 %442, !dbg !246
  %444 = load half, ptr %443, align 2, !dbg !246, !tbaa !273
  %445 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !246
  %446 = sext <2 x i32> %445 to <2 x i64>, !dbg !246
  %447 = extractelement <2 x i64> %446, i64 0, !dbg !246
  %448 = getelementptr inbounds half, ptr %CBits, i64 %447, !dbg !246
  %449 = load half, ptr %448, align 2, !dbg !246, !tbaa !273
  %450 = extractelement <2 x i64> %446, i64 1, !dbg !246
  %451 = getelementptr inbounds half, ptr %CBits, i64 %450, !dbg !246
  %452 = load half, ptr %451, align 2, !dbg !246, !tbaa !273
  %453 = extractelement <32 x i32> %cse_var_2, i64 16, !dbg !246
  %454 = sext i32 %453 to i64, !dbg !246
  %455 = getelementptr inbounds half, ptr %CBits, i64 %454, !dbg !246
  %456 = load half, ptr %455, align 2, !dbg !246, !tbaa !273
  %457 = extractelement <32 x i32> %cse_var_2, i64 17, !dbg !246
  %458 = sext i32 %457 to i64, !dbg !246
  %459 = getelementptr inbounds half, ptr %CBits, i64 %458, !dbg !246
  %460 = load half, ptr %459, align 2, !dbg !246, !tbaa !273
  %461 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !246
  %462 = sext <2 x i32> %461 to <2 x i64>, !dbg !246
  %463 = extractelement <2 x i64> %462, i64 0, !dbg !246
  %464 = getelementptr inbounds half, ptr %CBits, i64 %463, !dbg !246
  %465 = load half, ptr %464, align 2, !dbg !246, !tbaa !273
  %466 = extractelement <2 x i64> %462, i64 1, !dbg !246
  %467 = getelementptr inbounds half, ptr %CBits, i64 %466, !dbg !246
  %468 = load half, ptr %467, align 2, !dbg !246, !tbaa !273
  %469 = extractelement <32 x i32> %cse_var_2, i64 20, !dbg !246
  %470 = sext i32 %469 to i64, !dbg !246
  %471 = getelementptr inbounds half, ptr %CBits, i64 %470, !dbg !246
  %472 = load half, ptr %471, align 2, !dbg !246, !tbaa !273
  %473 = extractelement <32 x i32> %cse_var_2, i64 21, !dbg !246
  %474 = sext i32 %473 to i64, !dbg !246
  %475 = getelementptr inbounds half, ptr %CBits, i64 %474, !dbg !246
  %476 = load half, ptr %475, align 2, !dbg !246, !tbaa !273
  %477 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !246
  %478 = sext <2 x i32> %477 to <2 x i64>, !dbg !246
  %479 = extractelement <2 x i64> %478, i64 0, !dbg !246
  %480 = getelementptr inbounds half, ptr %CBits, i64 %479, !dbg !246
  %481 = load half, ptr %480, align 2, !dbg !246, !tbaa !273
  %482 = extractelement <2 x i64> %478, i64 1, !dbg !246
  %483 = getelementptr inbounds half, ptr %CBits, i64 %482, !dbg !246
  %484 = load half, ptr %483, align 2, !dbg !246, !tbaa !273
  %485 = extractelement <32 x i32> %cse_var_2, i64 24, !dbg !246
  %486 = sext i32 %485 to i64, !dbg !246
  %487 = getelementptr inbounds half, ptr %CBits, i64 %486, !dbg !246
  %488 = load half, ptr %487, align 2, !dbg !246, !tbaa !273
  %489 = extractelement <32 x i32> %cse_var_2, i64 25, !dbg !246
  %490 = sext i32 %489 to i64, !dbg !246
  %491 = getelementptr inbounds half, ptr %CBits, i64 %490, !dbg !246
  %492 = load half, ptr %491, align 2, !dbg !246, !tbaa !273
  %493 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !246
  %494 = sext <2 x i32> %493 to <2 x i64>, !dbg !246
  %495 = extractelement <2 x i64> %494, i64 0, !dbg !246
  %496 = getelementptr inbounds half, ptr %CBits, i64 %495, !dbg !246
  %497 = load half, ptr %496, align 2, !dbg !246, !tbaa !273
  %498 = extractelement <2 x i64> %494, i64 1, !dbg !246
  %499 = getelementptr inbounds half, ptr %CBits, i64 %498, !dbg !246
  %500 = load half, ptr %499, align 2, !dbg !246, !tbaa !273
  %501 = extractelement <32 x i32> %cse_var_2, i64 28, !dbg !246
  %502 = sext i32 %501 to i64, !dbg !246
  %503 = getelementptr inbounds half, ptr %CBits, i64 %502, !dbg !246
  %504 = load half, ptr %503, align 2, !dbg !246, !tbaa !273
  %505 = extractelement <32 x i32> %cse_var_2, i64 29, !dbg !246
  %506 = sext i32 %505 to i64, !dbg !246
  %507 = getelementptr inbounds half, ptr %CBits, i64 %506, !dbg !246
  %508 = load half, ptr %507, align 2, !dbg !246, !tbaa !273
  %509 = shufflevector <32 x i32> %cse_var_2, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !246
  %510 = sext <2 x i32> %509 to <2 x i64>, !dbg !246
  %511 = extractelement <2 x i64> %510, i64 0, !dbg !246
  %512 = getelementptr inbounds half, ptr %CBits, i64 %511, !dbg !246
  %513 = load half, ptr %512, align 2, !dbg !246, !tbaa !273
  %514 = extractelement <2 x i64> %510, i64 1, !dbg !246
  %515 = getelementptr inbounds half, ptr %CBits, i64 %514, !dbg !246
  %516 = load half, ptr %515, align 2, !dbg !246, !tbaa !273
  %517 = insertelement <32 x half> undef, half %392, i64 0, !dbg !246
  %518 = insertelement <32 x half> %517, half %396, i64 1, !dbg !246
  %519 = insertelement <32 x half> %518, half %401, i64 2, !dbg !246
  %520 = insertelement <32 x half> %519, half %404, i64 3, !dbg !246
  %521 = insertelement <32 x half> %520, half %408, i64 4, !dbg !246
  %522 = insertelement <32 x half> %521, half %412, i64 5, !dbg !246
  %523 = insertelement <32 x half> %522, half %417, i64 6, !dbg !246
  %524 = insertelement <32 x half> %523, half %420, i64 7, !dbg !246
  %525 = insertelement <32 x half> %524, half %424, i64 8, !dbg !246
  %526 = insertelement <32 x half> %525, half %428, i64 9, !dbg !246
  %527 = insertelement <32 x half> %526, half %433, i64 10, !dbg !246
  %528 = insertelement <32 x half> %527, half %436, i64 11, !dbg !246
  %529 = insertelement <32 x half> %528, half %440, i64 12, !dbg !246
  %530 = insertelement <32 x half> %529, half %444, i64 13, !dbg !246
  %531 = insertelement <32 x half> %530, half %449, i64 14, !dbg !246
  %532 = insertelement <32 x half> %531, half %452, i64 15, !dbg !246
  %533 = insertelement <32 x half> %532, half %456, i64 16, !dbg !246
  %534 = insertelement <32 x half> %533, half %460, i64 17, !dbg !246
  %535 = insertelement <32 x half> %534, half %465, i64 18, !dbg !246
  %536 = insertelement <32 x half> %535, half %468, i64 19, !dbg !246
  %537 = insertelement <32 x half> %536, half %472, i64 20, !dbg !246
  %538 = insertelement <32 x half> %537, half %476, i64 21, !dbg !246
  %539 = insertelement <32 x half> %538, half %481, i64 22, !dbg !246
  %540 = insertelement <32 x half> %539, half %484, i64 23, !dbg !246
  %541 = insertelement <32 x half> %540, half %488, i64 24, !dbg !246
  %542 = insertelement <32 x half> %541, half %492, i64 25, !dbg !246
  %543 = insertelement <32 x half> %542, half %497, i64 26, !dbg !246
  %544 = insertelement <32 x half> %543, half %500, i64 27, !dbg !246
  %545 = insertelement <32 x half> %544, half %504, i64 28, !dbg !246
  %546 = insertelement <32 x half> %545, half %508, i64 29, !dbg !246
  %547 = insertelement <32 x half> %546, half %513, i64 30, !dbg !246
  %548 = insertelement <32 x half> %547, half %516, i64 31, !dbg !246
  %549 = or <32 x i32> %390, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, !dbg !246
  %550 = extractelement <32 x i32> %549, i64 0, !dbg !246
  %551 = sext i32 %550 to i64, !dbg !246
  %552 = getelementptr inbounds half, ptr %CBits, i64 %551, !dbg !246
  %553 = load half, ptr %552, align 2, !dbg !246, !tbaa !273
  %554 = extractelement <32 x i32> %549, i64 1, !dbg !246
  %555 = sext i32 %554 to i64, !dbg !246
  %556 = getelementptr inbounds half, ptr %CBits, i64 %555, !dbg !246
  %557 = load half, ptr %556, align 2, !dbg !246, !tbaa !273
  %558 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !246
  %559 = sext <2 x i32> %558 to <2 x i64>, !dbg !246
  %560 = extractelement <2 x i64> %559, i64 0, !dbg !246
  %561 = getelementptr inbounds half, ptr %CBits, i64 %560, !dbg !246
  %562 = load half, ptr %561, align 2, !dbg !246, !tbaa !273
  %563 = extractelement <2 x i64> %559, i64 1, !dbg !246
  %564 = getelementptr inbounds half, ptr %CBits, i64 %563, !dbg !246
  %565 = load half, ptr %564, align 2, !dbg !246, !tbaa !273
  %566 = extractelement <32 x i32> %549, i64 4, !dbg !246
  %567 = sext i32 %566 to i64, !dbg !246
  %568 = getelementptr inbounds half, ptr %CBits, i64 %567, !dbg !246
  %569 = load half, ptr %568, align 2, !dbg !246, !tbaa !273
  %570 = extractelement <32 x i32> %549, i64 5, !dbg !246
  %571 = sext i32 %570 to i64, !dbg !246
  %572 = getelementptr inbounds half, ptr %CBits, i64 %571, !dbg !246
  %573 = load half, ptr %572, align 2, !dbg !246, !tbaa !273
  %574 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !246
  %575 = sext <2 x i32> %574 to <2 x i64>, !dbg !246
  %576 = extractelement <2 x i64> %575, i64 0, !dbg !246
  %577 = getelementptr inbounds half, ptr %CBits, i64 %576, !dbg !246
  %578 = load half, ptr %577, align 2, !dbg !246, !tbaa !273
  %579 = extractelement <2 x i64> %575, i64 1, !dbg !246
  %580 = getelementptr inbounds half, ptr %CBits, i64 %579, !dbg !246
  %581 = load half, ptr %580, align 2, !dbg !246, !tbaa !273
  %582 = extractelement <32 x i32> %549, i64 8, !dbg !246
  %583 = sext i32 %582 to i64, !dbg !246
  %584 = getelementptr inbounds half, ptr %CBits, i64 %583, !dbg !246
  %585 = load half, ptr %584, align 2, !dbg !246, !tbaa !273
  %586 = extractelement <32 x i32> %549, i64 9, !dbg !246
  %587 = sext i32 %586 to i64, !dbg !246
  %588 = getelementptr inbounds half, ptr %CBits, i64 %587, !dbg !246
  %589 = load half, ptr %588, align 2, !dbg !246, !tbaa !273
  %590 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !246
  %591 = sext <2 x i32> %590 to <2 x i64>, !dbg !246
  %592 = extractelement <2 x i64> %591, i64 0, !dbg !246
  %593 = getelementptr inbounds half, ptr %CBits, i64 %592, !dbg !246
  %594 = load half, ptr %593, align 2, !dbg !246, !tbaa !273
  %595 = extractelement <2 x i64> %591, i64 1, !dbg !246
  %596 = getelementptr inbounds half, ptr %CBits, i64 %595, !dbg !246
  %597 = load half, ptr %596, align 2, !dbg !246, !tbaa !273
  %598 = extractelement <32 x i32> %549, i64 12, !dbg !246
  %599 = sext i32 %598 to i64, !dbg !246
  %600 = getelementptr inbounds half, ptr %CBits, i64 %599, !dbg !246
  %601 = load half, ptr %600, align 2, !dbg !246, !tbaa !273
  %602 = extractelement <32 x i32> %549, i64 13, !dbg !246
  %603 = sext i32 %602 to i64, !dbg !246
  %604 = getelementptr inbounds half, ptr %CBits, i64 %603, !dbg !246
  %605 = load half, ptr %604, align 2, !dbg !246, !tbaa !273
  %606 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !246
  %607 = sext <2 x i32> %606 to <2 x i64>, !dbg !246
  %608 = extractelement <2 x i64> %607, i64 0, !dbg !246
  %609 = getelementptr inbounds half, ptr %CBits, i64 %608, !dbg !246
  %610 = load half, ptr %609, align 2, !dbg !246, !tbaa !273
  %611 = extractelement <2 x i64> %607, i64 1, !dbg !246
  %612 = getelementptr inbounds half, ptr %CBits, i64 %611, !dbg !246
  %613 = load half, ptr %612, align 2, !dbg !246, !tbaa !273
  %614 = extractelement <32 x i32> %549, i64 16, !dbg !246
  %615 = sext i32 %614 to i64, !dbg !246
  %616 = getelementptr inbounds half, ptr %CBits, i64 %615, !dbg !246
  %617 = load half, ptr %616, align 2, !dbg !246, !tbaa !273
  %618 = extractelement <32 x i32> %549, i64 17, !dbg !246
  %619 = sext i32 %618 to i64, !dbg !246
  %620 = getelementptr inbounds half, ptr %CBits, i64 %619, !dbg !246
  %621 = load half, ptr %620, align 2, !dbg !246, !tbaa !273
  %622 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !246
  %623 = sext <2 x i32> %622 to <2 x i64>, !dbg !246
  %624 = extractelement <2 x i64> %623, i64 0, !dbg !246
  %625 = getelementptr inbounds half, ptr %CBits, i64 %624, !dbg !246
  %626 = load half, ptr %625, align 2, !dbg !246, !tbaa !273
  %627 = extractelement <2 x i64> %623, i64 1, !dbg !246
  %628 = getelementptr inbounds half, ptr %CBits, i64 %627, !dbg !246
  %629 = load half, ptr %628, align 2, !dbg !246, !tbaa !273
  %630 = extractelement <32 x i32> %549, i64 20, !dbg !246
  %631 = sext i32 %630 to i64, !dbg !246
  %632 = getelementptr inbounds half, ptr %CBits, i64 %631, !dbg !246
  %633 = load half, ptr %632, align 2, !dbg !246, !tbaa !273
  %634 = extractelement <32 x i32> %549, i64 21, !dbg !246
  %635 = sext i32 %634 to i64, !dbg !246
  %636 = getelementptr inbounds half, ptr %CBits, i64 %635, !dbg !246
  %637 = load half, ptr %636, align 2, !dbg !246, !tbaa !273
  %638 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !246
  %639 = sext <2 x i32> %638 to <2 x i64>, !dbg !246
  %640 = extractelement <2 x i64> %639, i64 0, !dbg !246
  %641 = getelementptr inbounds half, ptr %CBits, i64 %640, !dbg !246
  %642 = load half, ptr %641, align 2, !dbg !246, !tbaa !273
  %643 = extractelement <2 x i64> %639, i64 1, !dbg !246
  %644 = getelementptr inbounds half, ptr %CBits, i64 %643, !dbg !246
  %645 = load half, ptr %644, align 2, !dbg !246, !tbaa !273
  %646 = extractelement <32 x i32> %549, i64 24, !dbg !246
  %647 = sext i32 %646 to i64, !dbg !246
  %648 = getelementptr inbounds half, ptr %CBits, i64 %647, !dbg !246
  %649 = load half, ptr %648, align 2, !dbg !246, !tbaa !273
  %650 = extractelement <32 x i32> %549, i64 25, !dbg !246
  %651 = sext i32 %650 to i64, !dbg !246
  %652 = getelementptr inbounds half, ptr %CBits, i64 %651, !dbg !246
  %653 = load half, ptr %652, align 2, !dbg !246, !tbaa !273
  %654 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !246
  %655 = sext <2 x i32> %654 to <2 x i64>, !dbg !246
  %656 = extractelement <2 x i64> %655, i64 0, !dbg !246
  %657 = getelementptr inbounds half, ptr %CBits, i64 %656, !dbg !246
  %658 = load half, ptr %657, align 2, !dbg !246, !tbaa !273
  %659 = extractelement <2 x i64> %655, i64 1, !dbg !246
  %660 = getelementptr inbounds half, ptr %CBits, i64 %659, !dbg !246
  %661 = load half, ptr %660, align 2, !dbg !246, !tbaa !273
  %662 = extractelement <32 x i32> %549, i64 28, !dbg !246
  %663 = sext i32 %662 to i64, !dbg !246
  %664 = getelementptr inbounds half, ptr %CBits, i64 %663, !dbg !246
  %665 = load half, ptr %664, align 2, !dbg !246, !tbaa !273
  %666 = extractelement <32 x i32> %549, i64 29, !dbg !246
  %667 = sext i32 %666 to i64, !dbg !246
  %668 = getelementptr inbounds half, ptr %CBits, i64 %667, !dbg !246
  %669 = load half, ptr %668, align 2, !dbg !246, !tbaa !273
  %670 = shufflevector <32 x i32> %549, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !246
  %671 = sext <2 x i32> %670 to <2 x i64>, !dbg !246
  %672 = extractelement <2 x i64> %671, i64 0, !dbg !246
  %673 = getelementptr inbounds half, ptr %CBits, i64 %672, !dbg !246
  %674 = load half, ptr %673, align 2, !dbg !246, !tbaa !273
  %675 = extractelement <2 x i64> %671, i64 1, !dbg !246
  %676 = getelementptr inbounds half, ptr %CBits, i64 %675, !dbg !246
  %677 = load half, ptr %676, align 2, !dbg !246, !tbaa !273
  %678 = insertelement <32 x half> undef, half %553, i64 0, !dbg !246
  %679 = insertelement <32 x half> %678, half %557, i64 1, !dbg !246
  %680 = insertelement <32 x half> %679, half %562, i64 2, !dbg !246
  %681 = insertelement <32 x half> %680, half %565, i64 3, !dbg !246
  %682 = insertelement <32 x half> %681, half %569, i64 4, !dbg !246
  %683 = insertelement <32 x half> %682, half %573, i64 5, !dbg !246
  %684 = insertelement <32 x half> %683, half %578, i64 6, !dbg !246
  %685 = insertelement <32 x half> %684, half %581, i64 7, !dbg !246
  %686 = insertelement <32 x half> %685, half %585, i64 8, !dbg !246
  %687 = insertelement <32 x half> %686, half %589, i64 9, !dbg !246
  %688 = insertelement <32 x half> %687, half %594, i64 10, !dbg !246
  %689 = insertelement <32 x half> %688, half %597, i64 11, !dbg !246
  %690 = insertelement <32 x half> %689, half %601, i64 12, !dbg !246
  %691 = insertelement <32 x half> %690, half %605, i64 13, !dbg !246
  %692 = insertelement <32 x half> %691, half %610, i64 14, !dbg !246
  %693 = insertelement <32 x half> %692, half %613, i64 15, !dbg !246
  %694 = insertelement <32 x half> %693, half %617, i64 16, !dbg !246
  %695 = insertelement <32 x half> %694, half %621, i64 17, !dbg !246
  %696 = insertelement <32 x half> %695, half %626, i64 18, !dbg !246
  %697 = insertelement <32 x half> %696, half %629, i64 19, !dbg !246
  %698 = insertelement <32 x half> %697, half %633, i64 20, !dbg !246
  %699 = insertelement <32 x half> %698, half %637, i64 21, !dbg !246
  %700 = insertelement <32 x half> %699, half %642, i64 22, !dbg !246
  %701 = insertelement <32 x half> %700, half %645, i64 23, !dbg !246
  %702 = insertelement <32 x half> %701, half %649, i64 24, !dbg !246
  %703 = insertelement <32 x half> %702, half %653, i64 25, !dbg !246
  %704 = insertelement <32 x half> %703, half %658, i64 26, !dbg !246
  %705 = insertelement <32 x half> %704, half %661, i64 27, !dbg !246
  %706 = insertelement <32 x half> %705, half %665, i64 28, !dbg !246
  %707 = insertelement <32 x half> %706, half %669, i64 29, !dbg !246
  %708 = insertelement <32 x half> %707, half %674, i64 30, !dbg !246
  %709 = insertelement <32 x half> %708, half %677, i64 31, !dbg !246
  %710 = tail call <32 x half> @llvm.fmuladd.v32f16(<32 x half> %548, <32 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <32 x half> %709), !dbg !246
  %711 = add nuw nsw i64 %indvars.iv30, %385, !dbg !246
  %712 = getelementptr inbounds <32 x half>, ptr %C.global, i64 %711, !dbg !246
  store <32 x half> %710, ptr %712, align 64, !dbg !246, !tbaa !265
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1, !dbg !246
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next31, metadata !270, metadata !DIExpression()), !dbg !246
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 4, !dbg !246
  br i1 %exitcond33.not, label %for_end_m.c.outer, label %for_body_m.c.outer, !dbg !246, !prof !29

for_end_m.c.outer:                                ; preds = %for_body_m.c.outer
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1, !dbg !246
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next35, metadata !269, metadata !DIExpression()), !dbg !246
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, 8, !dbg !246
  br i1 %exitcond37.not, label %for_begin_n.inner.preheader, label %for_begin_m.c.outer.preheader, !dbg !246, !prof !29

if_end5:                                          ; preds = %for_end_m.outer
  %713 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !dbg !246, !tbaa !26
  %714 = tail call i32 %713(i32 1, i32 %dev_id, ptr nonnull %CBits), !dbg !246
  %.not10 = icmp eq i32 %714, 0, !dbg !246
  br i1 %.not10, label %for_begin_n.outer, label %common.ret, !dbg !246, !prof !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x half> @llvm.fmuladd.v32f16(<32 x half>, <32 x half>, <32 x half>) #1

; Function Attrs: nofree nosync nounwind memory(none)
define weak dso_local i16 @__truncsfhf2(float %a0) local_unnamed_addr #5 {
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
define weak dso_local float @__extendhfsf2(i16 %a0) local_unnamed_addr #5 {
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

; Function Attrs: alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.srhadd.v16i8(<16 x i8>, <16 x i8>) #8

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { noinline "target-cpu"="apple-m2" }
attributes #4 = { "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #5 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #6 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.dbg.cu = !{!0}
!llvm.ident = !{!2}
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
!11 = distinct !DISubprogram(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x6000006d4d80.w4.b0", !32, i64 0}
!32 = !{!"0x6000006d4d80.w8.b0", !33, i64 0}
!33 = !{!"0x6000006d4d80.w16.b0", !34, i64 0}
!34 = !{!"0x6000006d4d80.w32.b0", !35, i64 0}
!35 = !{!"0x6000006d4d80.w64.b0", !36, i64 0}
!36 = !{!"0x6000006d4d80.w128.b0", !37, i64 0}
!37 = !{!"0x6000006d4d80.w256.b0", !38, i64 0}
!38 = !{!"0x6000006d4d80.w512.b0", !39, i64 0}
!39 = !{!"0x6000006d4d80.w1024.b0", !40, i64 0}
!40 = !{!"0x6000006d4d80", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x6000006d4d80.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x6000006d4d80.w4.b8", !47, i64 0}
!47 = !{!"0x6000006d4d80.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x6000006d4d80.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x6000006d4d80.w4.b16", !54, i64 0}
!54 = !{!"0x6000006d4d80.w8.b16", !55, i64 0}
!55 = !{!"0x6000006d4d80.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x6000006d4d80.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x6000006ecc00.w8.b0", !95, i64 0}
!95 = !{!"0x6000006ecc00.w16.b0", !96, i64 0}
!96 = !{!"0x6000006ecc00.w32.b0", !97, i64 0}
!97 = !{!"0x6000006ecc00.w64.b0", !98, i64 0}
!98 = !{!"0x6000006ecc00.w128.b0", !99, i64 0}
!99 = !{!"0x6000006ecc00.w256.b0", !100, i64 0}
!100 = !{!"0x6000006ecc00.w512.b0", !101, i64 0}
!101 = !{!"0x6000006ecc00.w1024.b0", !102, i64 0}
!102 = !{!"0x6000006ecc00", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x6000006ecc00.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x6000006ecc00.w8.b16", !107, i64 0}
!107 = !{!"0x6000006ecc00.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x6000006ee940.w8.b16", !110, i64 0}
!110 = !{!"0x6000006ee940.w16.b16", !111, i64 0}
!111 = !{!"0x6000006ee940.w32.b0", !112, i64 0}
!112 = !{!"0x6000006ee940.w64.b0", !113, i64 0}
!113 = !{!"0x6000006ee940.w128.b0", !114, i64 0}
!114 = !{!"0x6000006ee940.w256.b0", !115, i64 0}
!115 = !{!"0x6000006ee940.w512.b0", !116, i64 0}
!116 = !{!"0x6000006ee940.w1024.b0", !117, i64 0}
!117 = !{!"0x6000006ee940", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x6000006ee940.w8.b8", !120, i64 0}
!120 = !{!"0x6000006ee940.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x6000006ee940.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x6000005470c0.w8.b0", !125, i64 0}
!125 = !{!"0x6000005470c0.w16.b0", !126, i64 0}
!126 = !{!"0x6000005470c0.w32.b0", !127, i64 0}
!127 = !{!"0x6000005470c0.w64.b0", !128, i64 0}
!128 = !{!"0x6000005470c0.w128.b0", !129, i64 0}
!129 = !{!"0x6000005470c0.w256.b0", !130, i64 0}
!130 = !{!"0x6000005470c0.w512.b0", !131, i64 0}
!131 = !{!"0x6000005470c0.w1024.b0", !132, i64 0}
!132 = !{!"0x6000005470c0", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x6000005470c0.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x6000005470c0.w8.b16", !137, i64 0}
!137 = !{!"0x6000005470c0.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x6000006cd260.w8.b16", !140, i64 0}
!140 = !{!"0x6000006cd260.w16.b16", !141, i64 0}
!141 = !{!"0x6000006cd260.w32.b0", !142, i64 0}
!142 = !{!"0x6000006cd260.w64.b0", !143, i64 0}
!143 = !{!"0x6000006cd260.w128.b0", !144, i64 0}
!144 = !{!"0x6000006cd260.w256.b0", !145, i64 0}
!145 = !{!"0x6000006cd260.w512.b0", !146, i64 0}
!146 = !{!"0x6000006cd260.w1024.b0", !147, i64 0}
!147 = !{!"0x6000006cd260", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x6000006cd260.w8.b8", !150, i64 0}
!150 = !{!"0x6000006cd260.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x6000006cd260.w8.b0", !150, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"0x6000006cecd0.w8.b0", !155, i64 0}
!155 = !{!"0x6000006cecd0.w16.b0", !156, i64 0}
!156 = !{!"0x6000006cecd0.w32.b0", !157, i64 0}
!157 = !{!"0x6000006cecd0.w64.b0", !158, i64 0}
!158 = !{!"0x6000006cecd0.w128.b0", !159, i64 0}
!159 = !{!"0x6000006cecd0.w256.b0", !160, i64 0}
!160 = !{!"0x6000006cecd0.w512.b0", !161, i64 0}
!161 = !{!"0x6000006cecd0.w1024.b0", !162, i64 0}
!162 = !{!"0x6000006cecd0", !28, i64 0}
!163 = !{!164, !164, i64 0}
!164 = !{!"0x6000006cd830.w8.b0", !165, i64 0}
!165 = !{!"0x6000006cd830.w16.b0", !166, i64 0}
!166 = !{!"0x6000006cd830.w32.b0", !167, i64 0}
!167 = !{!"0x6000006cd830.w64.b0", !168, i64 0}
!168 = !{!"0x6000006cd830.w128.b0", !169, i64 0}
!169 = !{!"0x6000006cd830.w256.b0", !170, i64 0}
!170 = !{!"0x6000006cd830.w512.b0", !171, i64 0}
!171 = !{!"0x6000006cd830.w1024.b0", !172, i64 0}
!172 = !{!"0x6000006cd830", !28, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x6000006cd830.w8.b8", !165, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"0x6000006deca0.w8.b8", !177, i64 0}
!177 = !{!"0x6000006deca0.w16.b0", !178, i64 0}
!178 = !{!"0x6000006deca0.w32.b0", !179, i64 0}
!179 = !{!"0x6000006deca0.w64.b0", !180, i64 0}
!180 = !{!"0x6000006deca0.w128.b0", !181, i64 0}
!181 = !{!"0x6000006deca0.w256.b0", !182, i64 0}
!182 = !{!"0x6000006deca0.w512.b0", !183, i64 0}
!183 = !{!"0x6000006deca0.w1024.b0", !184, i64 0}
!184 = !{!"0x6000006deca0", !28, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"0x6000006deca0.w8.b0", !177, i64 0}
!187 = !{!188, !188, i64 0}
!188 = !{!"0x6000006cab50.w8.b0", !189, i64 0}
!189 = !{!"0x6000006cab50.w16.b0", !190, i64 0}
!190 = !{!"0x6000006cab50.w32.b0", !191, i64 0}
!191 = !{!"0x6000006cab50.w64.b0", !192, i64 0}
!192 = !{!"0x6000006cab50.w128.b0", !193, i64 0}
!193 = !{!"0x6000006cab50.w256.b0", !194, i64 0}
!194 = !{!"0x6000006cab50.w512.b0", !195, i64 0}
!195 = !{!"0x6000006cab50.w1024.b0", !196, i64 0}
!196 = !{!"0x6000006cab50", !28, i64 0}
!197 = !{!198, !198, i64 0}
!198 = !{!"0x6000006cab50.w8.b8", !189, i64 0}
!199 = !{!200, !200, i64 0}
!200 = !{!"0x6000006ca190.w8.b8", !201, i64 0}
!201 = !{!"0x6000006ca190.w16.b0", !202, i64 0}
!202 = !{!"0x6000006ca190.w32.b0", !203, i64 0}
!203 = !{!"0x6000006ca190.w64.b0", !204, i64 0}
!204 = !{!"0x6000006ca190.w128.b0", !205, i64 0}
!205 = !{!"0x6000006ca190.w256.b0", !206, i64 0}
!206 = !{!"0x6000006ca190.w512.b0", !207, i64 0}
!207 = !{!"0x6000006ca190.w1024.b0", !208, i64 0}
!208 = !{!"0x6000006ca190", !28, i64 0}
!209 = !{!210, !210, i64 0}
!210 = !{!"0x6000006ca190.w8.b0", !201, i64 0}
!211 = !{!212, !212, i64 0}
!212 = !{!"0x6000006ca400.w8.b0", !213, i64 0}
!213 = !{!"0x6000006ca400.w16.b0", !214, i64 0}
!214 = !{!"0x6000006ca400.w32.b0", !215, i64 0}
!215 = !{!"0x6000006ca400.w64.b0", !216, i64 0}
!216 = !{!"0x6000006ca400.w128.b0", !217, i64 0}
!217 = !{!"0x6000006ca400.w256.b0", !218, i64 0}
!218 = !{!"0x6000006ca400.w512.b0", !219, i64 0}
!219 = !{!"0x6000006ca400.w1024.b0", !220, i64 0}
!220 = !{!"0x6000006ca400", !28, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"0x6000006ca400.w8.b8", !213, i64 0}
!223 = !{!224, !224, i64 0}
!224 = !{!"0x600000547ed0.w8.b8", !225, i64 0}
!225 = !{!"0x600000547ed0.w16.b0", !226, i64 0}
!226 = !{!"0x600000547ed0.w32.b0", !227, i64 0}
!227 = !{!"0x600000547ed0.w64.b0", !228, i64 0}
!228 = !{!"0x600000547ed0.w128.b0", !229, i64 0}
!229 = !{!"0x600000547ed0.w256.b0", !230, i64 0}
!230 = !{!"0x600000547ed0.w512.b0", !231, i64 0}
!231 = !{!"0x600000547ed0.w1024.b0", !232, i64 0}
!232 = !{!"0x600000547ed0", !28, i64 0}
!233 = !{!234, !234, i64 0}
!234 = !{!"0x600000547ed0.w8.b0", !225, i64 0}
!235 = distinct !DISubprogram(name: "qgemm_lut_t12_int8_m4096_k4096_n512_b2_compute_", scope: !1, file: !1, type: !236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !238)
!236 = !DISubroutineType(types: !237)
!237 = !{!14, !14, !77, !72, !82, !82, !82, !82}
!238 = !{!239, !240, !241, !242, !243, !244, !245}
!239 = !DILocalVariable(name: "dev_id", arg: 1, scope: !235, file: !1, type: !14)
!240 = !DILocalVariable(name: "LUT", arg: 2, scope: !235, file: !1, type: !77)
!241 = !DILocalVariable(name: "A", arg: 3, scope: !235, file: !1, type: !72)
!242 = !DILocalVariable(name: "Scales", arg: 4, scope: !235, file: !1, type: !82)
!243 = !DILocalVariable(name: "LUT_Scales", arg: 5, scope: !235, file: !1, type: !82)
!244 = !DILocalVariable(name: "LUT_Biases", arg: 6, scope: !235, file: !1, type: !82)
!245 = !DILocalVariable(name: "C", arg: 7, scope: !235, file: !1, type: !82)
!246 = !DILocation(line: 0, scope: !235)
!247 = !DILocalVariable(name: "n.outer", scope: !235, file: !1, type: !14)
!248 = !DILocalVariable(name: "CBits", scope: !235, file: !1, type: !82)
!249 = !DILocalVariable(name: "C.global", scope: !235, file: !1, type: !250)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251)
!251 = !DIBasicType(name: "float16x32", size: 512, encoding: DW_ATE_float)
!252 = !DILocalVariable(name: "m.outer", scope: !235, file: !1, type: !14)
!253 = !DILocalVariable(name: "n.init", scope: !235, file: !1, type: !14)
!254 = !DILocalVariable(name: "k.outer", scope: !235, file: !1, type: !14)
!255 = !DILocalVariable(name: "n", scope: !235, file: !1, type: !14)
!256 = !DILocalVariable(name: "cse_var_1", scope: !235, file: !1, type: !14)
!257 = !{!258, !258, i64 0}
!258 = !{!"__fp16", !259, i64 0}
!259 = !{!"omnipotent char", !260, i64 0}
!260 = !{!"Simple C++ TBAA"}
!261 = distinct !{!261, !262}
!262 = !{!"llvm.loop.mustprogress"}
!263 = !DILocalVariable(name: "n.inner", scope: !235, file: !1, type: !14)
!264 = !DILocalVariable(name: "m.inner.outer", scope: !235, file: !1, type: !14)
!265 = !{!266, !266, i64 0}
!266 = !{!"0x600000546bb0", !28, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"0x6000006308d0", !28, i64 0}
!269 = !DILocalVariable(name: "n.c", scope: !235, file: !1, type: !14)
!270 = !DILocalVariable(name: "m.c.outer", scope: !235, file: !1, type: !14)
!271 = !DILocalVariable(name: "cse_var_2", scope: !235, file: !1, type: !272)
!272 = !DIBasicType(name: "int32x32", size: 1024, encoding: DW_ATE_signed)
!273 = !{!274, !274, i64 0}
!274 = !{!"0x6000006cf3c0", !28, i64 0}
