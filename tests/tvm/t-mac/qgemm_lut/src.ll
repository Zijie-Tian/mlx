; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { ptr, i32 }
%closure_loop_parallel_m.outer = type { ptr, ptr, ptr, ptr, ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [87 x i8] c"Assert fail: num_args == 6, qgemm_lut_t12_int8_m6400_k3200_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [105 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t12_int8_m6400_k3200_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [107 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t12_int8_m6400_k3200_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [138 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t12_int8_m6400_k3200_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [146 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t12_int8_m6400_k3200_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [158 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t12_int8_m6400_k3200_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [174 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t12_int8_m6400_k3200_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [174 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t12_int8_m6400_k3200_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [138 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t12_int8_m6400_k3200_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [119 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t12_int8_m6400_k3200_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [121 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [123 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [125 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [129 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [131 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [119 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t12_int8_m6400_k3200_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [121 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [244 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_shape[0]) == 50, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape[0] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_shape[1]) == 800, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [244 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_shape[2]) == 64, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape[2] has an unsatisfied constraint: 64 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [320 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_strides[2]) and 64 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_strides[1]) and 51200 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_A_strides[0]), qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [114 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t12_int8_m6400_k3200_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [252 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_shape[1]) == 800, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [250 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [246 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_strides[1]), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [213 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [193 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [199 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [118 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [263 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [257 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [222 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [202 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [208 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [124 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [271 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1]) == 50, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [271 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1]) == 50, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [243 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_C_shape[0])\00", align 1
@.str.63 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_C_shape[1]) == 3200, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape[1] has an unsatisfied constraint: 3200 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_C_shape[1])\00", align 1
@.str.64 = private constant [163 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t12_int8_m6400_k3200_n1_b2_C_strides[1]), qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [193 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [114 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t12_int8_m6400_k3200_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [37 x i8] c"qgemm_lut_t12_int8_m6400_k3200_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t12_int8_m6400_k3200_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail113 ], [ -1, %assert_fail115 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail131 ], [ -1, %assert_fail133 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail149 ], [ -1, %assert_fail151 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ %306, %assert_end158 ]
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
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %74 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 50, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 800, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 64, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 64, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  %97 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %98 = and i64 %97, 4294967295, !dbg !24
  %99 = icmp eq i64 %98, 51200, !dbg !24
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
  %123 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %124 = and i64 %123, 4294967295, !dbg !24
  %125 = icmp eq i64 %124, 1, !dbg !24
  br i1 %125, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %126(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %127 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape, i64 1, !dbg !24
  %128 = load i64, ptr %127, align 8, !dbg !24, !tbaa !133
  %129 = and i64 %128, 4294967295, !dbg !24
  %130 = icmp eq i64 %129, 800, !dbg !24
  br i1 %130, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %131(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %132 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape, i64 2, !dbg !24
  %133 = load i64, ptr %132, align 8, !dbg !24, !tbaa !135
  %134 = and i64 %133, 4294967295, !dbg !24
  %135 = icmp eq i64 %134, 16, !dbg !24
  br i1 %135, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides, i64 2, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !138
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 1, !dbg !24
  %141 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides, i64 1, !dbg !24
  %142 = load i64, ptr %141, align 8, !dbg !24, !tbaa !148
  %143 = and i64 %142, 4294967295, !dbg !24
  %144 = icmp eq i64 %143, 16, !dbg !24
  %145 = and i1 %140, %144, !dbg !24
  br i1 %145, label %if_end78, label %assert_fail79, !dbg !24, !prof !25

if_end78:                                         ; preds = %if_then77, %assert_end76
  %146 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 6, !dbg !24
  %147 = load i64, ptr %146, align 8, !dbg !24
  %148 = icmp eq i64 %147, 0, !dbg !24
  br i1 %148, label %assert_end82, label %assert_fail81, !dbg !24, !prof !25

assert_fail79:                                    ; preds = %if_then77
  %149 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %149(ptr nonnull @.str.33), !dbg !24
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %150(ptr nonnull @.str.34), !dbg !24
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %151 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 0, !dbg !24
  %152 = load i32, ptr %151, align 4, !dbg !24
  %153 = icmp eq i32 %152, 1, !dbg !24
  br i1 %153, label %assert_end84, label %assert_fail83, !dbg !24, !prof !25

assert_fail83:                                    ; preds = %assert_end82
  %154 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %154(ptr nonnull @.str.35), !dbg !24
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %155 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 1, !dbg !24
  %156 = load i32, ptr %155, align 4, !dbg !24
  %157 = icmp eq i32 %dev_id, %156, !dbg !24
  br i1 %157, label %assert_end86, label %assert_fail85, !dbg !24, !prof !25

assert_fail85:                                    ; preds = %assert_end84
  %158 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %158(ptr nonnull @.str.36), !dbg !24
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not175 = icmp eq ptr %LUT159, null, !dbg !24
  br i1 %.not175, label %assert_fail87, label %assert_end88, !dbg !24, !prof !29

assert_fail87:                                    ; preds = %assert_end86
  %159 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %159(ptr nonnull @.str.37), !dbg !24
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %160 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 0, !dbg !24
  %161 = load i8, ptr %160, align 1, !dbg !24
  %162 = icmp eq i8 %161, 2, !dbg !24
  %163 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 1, !dbg !24
  %164 = load i8, ptr %163, align 1, !dbg !24
  %165 = icmp eq i8 %164, 16, !dbg !24
  %166 = and i1 %162, %165, !dbg !24
  %167 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 2, !dbg !24
  %168 = load i16, ptr %167, align 2, !dbg !24
  %169 = icmp eq i16 %168, 1, !dbg !24
  %170 = and i1 %166, %169, !dbg !24
  br i1 %170, label %assert_end90, label %assert_fail89, !dbg !24, !prof !25

assert_fail89:                                    ; preds = %assert_end88
  %171 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %171(ptr nonnull @.str.38), !dbg !24
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %172 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
  %173 = and i64 %172, 4294967295, !dbg !24
  %174 = icmp eq i64 %173, 1, !dbg !24
  br i1 %174, label %if_end94, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %175(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

if_end94:                                         ; preds = %assert_end90
  %176 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 6, !dbg !24
  %177 = load i64, ptr %176, align 8, !dbg !24
  %178 = icmp eq i64 %177, 0, !dbg !24
  br i1 %178, label %assert_end98, label %assert_fail97, !dbg !24, !prof !25

assert_fail97:                                    ; preds = %if_end94
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %179(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end98:                                     ; preds = %if_end94
  %180 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 0, !dbg !24
  %181 = load i32, ptr %180, align 4, !dbg !24
  %182 = icmp eq i32 %181, 1, !dbg !24
  br i1 %182, label %assert_end100, label %assert_fail99, !dbg !24, !prof !25

assert_fail99:                                    ; preds = %assert_end98
  %183 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %183(ptr nonnull @.str.42), !dbg !24
  br label %common.ret

assert_end100:                                    ; preds = %assert_end98
  %184 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 1, !dbg !24
  %185 = load i32, ptr %184, align 4, !dbg !24
  %186 = icmp eq i32 %dev_id, %185, !dbg !24
  br i1 %186, label %assert_end102, label %assert_fail101, !dbg !24, !prof !25

assert_fail101:                                   ; preds = %assert_end100
  %187 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %187(ptr nonnull @.str.43), !dbg !24
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %.not176 = icmp eq ptr %Scales161, null, !dbg !24
  br i1 %.not176, label %assert_fail103, label %assert_end104, !dbg !24, !prof !29

assert_fail103:                                   ; preds = %assert_end102
  %188 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %188(ptr nonnull @.str.44), !dbg !24
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %189 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 0, !dbg !24
  %190 = load i8, ptr %189, align 1, !dbg !24
  %191 = icmp eq i8 %190, 2, !dbg !24
  %192 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 1, !dbg !24
  %193 = load i8, ptr %192, align 1, !dbg !24
  %194 = icmp eq i8 %193, 16, !dbg !24
  %195 = and i1 %191, %194, !dbg !24
  %196 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 2, !dbg !24
  %197 = load i16, ptr %196, align 2, !dbg !24
  %198 = icmp eq i16 %197, 1, !dbg !24
  %199 = and i1 %195, %198, !dbg !24
  br i1 %199, label %assert_end106, label %assert_fail105, !dbg !24, !prof !25

assert_fail105:                                   ; preds = %assert_end104
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %200(ptr nonnull @.str.45), !dbg !24
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %201 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !161
  %202 = and i64 %201, 4294967295, !dbg !24
  %203 = icmp eq i64 %202, 1, !dbg !24
  br i1 %203, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %205 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %206 = load i64, ptr %205, align 8, !dbg !24, !tbaa !171
  %207 = and i64 %206, 4294967295, !dbg !24
  %208 = icmp eq i64 %207, 50, !dbg !24
  br i1 %208, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %209 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %209(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %210 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
  %211 = load i64, ptr %210, align 8, !dbg !24, !tbaa !173
  %212 = and i64 %211, 4294967295, !dbg !24
  %213 = icmp eq i64 %212, 1, !dbg !24
  br i1 %213, label %if_end112, label %assert_fail113, !dbg !24, !prof !25

if_end112:                                        ; preds = %if_then111, %assert_end110
  %214 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 6, !dbg !24
  %215 = load i64, ptr %214, align 8, !dbg !24
  %216 = icmp eq i64 %215, 0, !dbg !24
  br i1 %216, label %assert_end116, label %assert_fail115, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %if_then111
  %217 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %217(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_fail115:                                   ; preds = %if_end112
  %218 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %218(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end116:                                    ; preds = %if_end112
  %219 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 0, !dbg !24
  %220 = load i32, ptr %219, align 4, !dbg !24
  %221 = icmp eq i32 %220, 1, !dbg !24
  br i1 %221, label %assert_end118, label %assert_fail117, !dbg !24, !prof !25

assert_fail117:                                   ; preds = %assert_end116
  %222 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %222(ptr nonnull @.str.50), !dbg !24
  br label %common.ret

assert_end118:                                    ; preds = %assert_end116
  %223 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 1, !dbg !24
  %224 = load i32, ptr %223, align 4, !dbg !24
  %225 = icmp eq i32 %dev_id, %224, !dbg !24
  br i1 %225, label %assert_end120, label %assert_fail119, !dbg !24, !prof !25

assert_fail119:                                   ; preds = %assert_end118
  %226 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %226(ptr nonnull @.str.51), !dbg !24
  br label %common.ret

assert_end120:                                    ; preds = %assert_end118
  %.not178 = icmp eq ptr %LUT_Scales162, null, !dbg !24
  br i1 %.not178, label %assert_fail121, label %assert_end122, !dbg !24, !prof !29

assert_fail121:                                   ; preds = %assert_end120
  %227 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %227(ptr nonnull @.str.52), !dbg !24
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %228 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 0, !dbg !24
  %229 = load i8, ptr %228, align 1, !dbg !24
  %230 = icmp eq i8 %229, 2, !dbg !24
  %231 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 1, !dbg !24
  %232 = load i8, ptr %231, align 1, !dbg !24
  %233 = icmp eq i8 %232, 16, !dbg !24
  %234 = and i1 %230, %233, !dbg !24
  %235 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 2, !dbg !24
  %236 = load i16, ptr %235, align 2, !dbg !24
  %237 = icmp eq i16 %236, 1, !dbg !24
  %238 = and i1 %234, %237, !dbg !24
  br i1 %238, label %assert_end124, label %assert_fail123, !dbg !24, !prof !25

assert_fail123:                                   ; preds = %assert_end122
  %239 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %239(ptr nonnull @.str.53), !dbg !24
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %240 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !183
  %241 = and i64 %240, 4294967295, !dbg !24
  %242 = icmp eq i64 %241, 1, !dbg !24
  br i1 %242, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %243 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %243(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %244 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %245 = load i64, ptr %244, align 8, !dbg !24, !tbaa !193
  %246 = and i64 %245, 4294967295, !dbg !24
  %247 = icmp eq i64 %246, 50, !dbg !24
  br i1 %247, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %248 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %248(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %249 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
  %250 = load i64, ptr %249, align 8, !dbg !24, !tbaa !195
  %251 = and i64 %250, 4294967295, !dbg !24
  %252 = icmp eq i64 %251, 1, !dbg !24
  br i1 %252, label %if_end130, label %assert_fail131, !dbg !24, !prof !25

if_end130:                                        ; preds = %if_then129, %assert_end128
  %253 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 6, !dbg !24
  %254 = load i64, ptr %253, align 8, !dbg !24
  %255 = icmp eq i64 %254, 0, !dbg !24
  br i1 %255, label %assert_end134, label %assert_fail133, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %if_then129
  %256 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %256(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_fail133:                                   ; preds = %if_end130
  %257 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %257(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end134:                                    ; preds = %if_end130
  %258 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 0, !dbg !24
  %259 = load i32, ptr %258, align 4, !dbg !24
  %260 = icmp eq i32 %259, 1, !dbg !24
  br i1 %260, label %assert_end136, label %assert_fail135, !dbg !24, !prof !25

assert_fail135:                                   ; preds = %assert_end134
  %261 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %261(ptr nonnull @.str.58), !dbg !24
  br label %common.ret

assert_end136:                                    ; preds = %assert_end134
  %262 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 1, !dbg !24
  %263 = load i32, ptr %262, align 4, !dbg !24
  %264 = icmp eq i32 %dev_id, %263, !dbg !24
  br i1 %264, label %assert_end138, label %assert_fail137, !dbg !24, !prof !25

assert_fail137:                                   ; preds = %assert_end136
  %265 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %265(ptr nonnull @.str.59), !dbg !24
  br label %common.ret

assert_end138:                                    ; preds = %assert_end136
  %.not180 = icmp eq ptr %LUT_Biases163, null, !dbg !24
  br i1 %.not180, label %assert_fail139, label %assert_end140, !dbg !24, !prof !29

assert_fail139:                                   ; preds = %assert_end138
  %266 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %266(ptr nonnull @.str.60), !dbg !24
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %267 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 0, !dbg !24
  %268 = load i8, ptr %267, align 1, !dbg !24
  %269 = icmp eq i8 %268, 2, !dbg !24
  %270 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 1, !dbg !24
  %271 = load i8, ptr %270, align 1, !dbg !24
  %272 = icmp eq i8 %271, 16, !dbg !24
  %273 = and i1 %269, %272, !dbg !24
  %274 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 2, !dbg !24
  %275 = load i16, ptr %274, align 2, !dbg !24
  %276 = icmp eq i16 %275, 1, !dbg !24
  %277 = and i1 %273, %276, !dbg !24
  br i1 %277, label %assert_end142, label %assert_fail141, !dbg !24, !prof !25

assert_fail141:                                   ; preds = %assert_end140
  %278 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %278(ptr nonnull @.str.61), !dbg !24
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %279 = load i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape, align 8, !dbg !24, !tbaa !205
  %280 = and i64 %279, 4294967295, !dbg !24
  %281 = icmp eq i64 %280, 1, !dbg !24
  br i1 %281, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %282 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %282(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %283 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape, i64 1, !dbg !24
  %284 = load i64, ptr %283, align 8, !dbg !24, !tbaa !215
  %285 = and i64 %284, 4294967295, !dbg !24
  %286 = icmp eq i64 %285, 3200, !dbg !24
  br i1 %286, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %287 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %287(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %288 = getelementptr inbounds i64, ptr %qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides, i64 1, !dbg !24
  %289 = load i64, ptr %288, align 8, !dbg !24, !tbaa !217
  %290 = and i64 %289, 4294967295, !dbg !24
  %291 = icmp eq i64 %290, 1, !dbg !24
  br i1 %291, label %if_end148, label %assert_fail149, !dbg !24, !prof !25

if_end148:                                        ; preds = %if_then147, %assert_end146
  %292 = getelementptr inbounds %1, ptr %C, i64 0, i32 6, !dbg !24
  %293 = load i64, ptr %292, align 8, !dbg !24
  %294 = icmp eq i64 %293, 0, !dbg !24
  br i1 %294, label %assert_end152, label %assert_fail151, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %if_then147
  %295 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %295(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_fail151:                                   ; preds = %if_end148
  %296 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %296(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end152:                                    ; preds = %if_end148
  %297 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 0, !dbg !24
  %298 = load i32, ptr %297, align 4, !dbg !24
  %299 = icmp eq i32 %298, 1, !dbg !24
  br i1 %299, label %assert_end154, label %assert_fail153, !dbg !24, !prof !25

assert_fail153:                                   ; preds = %assert_end152
  %300 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %300(ptr nonnull @.str.66), !dbg !24
  br label %common.ret

assert_end154:                                    ; preds = %assert_end152
  %301 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 1, !dbg !24
  %302 = load i32, ptr %301, align 4, !dbg !24
  %303 = icmp eq i32 %dev_id, %302, !dbg !24
  br i1 %303, label %assert_end156, label %assert_fail155, !dbg !24, !prof !25

assert_fail155:                                   ; preds = %assert_end154
  %304 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %304(ptr nonnull @.str.67), !dbg !24
  br label %common.ret

assert_end156:                                    ; preds = %assert_end154
  %.not182 = icmp eq ptr %C164, null, !dbg !24
  br i1 %.not182, label %assert_fail157, label %assert_end158, !dbg !24, !prof !29

assert_fail157:                                   ; preds = %assert_end156
  %305 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %305(ptr nonnull @.str.68), !dbg !24
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  %306 = tail call fastcc i32 @qgemm_lut_t12_int8_m6400_k3200_n1_b2_compute_(ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t12_int8_m6400_k3200_n1_b2_compute_(ptr noalias align 64 %LUT, ptr noalias align 64 %A, ptr noalias align 64 %Scales, ptr noalias align 64 %LUT_Scales, ptr noalias align 64 %LUT_Biases, ptr noalias align 64 %C) unnamed_addr #3 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %A, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %C, metadata !236, metadata !DIExpression()), !dbg !237
  %0 = alloca %closure_loop_parallel_m.outer, align 8, !dbg !237
  store ptr %LUT, ptr %0, align 8, !dbg !237
  %1 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 1, !dbg !237
  store ptr %A, ptr %1, align 8, !dbg !237
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 2, !dbg !237
  store ptr %Scales, ptr %2, align 8, !dbg !237
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 3, !dbg !237
  store ptr %LUT_Scales, ptr %3, align 8, !dbg !237
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 4, !dbg !237
  store ptr %LUT_Biases, ptr %4, align 8, !dbg !237
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 5, !dbg !237
  store ptr %C, ptr %5, align 8, !dbg !237
  %6 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !237, !tbaa !26
  %7 = call i32 %6(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !237
  ret i32 %7, !dbg !237
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none)
define private i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %CBits2 = alloca [128 x half], align 16, !dbg !237
  %LUT = load ptr, ptr %1, align 8, !dbg !237
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 1, !dbg !237
  %A = load ptr, ptr %2, align 8, !dbg !237
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 2, !dbg !237
  %Scales = load ptr, ptr %3, align 8, !dbg !237
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 3, !dbg !237
  %LUT_Scales = load ptr, ptr %4, align 8, !dbg !237
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 4, !dbg !237
  %LUT_Biases = load ptr, ptr %5, align 8, !dbg !237
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 5, !dbg !237
  %C = load ptr, ptr %6, align 8, !dbg !237
  %7 = getelementptr inbounds %4, ptr %0, i64 0, i32 1, !dbg !237
  %num_task = load i32, ptr %7, align 4, !dbg !237
  %8 = add nsw i32 %num_task, 49, !dbg !237
  %9 = sdiv i32 %8, %num_task, !dbg !237
  %10 = mul i32 %9, %task_id, !dbg !237
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 50), !dbg !237
  %12 = add nsw i32 %task_id, 1, !dbg !237
  %13 = mul nsw i32 %9, %12, !dbg !237
  %14 = tail call i32 @llvm.smin.i32(i32 %13, i32 50), !dbg !237
  call void @llvm.dbg.declare(metadata i32 %11, metadata !238, metadata !DIExpression()), !dbg !237
  %15 = icmp slt i32 %11, %14, !dbg !237
  br i1 %15, label %for_body_m.outer.preheader, label %for_end_m.outer, !dbg !237, !prof !25

for_body_m.outer.preheader:                       ; preds = %parallel_closure_entry
  %16 = tail call i32 @llvm.smin.i32(i32 %10, i32 50), !dbg !237
  %smin = sext i32 %16 to i64, !dbg !237
  %17 = add i32 %14, %16, !dbg !237
  %18 = sub i32 %17, %11, !dbg !237
  %19 = getelementptr inbounds half, ptr %CBits2, i64 8
  %20 = getelementptr inbounds half, ptr %CBits2, i64 1
  %21 = getelementptr inbounds half, ptr %CBits2, i64 9
  %22 = getelementptr inbounds half, ptr %CBits2, i64 2
  %23 = getelementptr inbounds half, ptr %CBits2, i64 10
  %24 = getelementptr inbounds half, ptr %CBits2, i64 3
  %25 = getelementptr inbounds half, ptr %CBits2, i64 11
  %26 = getelementptr inbounds half, ptr %CBits2, i64 4
  %27 = getelementptr inbounds half, ptr %CBits2, i64 12
  %28 = getelementptr inbounds half, ptr %CBits2, i64 5
  %29 = getelementptr inbounds half, ptr %CBits2, i64 13
  %30 = getelementptr inbounds half, ptr %CBits2, i64 6
  %31 = getelementptr inbounds half, ptr %CBits2, i64 14
  %32 = getelementptr inbounds half, ptr %CBits2, i64 7
  %33 = getelementptr inbounds half, ptr %CBits2, i64 15
  %34 = getelementptr inbounds half, ptr %CBits2, i64 16
  %35 = getelementptr inbounds half, ptr %CBits2, i64 24
  %36 = getelementptr inbounds half, ptr %CBits2, i64 17
  %37 = getelementptr inbounds half, ptr %CBits2, i64 25
  %38 = getelementptr inbounds half, ptr %CBits2, i64 18
  %39 = getelementptr inbounds half, ptr %CBits2, i64 26
  %40 = getelementptr inbounds half, ptr %CBits2, i64 19
  %41 = getelementptr inbounds half, ptr %CBits2, i64 27
  %42 = getelementptr inbounds half, ptr %CBits2, i64 20
  %43 = getelementptr inbounds half, ptr %CBits2, i64 28
  %44 = getelementptr inbounds half, ptr %CBits2, i64 21
  %45 = getelementptr inbounds half, ptr %CBits2, i64 29
  %46 = getelementptr inbounds half, ptr %CBits2, i64 22
  %47 = getelementptr inbounds half, ptr %CBits2, i64 30
  %48 = getelementptr inbounds half, ptr %CBits2, i64 23
  %49 = getelementptr inbounds half, ptr %CBits2, i64 31
  %50 = getelementptr inbounds half, ptr %CBits2, i64 32
  %51 = getelementptr inbounds half, ptr %CBits2, i64 40
  %52 = getelementptr inbounds half, ptr %CBits2, i64 33
  %53 = getelementptr inbounds half, ptr %CBits2, i64 41
  %54 = getelementptr inbounds half, ptr %CBits2, i64 34
  %55 = getelementptr inbounds half, ptr %CBits2, i64 42
  %56 = getelementptr inbounds half, ptr %CBits2, i64 35
  %57 = getelementptr inbounds half, ptr %CBits2, i64 43
  %58 = getelementptr inbounds half, ptr %CBits2, i64 36
  %59 = getelementptr inbounds half, ptr %CBits2, i64 44
  %60 = getelementptr inbounds half, ptr %CBits2, i64 37
  %61 = getelementptr inbounds half, ptr %CBits2, i64 45
  %62 = getelementptr inbounds half, ptr %CBits2, i64 38
  %63 = getelementptr inbounds half, ptr %CBits2, i64 46
  %64 = getelementptr inbounds half, ptr %CBits2, i64 39
  %65 = getelementptr inbounds half, ptr %CBits2, i64 47
  %66 = getelementptr inbounds half, ptr %CBits2, i64 48
  %67 = getelementptr inbounds half, ptr %CBits2, i64 56
  %68 = getelementptr inbounds half, ptr %CBits2, i64 49
  %69 = getelementptr inbounds half, ptr %CBits2, i64 57
  %70 = getelementptr inbounds half, ptr %CBits2, i64 50
  %71 = getelementptr inbounds half, ptr %CBits2, i64 58
  %72 = getelementptr inbounds half, ptr %CBits2, i64 51
  %73 = getelementptr inbounds half, ptr %CBits2, i64 59
  %74 = getelementptr inbounds half, ptr %CBits2, i64 52
  %75 = getelementptr inbounds half, ptr %CBits2, i64 60
  %76 = getelementptr inbounds half, ptr %CBits2, i64 53
  %77 = getelementptr inbounds half, ptr %CBits2, i64 61
  %78 = getelementptr inbounds half, ptr %CBits2, i64 54
  %79 = getelementptr inbounds half, ptr %CBits2, i64 62
  %80 = getelementptr inbounds half, ptr %CBits2, i64 55
  %81 = getelementptr inbounds half, ptr %CBits2, i64 63
  %82 = getelementptr inbounds half, ptr %CBits2, i64 64
  %83 = getelementptr inbounds half, ptr %CBits2, i64 72
  %84 = getelementptr inbounds half, ptr %CBits2, i64 65
  %85 = getelementptr inbounds half, ptr %CBits2, i64 73
  %86 = getelementptr inbounds half, ptr %CBits2, i64 66
  %87 = getelementptr inbounds half, ptr %CBits2, i64 74
  %88 = getelementptr inbounds half, ptr %CBits2, i64 67
  %89 = getelementptr inbounds half, ptr %CBits2, i64 75
  %90 = getelementptr inbounds half, ptr %CBits2, i64 68
  %91 = getelementptr inbounds half, ptr %CBits2, i64 76
  %92 = getelementptr inbounds half, ptr %CBits2, i64 69
  %93 = getelementptr inbounds half, ptr %CBits2, i64 77
  %94 = getelementptr inbounds half, ptr %CBits2, i64 70
  %95 = getelementptr inbounds half, ptr %CBits2, i64 78
  %96 = getelementptr inbounds half, ptr %CBits2, i64 71
  %97 = getelementptr inbounds half, ptr %CBits2, i64 79
  %98 = getelementptr inbounds half, ptr %CBits2, i64 80
  %99 = getelementptr inbounds half, ptr %CBits2, i64 88
  %100 = getelementptr inbounds half, ptr %CBits2, i64 81
  %101 = getelementptr inbounds half, ptr %CBits2, i64 89
  %102 = getelementptr inbounds half, ptr %CBits2, i64 82
  %103 = getelementptr inbounds half, ptr %CBits2, i64 90
  %104 = getelementptr inbounds half, ptr %CBits2, i64 83
  %105 = getelementptr inbounds half, ptr %CBits2, i64 91
  %106 = getelementptr inbounds half, ptr %CBits2, i64 84
  %107 = getelementptr inbounds half, ptr %CBits2, i64 92
  %108 = getelementptr inbounds half, ptr %CBits2, i64 85
  %109 = getelementptr inbounds half, ptr %CBits2, i64 93
  %110 = getelementptr inbounds half, ptr %CBits2, i64 86
  %111 = getelementptr inbounds half, ptr %CBits2, i64 94
  %112 = getelementptr inbounds half, ptr %CBits2, i64 87
  %113 = getelementptr inbounds half, ptr %CBits2, i64 95
  %114 = getelementptr inbounds half, ptr %CBits2, i64 96
  %115 = getelementptr inbounds half, ptr %CBits2, i64 104
  %116 = getelementptr inbounds half, ptr %CBits2, i64 97
  %117 = getelementptr inbounds half, ptr %CBits2, i64 105
  %118 = getelementptr inbounds half, ptr %CBits2, i64 98
  %119 = getelementptr inbounds half, ptr %CBits2, i64 106
  %120 = getelementptr inbounds half, ptr %CBits2, i64 99
  %121 = getelementptr inbounds half, ptr %CBits2, i64 107
  %122 = getelementptr inbounds half, ptr %CBits2, i64 100
  %123 = getelementptr inbounds half, ptr %CBits2, i64 108
  %124 = getelementptr inbounds half, ptr %CBits2, i64 101
  %125 = getelementptr inbounds half, ptr %CBits2, i64 109
  %126 = getelementptr inbounds half, ptr %CBits2, i64 102
  %127 = getelementptr inbounds half, ptr %CBits2, i64 110
  %128 = getelementptr inbounds half, ptr %CBits2, i64 103
  %129 = getelementptr inbounds half, ptr %CBits2, i64 111
  %130 = getelementptr inbounds half, ptr %CBits2, i64 112
  %131 = getelementptr inbounds half, ptr %CBits2, i64 120
  %132 = getelementptr inbounds half, ptr %CBits2, i64 113
  %133 = getelementptr inbounds half, ptr %CBits2, i64 121
  %134 = getelementptr inbounds half, ptr %CBits2, i64 114
  %135 = getelementptr inbounds half, ptr %CBits2, i64 122
  %136 = getelementptr inbounds half, ptr %CBits2, i64 115
  %137 = getelementptr inbounds half, ptr %CBits2, i64 123
  %138 = getelementptr inbounds half, ptr %CBits2, i64 116
  %139 = getelementptr inbounds half, ptr %CBits2, i64 124
  %140 = getelementptr inbounds half, ptr %CBits2, i64 117
  %141 = getelementptr inbounds half, ptr %CBits2, i64 125
  %142 = getelementptr inbounds half, ptr %CBits2, i64 118
  %143 = getelementptr inbounds half, ptr %CBits2, i64 126
  %144 = getelementptr inbounds half, ptr %CBits2, i64 119
  %145 = getelementptr inbounds half, ptr %CBits2, i64 127
  br label %for_body_m.outer, !dbg !237

for_body_m.outer:                                 ; preds = %for_body_m.outer.preheader, %for_body_m.c.outer.preheader
  %indvars.iv18 = phi i64 [ %smin, %for_body_m.outer.preheader ], [ %indvars.iv.next19, %for_body_m.c.outer.preheader ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv18, metadata !238, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata ptr %CBits2, metadata !239, metadata !DIExpression()), !dbg !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %CBits2, i8 0, i64 256, i1 false), !dbg !237
  %146 = mul nsw i64 %indvars.iv18, 51200
  call void @llvm.dbg.declare(metadata i32 0, metadata !240, metadata !DIExpression()), !dbg !237
  br label %for_body_k.outer, !dbg !237

for_end_m.outer:                                  ; preds = %for_body_m.c.outer.preheader, %parallel_closure_entry
  ret i32 0, !dbg !237

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !240, metadata !DIExpression()), !dbg !237
  %147 = shl nuw nsw i64 %indvars.iv, 8, !dbg !237
  %148 = getelementptr inbounds i8, ptr %LUT, i64 %147, !dbg !237
  %149 = shl nuw nsw i64 %indvars.iv, 10, !dbg !237
  %150 = add nsw i64 %149, %146, !dbg !237
  %151 = getelementptr inbounds i8, ptr %A, i64 %150, !dbg !237
  %152 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !237
  %153 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !237
  %154 = load <16 x i8>, ptr %148, align 1, !dbg !237
  %155 = getelementptr inbounds i8, ptr %148, i64 16, !dbg !237
  %156 = load <16 x i8>, ptr %155, align 1, !dbg !237
  %157 = getelementptr inbounds i8, ptr %148, i64 32, !dbg !237
  %158 = load <16 x i8>, ptr %157, align 1, !dbg !237
  %159 = getelementptr inbounds i8, ptr %148, i64 48, !dbg !237
  %160 = load <16 x i8>, ptr %159, align 1, !dbg !237
  %161 = getelementptr inbounds i8, ptr %148, i64 64, !dbg !237
  %162 = load <16 x i8>, ptr %161, align 1, !dbg !237
  %163 = getelementptr inbounds i8, ptr %148, i64 80, !dbg !237
  %164 = load <16 x i8>, ptr %163, align 1, !dbg !237
  %165 = getelementptr inbounds i8, ptr %148, i64 96, !dbg !237
  %166 = load <16 x i8>, ptr %165, align 1, !dbg !237
  %167 = getelementptr inbounds i8, ptr %148, i64 112, !dbg !237
  %168 = load <16 x i8>, ptr %167, align 1, !dbg !237
  %169 = getelementptr inbounds i8, ptr %148, i64 128, !dbg !237
  %170 = load <16 x i8>, ptr %169, align 1, !dbg !237
  %171 = getelementptr inbounds i8, ptr %148, i64 144, !dbg !237
  %172 = load <16 x i8>, ptr %171, align 1, !dbg !237
  %173 = getelementptr inbounds i8, ptr %148, i64 160, !dbg !237
  %174 = load <16 x i8>, ptr %173, align 1, !dbg !237
  %175 = getelementptr inbounds i8, ptr %148, i64 176, !dbg !237
  %176 = load <16 x i8>, ptr %175, align 1, !dbg !237
  %177 = getelementptr inbounds i8, ptr %148, i64 192, !dbg !237
  %178 = load <16 x i8>, ptr %177, align 1, !dbg !237
  %179 = getelementptr inbounds i8, ptr %148, i64 208, !dbg !237
  %180 = load <16 x i8>, ptr %179, align 1, !dbg !237
  %181 = getelementptr inbounds i8, ptr %148, i64 224, !dbg !237
  %182 = load <16 x i8>, ptr %181, align 1, !dbg !237
  %183 = getelementptr inbounds i8, ptr %148, i64 240, !dbg !237
  %184 = load <16 x i8>, ptr %183, align 1, !dbg !237
  br label %185, !dbg !237

185:                                              ; preds = %185, %for_body_k.outer
  %186 = phi i64 [ 0, %for_body_k.outer ], [ %502, %185 ], !dbg !237
  %187 = shl nuw nsw i64 %186, 4, !dbg !237
  %188 = getelementptr inbounds i8, ptr %151, i64 %187, !dbg !237
  %189 = load half, ptr %152, align 2, !dbg !237, !tbaa !241
  %190 = load half, ptr %153, align 2, !dbg !237, !tbaa !241
  %191 = insertelement <8 x half> poison, half %189, i64 0, !dbg !237
  %192 = insertelement <8 x half> poison, half %190, i64 0, !dbg !237
  %193 = load <16 x i8>, ptr %188, align 1, !dbg !237
  %194 = lshr <16 x i8> %193, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %195 = and <16 x i8> %193, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %196 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %154, <16 x i8> %195), !dbg !237
  %197 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %154, <16 x i8> %194), !dbg !237
  %198 = getelementptr inbounds i8, ptr %188, i64 16, !dbg !237
  %199 = load <16 x i8>, ptr %198, align 1, !dbg !237
  %200 = lshr <16 x i8> %199, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %201 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %156, <16 x i8> %200), !dbg !237
  %202 = and <16 x i8> %199, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %203 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %156, <16 x i8> %202), !dbg !237
  %204 = shufflevector <16 x i8> %196, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %205 = shufflevector <16 x i8> %203, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %206 = sext <8 x i8> %204 to <8 x i16>, !dbg !237
  %207 = sext <8 x i8> %205 to <8 x i16>, !dbg !237
  %208 = shufflevector <16 x i8> %196, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %209 = sext <8 x i8> %208 to <8 x i16>, !dbg !237
  %210 = shufflevector <16 x i8> %203, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %211 = sext <8 x i8> %210 to <8 x i16>, !dbg !237
  %212 = add nsw <8 x i16> %207, %206, !dbg !237
  %213 = add nsw <8 x i16> %211, %209, !dbg !237
  %214 = shufflevector <16 x i8> %197, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %215 = shufflevector <16 x i8> %201, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %216 = sext <8 x i8> %214 to <8 x i16>, !dbg !237
  %217 = sext <8 x i8> %215 to <8 x i16>, !dbg !237
  %218 = shufflevector <16 x i8> %197, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %219 = sext <8 x i8> %218 to <8 x i16>, !dbg !237
  %220 = shufflevector <16 x i8> %201, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %221 = sext <8 x i8> %220 to <8 x i16>, !dbg !237
  %222 = getelementptr inbounds i8, ptr %188, i64 32, !dbg !237
  %223 = load <16 x i8>, ptr %222, align 1, !dbg !237
  %224 = lshr <16 x i8> %223, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %225 = and <16 x i8> %223, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %226 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %158, <16 x i8> %225), !dbg !237
  %227 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %158, <16 x i8> %224), !dbg !237
  %228 = getelementptr inbounds i8, ptr %188, i64 48, !dbg !237
  %229 = load <16 x i8>, ptr %228, align 1, !dbg !237
  %230 = and <16 x i8> %229, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %231 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %160, <16 x i8> %230), !dbg !237
  %232 = shufflevector <16 x i8> %226, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %233 = shufflevector <16 x i8> %231, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %234 = sext <8 x i8> %232 to <8 x i16>, !dbg !237
  %235 = sext <8 x i8> %233 to <8 x i16>, !dbg !237
  %236 = shufflevector <16 x i8> %226, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %237 = sext <8 x i8> %236 to <8 x i16>, !dbg !237
  %238 = shufflevector <16 x i8> %231, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %239 = sext <8 x i8> %238 to <8 x i16>, !dbg !237
  %240 = add nsw <8 x i16> %212, %234, !dbg !237
  %241 = add nsw <8 x i16> %240, %235, !dbg !237
  %242 = add nsw <8 x i16> %213, %237, !dbg !237
  %243 = add nsw <8 x i16> %242, %239, !dbg !237
  %244 = lshr <16 x i8> %229, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %245 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %160, <16 x i8> %244), !dbg !237
  %246 = shufflevector <16 x i8> %245, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %247 = sext <8 x i8> %246 to <8 x i16>, !dbg !237
  %248 = shufflevector <16 x i8> %227, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %249 = sext <8 x i8> %248 to <8 x i16>, !dbg !237
  %250 = shufflevector <16 x i8> %245, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %251 = sext <8 x i8> %250 to <8 x i16>, !dbg !237
  %252 = shufflevector <16 x i8> %227, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %253 = sext <8 x i8> %252 to <8 x i16>, !dbg !237
  %254 = getelementptr inbounds i8, ptr %188, i64 64, !dbg !237
  %255 = load <16 x i8>, ptr %254, align 1, !dbg !237
  %256 = lshr <16 x i8> %255, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %257 = and <16 x i8> %255, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %258 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %162, <16 x i8> %257), !dbg !237
  %259 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %162, <16 x i8> %256), !dbg !237
  %260 = getelementptr inbounds i8, ptr %188, i64 80, !dbg !237
  %261 = load <16 x i8>, ptr %260, align 1, !dbg !237
  %262 = and <16 x i8> %261, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %263 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %164, <16 x i8> %262), !dbg !237
  %264 = shufflevector <16 x i8> %258, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %265 = shufflevector <16 x i8> %263, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %266 = sext <8 x i8> %264 to <8 x i16>, !dbg !237
  %267 = sext <8 x i8> %265 to <8 x i16>, !dbg !237
  %268 = shufflevector <16 x i8> %258, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %269 = sext <8 x i8> %268 to <8 x i16>, !dbg !237
  %270 = shufflevector <16 x i8> %263, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %271 = sext <8 x i8> %270 to <8 x i16>, !dbg !237
  %272 = add nsw <8 x i16> %241, %266, !dbg !237
  %273 = add nsw <8 x i16> %272, %267, !dbg !237
  %274 = add nsw <8 x i16> %243, %269, !dbg !237
  %275 = add nsw <8 x i16> %274, %271, !dbg !237
  %276 = lshr <16 x i8> %261, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %277 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %164, <16 x i8> %276), !dbg !237
  %278 = shufflevector <16 x i8> %277, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %279 = sext <8 x i8> %278 to <8 x i16>, !dbg !237
  %280 = shufflevector <16 x i8> %259, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %281 = sext <8 x i8> %280 to <8 x i16>, !dbg !237
  %282 = shufflevector <16 x i8> %277, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %283 = sext <8 x i8> %282 to <8 x i16>, !dbg !237
  %284 = shufflevector <16 x i8> %259, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %285 = sext <8 x i8> %284 to <8 x i16>, !dbg !237
  %286 = getelementptr inbounds i8, ptr %188, i64 96, !dbg !237
  %287 = load <16 x i8>, ptr %286, align 1, !dbg !237
  %288 = lshr <16 x i8> %287, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %289 = and <16 x i8> %287, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %290 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %166, <16 x i8> %289), !dbg !237
  %291 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %166, <16 x i8> %288), !dbg !237
  %292 = getelementptr inbounds i8, ptr %188, i64 112, !dbg !237
  %293 = load <16 x i8>, ptr %292, align 1, !dbg !237
  %294 = and <16 x i8> %293, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %295 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %168, <16 x i8> %294), !dbg !237
  %296 = shufflevector <16 x i8> %290, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %297 = shufflevector <16 x i8> %295, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %298 = sext <8 x i8> %296 to <8 x i16>, !dbg !237
  %299 = sext <8 x i8> %297 to <8 x i16>, !dbg !237
  %300 = shufflevector <16 x i8> %290, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %301 = sext <8 x i8> %300 to <8 x i16>, !dbg !237
  %302 = shufflevector <16 x i8> %295, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %303 = sext <8 x i8> %302 to <8 x i16>, !dbg !237
  %304 = add nsw <8 x i16> %273, %298, !dbg !237
  %305 = add <8 x i16> %304, %299, !dbg !237
  %306 = add nsw <8 x i16> %275, %301, !dbg !237
  %307 = add <8 x i16> %306, %303, !dbg !237
  %308 = lshr <16 x i8> %293, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %309 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %168, <16 x i8> %308), !dbg !237
  %310 = shufflevector <16 x i8> %309, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %311 = sext <8 x i8> %310 to <8 x i16>, !dbg !237
  %312 = shufflevector <16 x i8> %291, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %313 = sext <8 x i8> %312 to <8 x i16>, !dbg !237
  %314 = shufflevector <16 x i8> %309, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %315 = sext <8 x i8> %314 to <8 x i16>, !dbg !237
  %316 = shufflevector <16 x i8> %291, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %317 = sext <8 x i8> %316 to <8 x i16>, !dbg !237
  %318 = getelementptr inbounds i8, ptr %188, i64 128, !dbg !237
  %319 = load <16 x i8>, ptr %318, align 1, !dbg !237
  %320 = lshr <16 x i8> %319, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %321 = and <16 x i8> %319, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %322 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %170, <16 x i8> %321), !dbg !237
  %323 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %170, <16 x i8> %320), !dbg !237
  %324 = getelementptr inbounds i8, ptr %188, i64 144, !dbg !237
  %325 = load <16 x i8>, ptr %324, align 1, !dbg !237
  %326 = and <16 x i8> %325, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %327 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %172, <16 x i8> %326), !dbg !237
  %328 = shufflevector <16 x i8> %322, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %329 = shufflevector <16 x i8> %327, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %330 = sext <8 x i8> %328 to <8 x i16>, !dbg !237
  %331 = sext <8 x i8> %329 to <8 x i16>, !dbg !237
  %332 = shufflevector <16 x i8> %322, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %333 = sext <8 x i8> %332 to <8 x i16>, !dbg !237
  %334 = shufflevector <16 x i8> %327, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %335 = sext <8 x i8> %334 to <8 x i16>, !dbg !237
  %336 = add <8 x i16> %305, %330, !dbg !237
  %337 = add <8 x i16> %336, %331, !dbg !237
  %338 = add <8 x i16> %307, %333, !dbg !237
  %339 = add <8 x i16> %338, %335, !dbg !237
  %340 = lshr <16 x i8> %325, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %341 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %172, <16 x i8> %340), !dbg !237
  %342 = shufflevector <16 x i8> %341, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %343 = sext <8 x i8> %342 to <8 x i16>, !dbg !237
  %344 = shufflevector <16 x i8> %323, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %345 = sext <8 x i8> %344 to <8 x i16>, !dbg !237
  %346 = shufflevector <16 x i8> %341, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %347 = sext <8 x i8> %346 to <8 x i16>, !dbg !237
  %348 = shufflevector <16 x i8> %323, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %349 = sext <8 x i8> %348 to <8 x i16>, !dbg !237
  %350 = getelementptr inbounds i8, ptr %188, i64 160, !dbg !237
  %351 = load <16 x i8>, ptr %350, align 1, !dbg !237
  %352 = lshr <16 x i8> %351, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %353 = and <16 x i8> %351, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %354 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %174, <16 x i8> %353), !dbg !237
  %355 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %174, <16 x i8> %352), !dbg !237
  %356 = getelementptr inbounds i8, ptr %188, i64 176, !dbg !237
  %357 = load <16 x i8>, ptr %356, align 1, !dbg !237
  %358 = and <16 x i8> %357, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %359 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %176, <16 x i8> %358), !dbg !237
  %360 = shufflevector <16 x i8> %354, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %361 = shufflevector <16 x i8> %359, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %362 = sext <8 x i8> %360 to <8 x i16>, !dbg !237
  %363 = sext <8 x i8> %361 to <8 x i16>, !dbg !237
  %364 = shufflevector <16 x i8> %354, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %365 = sext <8 x i8> %364 to <8 x i16>, !dbg !237
  %366 = shufflevector <16 x i8> %359, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %367 = sext <8 x i8> %366 to <8 x i16>, !dbg !237
  %368 = add <8 x i16> %337, %362, !dbg !237
  %369 = add <8 x i16> %368, %363, !dbg !237
  %370 = add <8 x i16> %339, %365, !dbg !237
  %371 = add <8 x i16> %370, %367, !dbg !237
  %372 = lshr <16 x i8> %357, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %373 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %176, <16 x i8> %372), !dbg !237
  %374 = shufflevector <16 x i8> %373, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %375 = sext <8 x i8> %374 to <8 x i16>, !dbg !237
  %376 = shufflevector <16 x i8> %355, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %377 = sext <8 x i8> %376 to <8 x i16>, !dbg !237
  %378 = shufflevector <16 x i8> %373, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %379 = sext <8 x i8> %378 to <8 x i16>, !dbg !237
  %380 = shufflevector <16 x i8> %355, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %381 = sext <8 x i8> %380 to <8 x i16>, !dbg !237
  %382 = getelementptr inbounds i8, ptr %188, i64 192, !dbg !237
  %383 = load <16 x i8>, ptr %382, align 1, !dbg !237
  %384 = lshr <16 x i8> %383, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %385 = and <16 x i8> %383, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %386 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %178, <16 x i8> %385), !dbg !237
  %387 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %178, <16 x i8> %384), !dbg !237
  %388 = getelementptr inbounds i8, ptr %188, i64 208, !dbg !237
  %389 = load <16 x i8>, ptr %388, align 1, !dbg !237
  %390 = and <16 x i8> %389, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %391 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %180, <16 x i8> %390), !dbg !237
  %392 = shufflevector <16 x i8> %386, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %393 = shufflevector <16 x i8> %391, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %394 = sext <8 x i8> %392 to <8 x i16>, !dbg !237
  %395 = sext <8 x i8> %393 to <8 x i16>, !dbg !237
  %396 = shufflevector <16 x i8> %386, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %397 = sext <8 x i8> %396 to <8 x i16>, !dbg !237
  %398 = shufflevector <16 x i8> %391, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %399 = sext <8 x i8> %398 to <8 x i16>, !dbg !237
  %400 = add <8 x i16> %369, %394, !dbg !237
  %401 = add <8 x i16> %400, %395, !dbg !237
  %402 = add <8 x i16> %371, %397, !dbg !237
  %403 = add <8 x i16> %402, %399, !dbg !237
  %404 = lshr <16 x i8> %389, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %405 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %180, <16 x i8> %404), !dbg !237
  %406 = shufflevector <16 x i8> %405, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %407 = sext <8 x i8> %406 to <8 x i16>, !dbg !237
  %408 = shufflevector <16 x i8> %387, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %409 = sext <8 x i8> %408 to <8 x i16>, !dbg !237
  %410 = shufflevector <16 x i8> %405, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %411 = sext <8 x i8> %410 to <8 x i16>, !dbg !237
  %412 = shufflevector <16 x i8> %387, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %413 = sext <8 x i8> %412 to <8 x i16>, !dbg !237
  %414 = getelementptr inbounds i8, ptr %188, i64 224, !dbg !237
  %415 = load <16 x i8>, ptr %414, align 1, !dbg !237
  %416 = lshr <16 x i8> %415, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %417 = and <16 x i8> %415, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %418 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %182, <16 x i8> %417), !dbg !237
  %419 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %182, <16 x i8> %416), !dbg !237
  %420 = getelementptr inbounds i8, ptr %188, i64 240, !dbg !237
  %421 = load <16 x i8>, ptr %420, align 1, !dbg !237
  %422 = and <16 x i8> %421, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %423 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %184, <16 x i8> %422), !dbg !237
  %424 = shufflevector <16 x i8> %418, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %425 = shufflevector <16 x i8> %423, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %426 = sext <8 x i8> %424 to <8 x i16>, !dbg !237
  %427 = sext <8 x i8> %425 to <8 x i16>, !dbg !237
  %428 = shufflevector <16 x i8> %418, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %429 = sext <8 x i8> %428 to <8 x i16>, !dbg !237
  %430 = shufflevector <16 x i8> %423, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %431 = sext <8 x i8> %430 to <8 x i16>, !dbg !237
  %432 = add <8 x i16> %401, %426, !dbg !237
  %433 = add <8 x i16> %432, %427, !dbg !237
  %434 = add <8 x i16> %403, %429, !dbg !237
  %435 = add <8 x i16> %434, %431, !dbg !237
  %436 = lshr <16 x i8> %421, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %437 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %184, <16 x i8> %436), !dbg !237
  %438 = shufflevector <16 x i8> %437, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %439 = sext <8 x i8> %438 to <8 x i16>, !dbg !237
  %440 = shufflevector <16 x i8> %419, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %441 = sext <8 x i8> %440 to <8 x i16>, !dbg !237
  %442 = add nsw <8 x i16> %221, %219, !dbg !237
  %443 = add nsw <8 x i16> %442, %249, !dbg !237
  %444 = add nsw <8 x i16> %443, %247, !dbg !237
  %445 = add nsw <8 x i16> %444, %281, !dbg !237
  %446 = add nsw <8 x i16> %445, %279, !dbg !237
  %447 = add nsw <8 x i16> %446, %313, !dbg !237
  %448 = add <8 x i16> %447, %311, !dbg !237
  %449 = add <8 x i16> %448, %345, !dbg !237
  %450 = add <8 x i16> %449, %343, !dbg !237
  %451 = add <8 x i16> %450, %377, !dbg !237
  %452 = add <8 x i16> %451, %375, !dbg !237
  %453 = add <8 x i16> %452, %409, !dbg !237
  %454 = add <8 x i16> %453, %407, !dbg !237
  %455 = add <8 x i16> %454, %441, !dbg !237
  %456 = add <8 x i16> %455, %439, !dbg !237
  %457 = shufflevector <16 x i8> %437, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %458 = sext <8 x i8> %457 to <8 x i16>, !dbg !237
  %459 = shufflevector <16 x i8> %419, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %460 = sext <8 x i8> %459 to <8 x i16>, !dbg !237
  %461 = add nsw <8 x i16> %217, %216, !dbg !237
  %462 = add nsw <8 x i16> %461, %253, !dbg !237
  %463 = add nsw <8 x i16> %462, %251, !dbg !237
  %464 = add nsw <8 x i16> %463, %285, !dbg !237
  %465 = add nsw <8 x i16> %464, %283, !dbg !237
  %466 = add nsw <8 x i16> %465, %317, !dbg !237
  %467 = add <8 x i16> %466, %315, !dbg !237
  %468 = add <8 x i16> %467, %349, !dbg !237
  %469 = add <8 x i16> %468, %347, !dbg !237
  %470 = add <8 x i16> %469, %381, !dbg !237
  %471 = add <8 x i16> %470, %379, !dbg !237
  %472 = add <8 x i16> %471, %413, !dbg !237
  %473 = add <8 x i16> %472, %411, !dbg !237
  %474 = add <8 x i16> %473, %460, !dbg !237
  %475 = add <8 x i16> %474, %458, !dbg !237
  %476 = shufflevector <8 x half> %191, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !237
  %477 = shufflevector <8 x half> %192, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !237
  %478 = sitofp <8 x i16> %433 to <8 x half>, !dbg !237
  %479 = sitofp <8 x i16> %435 to <8 x half>, !dbg !237
  %480 = sitofp <8 x i16> %475 to <8 x half>, !dbg !237
  %481 = sitofp <8 x i16> %456 to <8 x half>, !dbg !237
  %482 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %478, <8 x half> %476, <8 x half> %477), !dbg !237
  %483 = fmul <8 x half> %476, %479, !dbg !237
  %484 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %480, <8 x half> %476, <8 x half> %477), !dbg !237
  %485 = fmul <8 x half> %476, %481, !dbg !237
  %486 = load half, ptr %Scales, align 2, !dbg !237, !tbaa !241
  %487 = shl nuw nsw i64 %186, 1, !dbg !237
  %488 = getelementptr inbounds half, ptr %CBits2, i64 %487, !dbg !237
  %489 = load <8 x half>, ptr %488, align 16, !dbg !237
  %490 = insertelement <8 x half> poison, half %486, i64 0, !dbg !237
  %491 = shufflevector <8 x half> %490, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !237
  %492 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %482, <8 x half> %491, <8 x half> %489), !dbg !237
  store <8 x half> %492, ptr %488, align 16, !dbg !237
  %493 = getelementptr inbounds half, ptr %488, i64 8, !dbg !237
  %494 = load <8 x half>, ptr %493, align 16, !dbg !237
  %495 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %483, <8 x half> %491, <8 x half> %494), !dbg !237
  store <8 x half> %495, ptr %493, align 16, !dbg !237
  %496 = getelementptr inbounds half, ptr %488, i64 16, !dbg !237
  %497 = load <8 x half>, ptr %496, align 16, !dbg !237
  %498 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %484, <8 x half> %491, <8 x half> %497), !dbg !237
  store <8 x half> %498, ptr %496, align 16, !dbg !237
  %499 = getelementptr inbounds half, ptr %488, i64 24, !dbg !237
  %500 = load <8 x half>, ptr %499, align 16, !dbg !237
  %501 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %485, <8 x half> %491, <8 x half> %500), !dbg !237
  store <8 x half> %501, ptr %499, align 16, !dbg !237
  %502 = add nuw nsw i64 %186, 16, !dbg !237
  %503 = icmp ult i64 %186, 48, !dbg !237
  br i1 %503, label %185, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !237, !llvm.loop !245

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %185
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !240, metadata !DIExpression()), !dbg !237
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50, !dbg !237
  br i1 %exitcond.not, label %for_body_m.c.outer.preheader, label %for_body_k.outer, !dbg !237, !prof !29

for_body_m.c.outer.preheader:                     ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  call void @llvm.dbg.declare(metadata i64 0, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !237
  %504 = load half, ptr %CBits2, align 16, !dbg !237, !tbaa !250
  %505 = load half, ptr %19, align 16, !dbg !237, !tbaa !250
  %506 = tail call half @llvm.fmuladd.f16(half %504, half 0xH3800, half %505), !dbg !237
  call void @llvm.dbg.value(metadata half %506, metadata !252, metadata !DIExpression()), !dbg !237
  %507 = load half, ptr %20, align 2, !dbg !237, !tbaa !250
  %508 = load half, ptr %21, align 2, !dbg !237, !tbaa !250
  %509 = tail call half @llvm.fmuladd.f16(half %507, half 0xH3800, half %508), !dbg !237
  %510 = load half, ptr %22, align 4, !dbg !237, !tbaa !250
  %511 = load half, ptr %23, align 4, !dbg !237, !tbaa !250
  %512 = tail call half @llvm.fmuladd.f16(half %510, half 0xH3800, half %511), !dbg !237
  %513 = load half, ptr %24, align 2, !dbg !237, !tbaa !250
  %514 = load half, ptr %25, align 2, !dbg !237, !tbaa !250
  %515 = tail call half @llvm.fmuladd.f16(half %513, half 0xH3800, half %514), !dbg !237
  %516 = load half, ptr %26, align 8, !dbg !237, !tbaa !250
  %517 = load half, ptr %27, align 8, !dbg !237, !tbaa !250
  %518 = tail call half @llvm.fmuladd.f16(half %516, half 0xH3800, half %517), !dbg !237
  %519 = load half, ptr %28, align 2, !dbg !237, !tbaa !250
  %520 = load half, ptr %29, align 2, !dbg !237, !tbaa !250
  %521 = tail call half @llvm.fmuladd.f16(half %519, half 0xH3800, half %520), !dbg !237
  %522 = load half, ptr %30, align 4, !dbg !237, !tbaa !250
  %523 = load half, ptr %31, align 4, !dbg !237, !tbaa !250
  %524 = tail call half @llvm.fmuladd.f16(half %522, half 0xH3800, half %523), !dbg !237
  %525 = load half, ptr %32, align 2, !dbg !237, !tbaa !250
  %526 = load half, ptr %33, align 2, !dbg !237, !tbaa !250
  %527 = tail call half @llvm.fmuladd.f16(half %525, half 0xH3800, half %526), !dbg !237
  %528 = load half, ptr %34, align 16, !dbg !237, !tbaa !250
  %529 = load half, ptr %35, align 16, !dbg !237, !tbaa !250
  %530 = tail call half @llvm.fmuladd.f16(half %528, half 0xH3800, half %529), !dbg !237
  %531 = load half, ptr %36, align 2, !dbg !237, !tbaa !250
  %532 = load half, ptr %37, align 2, !dbg !237, !tbaa !250
  %533 = tail call half @llvm.fmuladd.f16(half %531, half 0xH3800, half %532), !dbg !237
  %534 = load half, ptr %38, align 4, !dbg !237, !tbaa !250
  %535 = load half, ptr %39, align 4, !dbg !237, !tbaa !250
  %536 = tail call half @llvm.fmuladd.f16(half %534, half 0xH3800, half %535), !dbg !237
  %537 = load half, ptr %40, align 2, !dbg !237, !tbaa !250
  %538 = load half, ptr %41, align 2, !dbg !237, !tbaa !250
  %539 = tail call half @llvm.fmuladd.f16(half %537, half 0xH3800, half %538), !dbg !237
  %540 = load half, ptr %42, align 8, !dbg !237, !tbaa !250
  %541 = load half, ptr %43, align 8, !dbg !237, !tbaa !250
  %542 = tail call half @llvm.fmuladd.f16(half %540, half 0xH3800, half %541), !dbg !237
  %543 = load half, ptr %44, align 2, !dbg !237, !tbaa !250
  %544 = load half, ptr %45, align 2, !dbg !237, !tbaa !250
  %545 = tail call half @llvm.fmuladd.f16(half %543, half 0xH3800, half %544), !dbg !237
  %546 = load half, ptr %46, align 4, !dbg !237, !tbaa !250
  %547 = load half, ptr %47, align 4, !dbg !237, !tbaa !250
  %548 = tail call half @llvm.fmuladd.f16(half %546, half 0xH3800, half %547), !dbg !237
  %549 = load half, ptr %48, align 2, !dbg !237, !tbaa !250
  %550 = load half, ptr %49, align 2, !dbg !237, !tbaa !250
  %551 = tail call half @llvm.fmuladd.f16(half %549, half 0xH3800, half %550), !dbg !237
  %552 = load half, ptr %50, align 16, !dbg !237, !tbaa !250
  %553 = load half, ptr %51, align 16, !dbg !237, !tbaa !250
  %554 = tail call half @llvm.fmuladd.f16(half %552, half 0xH3800, half %553), !dbg !237
  %555 = load half, ptr %52, align 2, !dbg !237, !tbaa !250
  %556 = load half, ptr %53, align 2, !dbg !237, !tbaa !250
  %557 = tail call half @llvm.fmuladd.f16(half %555, half 0xH3800, half %556), !dbg !237
  %558 = load half, ptr %54, align 4, !dbg !237, !tbaa !250
  %559 = load half, ptr %55, align 4, !dbg !237, !tbaa !250
  %560 = tail call half @llvm.fmuladd.f16(half %558, half 0xH3800, half %559), !dbg !237
  %561 = load half, ptr %56, align 2, !dbg !237, !tbaa !250
  %562 = load half, ptr %57, align 2, !dbg !237, !tbaa !250
  %563 = tail call half @llvm.fmuladd.f16(half %561, half 0xH3800, half %562), !dbg !237
  %564 = load half, ptr %58, align 8, !dbg !237, !tbaa !250
  %565 = load half, ptr %59, align 8, !dbg !237, !tbaa !250
  %566 = tail call half @llvm.fmuladd.f16(half %564, half 0xH3800, half %565), !dbg !237
  %567 = load half, ptr %60, align 2, !dbg !237, !tbaa !250
  %568 = load half, ptr %61, align 2, !dbg !237, !tbaa !250
  %569 = tail call half @llvm.fmuladd.f16(half %567, half 0xH3800, half %568), !dbg !237
  %570 = load half, ptr %62, align 4, !dbg !237, !tbaa !250
  %571 = load half, ptr %63, align 4, !dbg !237, !tbaa !250
  %572 = tail call half @llvm.fmuladd.f16(half %570, half 0xH3800, half %571), !dbg !237
  %573 = load half, ptr %64, align 2, !dbg !237, !tbaa !250
  %574 = load half, ptr %65, align 2, !dbg !237, !tbaa !250
  %575 = tail call half @llvm.fmuladd.f16(half %573, half 0xH3800, half %574), !dbg !237
  %576 = load half, ptr %66, align 16, !dbg !237, !tbaa !250
  %577 = load half, ptr %67, align 16, !dbg !237, !tbaa !250
  %578 = tail call half @llvm.fmuladd.f16(half %576, half 0xH3800, half %577), !dbg !237
  %579 = load half, ptr %68, align 2, !dbg !237, !tbaa !250
  %580 = load half, ptr %69, align 2, !dbg !237, !tbaa !250
  %581 = tail call half @llvm.fmuladd.f16(half %579, half 0xH3800, half %580), !dbg !237
  %582 = load half, ptr %70, align 4, !dbg !237, !tbaa !250
  %583 = load half, ptr %71, align 4, !dbg !237, !tbaa !250
  %584 = tail call half @llvm.fmuladd.f16(half %582, half 0xH3800, half %583), !dbg !237
  %585 = load half, ptr %72, align 2, !dbg !237, !tbaa !250
  %586 = load half, ptr %73, align 2, !dbg !237, !tbaa !250
  %587 = tail call half @llvm.fmuladd.f16(half %585, half 0xH3800, half %586), !dbg !237
  %588 = load half, ptr %74, align 8, !dbg !237, !tbaa !250
  %589 = load half, ptr %75, align 8, !dbg !237, !tbaa !250
  %590 = tail call half @llvm.fmuladd.f16(half %588, half 0xH3800, half %589), !dbg !237
  %591 = load half, ptr %76, align 2, !dbg !237, !tbaa !250
  %592 = load half, ptr %77, align 2, !dbg !237, !tbaa !250
  %593 = tail call half @llvm.fmuladd.f16(half %591, half 0xH3800, half %592), !dbg !237
  %594 = load half, ptr %78, align 4, !dbg !237, !tbaa !250
  %595 = load half, ptr %79, align 4, !dbg !237, !tbaa !250
  %596 = tail call half @llvm.fmuladd.f16(half %594, half 0xH3800, half %595), !dbg !237
  %597 = load half, ptr %80, align 2, !dbg !237, !tbaa !250
  %598 = load half, ptr %81, align 2, !dbg !237, !tbaa !250
  %599 = tail call half @llvm.fmuladd.f16(half %597, half 0xH3800, half %598), !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !247, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !248, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !249, metadata !DIExpression()), !dbg !237
  %600 = load half, ptr %82, align 16, !dbg !237, !tbaa !250
  %601 = load half, ptr %83, align 16, !dbg !237, !tbaa !250
  %602 = tail call half @llvm.fmuladd.f16(half %600, half 0xH3800, half %601), !dbg !237
  %603 = load half, ptr %84, align 2, !dbg !237, !tbaa !250
  %604 = load half, ptr %85, align 2, !dbg !237, !tbaa !250
  %605 = tail call half @llvm.fmuladd.f16(half %603, half 0xH3800, half %604), !dbg !237
  %606 = load half, ptr %86, align 4, !dbg !237, !tbaa !250
  %607 = load half, ptr %87, align 4, !dbg !237, !tbaa !250
  %608 = tail call half @llvm.fmuladd.f16(half %606, half 0xH3800, half %607), !dbg !237
  %609 = load half, ptr %88, align 2, !dbg !237, !tbaa !250
  %610 = load half, ptr %89, align 2, !dbg !237, !tbaa !250
  %611 = tail call half @llvm.fmuladd.f16(half %609, half 0xH3800, half %610), !dbg !237
  %612 = load half, ptr %90, align 8, !dbg !237, !tbaa !250
  %613 = load half, ptr %91, align 8, !dbg !237, !tbaa !250
  %614 = tail call half @llvm.fmuladd.f16(half %612, half 0xH3800, half %613), !dbg !237
  %615 = load half, ptr %92, align 2, !dbg !237, !tbaa !250
  %616 = load half, ptr %93, align 2, !dbg !237, !tbaa !250
  %617 = tail call half @llvm.fmuladd.f16(half %615, half 0xH3800, half %616), !dbg !237
  %618 = load half, ptr %94, align 4, !dbg !237, !tbaa !250
  %619 = load half, ptr %95, align 4, !dbg !237, !tbaa !250
  %620 = tail call half @llvm.fmuladd.f16(half %618, half 0xH3800, half %619), !dbg !237
  %621 = load half, ptr %96, align 2, !dbg !237, !tbaa !250
  %622 = load half, ptr %97, align 2, !dbg !237, !tbaa !250
  %623 = tail call half @llvm.fmuladd.f16(half %621, half 0xH3800, half %622), !dbg !237
  %624 = load half, ptr %98, align 16, !dbg !237, !tbaa !250
  %625 = load half, ptr %99, align 16, !dbg !237, !tbaa !250
  %626 = tail call half @llvm.fmuladd.f16(half %624, half 0xH3800, half %625), !dbg !237
  %627 = load half, ptr %100, align 2, !dbg !237, !tbaa !250
  %628 = load half, ptr %101, align 2, !dbg !237, !tbaa !250
  %629 = tail call half @llvm.fmuladd.f16(half %627, half 0xH3800, half %628), !dbg !237
  %630 = load half, ptr %102, align 4, !dbg !237, !tbaa !250
  %631 = load half, ptr %103, align 4, !dbg !237, !tbaa !250
  %632 = tail call half @llvm.fmuladd.f16(half %630, half 0xH3800, half %631), !dbg !237
  %633 = load half, ptr %104, align 2, !dbg !237, !tbaa !250
  %634 = load half, ptr %105, align 2, !dbg !237, !tbaa !250
  %635 = tail call half @llvm.fmuladd.f16(half %633, half 0xH3800, half %634), !dbg !237
  %636 = load half, ptr %106, align 8, !dbg !237, !tbaa !250
  %637 = load half, ptr %107, align 8, !dbg !237, !tbaa !250
  %638 = tail call half @llvm.fmuladd.f16(half %636, half 0xH3800, half %637), !dbg !237
  %639 = load half, ptr %108, align 2, !dbg !237, !tbaa !250
  %640 = load half, ptr %109, align 2, !dbg !237, !tbaa !250
  %641 = tail call half @llvm.fmuladd.f16(half %639, half 0xH3800, half %640), !dbg !237
  %642 = load half, ptr %110, align 4, !dbg !237, !tbaa !250
  %643 = load half, ptr %111, align 4, !dbg !237, !tbaa !250
  %644 = tail call half @llvm.fmuladd.f16(half %642, half 0xH3800, half %643), !dbg !237
  %645 = load half, ptr %112, align 2, !dbg !237, !tbaa !250
  %646 = load half, ptr %113, align 2, !dbg !237, !tbaa !250
  %647 = tail call half @llvm.fmuladd.f16(half %645, half 0xH3800, half %646), !dbg !237
  %648 = load half, ptr %114, align 16, !dbg !237, !tbaa !250
  %649 = load half, ptr %115, align 16, !dbg !237, !tbaa !250
  %650 = tail call half @llvm.fmuladd.f16(half %648, half 0xH3800, half %649), !dbg !237
  %651 = load half, ptr %116, align 2, !dbg !237, !tbaa !250
  %652 = load half, ptr %117, align 2, !dbg !237, !tbaa !250
  %653 = tail call half @llvm.fmuladd.f16(half %651, half 0xH3800, half %652), !dbg !237
  %654 = load half, ptr %118, align 4, !dbg !237, !tbaa !250
  %655 = load half, ptr %119, align 4, !dbg !237, !tbaa !250
  %656 = tail call half @llvm.fmuladd.f16(half %654, half 0xH3800, half %655), !dbg !237
  %657 = load half, ptr %120, align 2, !dbg !237, !tbaa !250
  %658 = load half, ptr %121, align 2, !dbg !237, !tbaa !250
  %659 = tail call half @llvm.fmuladd.f16(half %657, half 0xH3800, half %658), !dbg !237
  %660 = load half, ptr %122, align 8, !dbg !237, !tbaa !250
  %661 = load half, ptr %123, align 8, !dbg !237, !tbaa !250
  %662 = tail call half @llvm.fmuladd.f16(half %660, half 0xH3800, half %661), !dbg !237
  %663 = load half, ptr %124, align 2, !dbg !237, !tbaa !250
  %664 = load half, ptr %125, align 2, !dbg !237, !tbaa !250
  %665 = tail call half @llvm.fmuladd.f16(half %663, half 0xH3800, half %664), !dbg !237
  %666 = load half, ptr %126, align 4, !dbg !237, !tbaa !250
  %667 = load half, ptr %127, align 4, !dbg !237, !tbaa !250
  %668 = tail call half @llvm.fmuladd.f16(half %666, half 0xH3800, half %667), !dbg !237
  %669 = load half, ptr %128, align 2, !dbg !237, !tbaa !250
  %670 = load half, ptr %129, align 2, !dbg !237, !tbaa !250
  %671 = tail call half @llvm.fmuladd.f16(half %669, half 0xH3800, half %670), !dbg !237
  %672 = load half, ptr %130, align 16, !dbg !237, !tbaa !250
  %673 = load half, ptr %131, align 16, !dbg !237, !tbaa !250
  %674 = tail call half @llvm.fmuladd.f16(half %672, half 0xH3800, half %673), !dbg !237
  %675 = load half, ptr %132, align 2, !dbg !237, !tbaa !250
  %676 = load half, ptr %133, align 2, !dbg !237, !tbaa !250
  %677 = tail call half @llvm.fmuladd.f16(half %675, half 0xH3800, half %676), !dbg !237
  %678 = load half, ptr %134, align 4, !dbg !237, !tbaa !250
  %679 = load half, ptr %135, align 4, !dbg !237, !tbaa !250
  %680 = tail call half @llvm.fmuladd.f16(half %678, half 0xH3800, half %679), !dbg !237
  %681 = load half, ptr %136, align 2, !dbg !237, !tbaa !250
  %682 = load half, ptr %137, align 2, !dbg !237, !tbaa !250
  %683 = tail call half @llvm.fmuladd.f16(half %681, half 0xH3800, half %682), !dbg !237
  %684 = load half, ptr %138, align 8, !dbg !237, !tbaa !250
  %685 = load half, ptr %139, align 8, !dbg !237, !tbaa !250
  %686 = tail call half @llvm.fmuladd.f16(half %684, half 0xH3800, half %685), !dbg !237
  %687 = load half, ptr %140, align 2, !dbg !237, !tbaa !250
  %688 = load half, ptr %141, align 2, !dbg !237, !tbaa !250
  %689 = tail call half @llvm.fmuladd.f16(half %687, half 0xH3800, half %688), !dbg !237
  %690 = load half, ptr %142, align 4, !dbg !237, !tbaa !250
  %691 = load half, ptr %143, align 4, !dbg !237, !tbaa !250
  %692 = tail call half @llvm.fmuladd.f16(half %690, half 0xH3800, half %691), !dbg !237
  %693 = load half, ptr %144, align 2, !dbg !237, !tbaa !250
  %694 = load half, ptr %145, align 2, !dbg !237, !tbaa !250
  %695 = tail call half @llvm.fmuladd.f16(half %693, half 0xH3800, half %694), !dbg !237
  call void @llvm.dbg.declare(metadata i64 2, metadata !247, metadata !DIExpression()), !dbg !237
  %696 = trunc i64 %indvars.iv18 to i32
  %697 = shl nsw i32 %696, 6
  call void @llvm.dbg.declare(metadata i32 0, metadata !253, metadata !DIExpression()), !dbg !237
  %698 = sext i32 %697 to i64, !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %698, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %698, metadata !255, metadata !DIExpression()), !dbg !237
  %699 = getelementptr inbounds half, ptr %C, i64 %698, !dbg !237
  store half %506, ptr %699, align 64, !dbg !237, !tbaa !256
  %700 = or i32 %697, 1, !dbg !237
  %701 = sext i32 %700 to i64, !dbg !237
  %702 = getelementptr inbounds half, ptr %C, i64 %701, !dbg !237
  store half %509, ptr %702, align 2, !dbg !237, !tbaa !256
  %703 = or i32 %697, 2, !dbg !237
  %704 = sext i32 %703 to i64, !dbg !237
  %705 = getelementptr inbounds half, ptr %C, i64 %704, !dbg !237
  store half %512, ptr %705, align 4, !dbg !237, !tbaa !256
  %706 = or i32 %697, 3, !dbg !237
  %707 = sext i32 %706 to i64, !dbg !237
  %708 = getelementptr inbounds half, ptr %C, i64 %707, !dbg !237
  store half %515, ptr %708, align 2, !dbg !237, !tbaa !256
  %709 = or i32 %697, 4, !dbg !237
  %710 = sext i32 %709 to i64, !dbg !237
  %711 = getelementptr inbounds half, ptr %C, i64 %710, !dbg !237
  store half %518, ptr %711, align 8, !dbg !237, !tbaa !256
  %712 = or i32 %697, 5, !dbg !237
  %713 = sext i32 %712 to i64, !dbg !237
  %714 = getelementptr inbounds half, ptr %C, i64 %713, !dbg !237
  store half %521, ptr %714, align 2, !dbg !237, !tbaa !256
  %715 = or i32 %697, 6, !dbg !237
  %716 = sext i32 %715 to i64, !dbg !237
  %717 = getelementptr inbounds half, ptr %C, i64 %716, !dbg !237
  store half %524, ptr %717, align 4, !dbg !237, !tbaa !256
  %718 = or i32 %697, 7, !dbg !237
  %719 = sext i32 %718 to i64, !dbg !237
  %720 = getelementptr inbounds half, ptr %C, i64 %719, !dbg !237
  store half %527, ptr %720, align 2, !dbg !237, !tbaa !256
  %721 = or i32 %697, 8, !dbg !237
  %722 = sext i32 %721 to i64, !dbg !237
  %723 = getelementptr inbounds half, ptr %C, i64 %722, !dbg !237
  store half %530, ptr %723, align 16, !dbg !237, !tbaa !256
  %724 = or i32 %697, 9, !dbg !237
  %725 = sext i32 %724 to i64, !dbg !237
  %726 = getelementptr inbounds half, ptr %C, i64 %725, !dbg !237
  store half %533, ptr %726, align 2, !dbg !237, !tbaa !256
  %727 = or i32 %697, 10, !dbg !237
  %728 = sext i32 %727 to i64, !dbg !237
  %729 = getelementptr inbounds half, ptr %C, i64 %728, !dbg !237
  store half %536, ptr %729, align 4, !dbg !237, !tbaa !256
  %730 = or i32 %697, 11, !dbg !237
  %731 = sext i32 %730 to i64, !dbg !237
  %732 = getelementptr inbounds half, ptr %C, i64 %731, !dbg !237
  store half %539, ptr %732, align 2, !dbg !237, !tbaa !256
  %733 = or i32 %697, 12, !dbg !237
  %734 = sext i32 %733 to i64, !dbg !237
  %735 = getelementptr inbounds half, ptr %C, i64 %734, !dbg !237
  store half %542, ptr %735, align 8, !dbg !237, !tbaa !256
  %736 = or i32 %697, 13, !dbg !237
  %737 = sext i32 %736 to i64, !dbg !237
  %738 = getelementptr inbounds half, ptr %C, i64 %737, !dbg !237
  store half %545, ptr %738, align 2, !dbg !237, !tbaa !256
  %739 = or i32 %697, 14, !dbg !237
  %740 = sext i32 %739 to i64, !dbg !237
  %741 = getelementptr inbounds half, ptr %C, i64 %740, !dbg !237
  store half %548, ptr %741, align 4, !dbg !237, !tbaa !256
  %742 = or i32 %697, 15, !dbg !237
  %743 = sext i32 %742 to i64, !dbg !237
  %744 = getelementptr inbounds half, ptr %C, i64 %743, !dbg !237
  store half %551, ptr %744, align 2, !dbg !237, !tbaa !256
  %745 = or i32 %697, 16, !dbg !237
  %746 = sext i32 %745 to i64, !dbg !237
  %747 = getelementptr inbounds half, ptr %C, i64 %746, !dbg !237
  store half %554, ptr %747, align 32, !dbg !237, !tbaa !256
  %748 = or i32 %697, 17, !dbg !237
  %749 = sext i32 %748 to i64, !dbg !237
  %750 = getelementptr inbounds half, ptr %C, i64 %749, !dbg !237
  store half %557, ptr %750, align 2, !dbg !237, !tbaa !256
  %751 = or i32 %697, 18, !dbg !237
  %752 = sext i32 %751 to i64, !dbg !237
  %753 = getelementptr inbounds half, ptr %C, i64 %752, !dbg !237
  store half %560, ptr %753, align 4, !dbg !237, !tbaa !256
  %754 = or i32 %697, 19, !dbg !237
  %755 = sext i32 %754 to i64, !dbg !237
  %756 = getelementptr inbounds half, ptr %C, i64 %755, !dbg !237
  store half %563, ptr %756, align 2, !dbg !237, !tbaa !256
  %757 = or i32 %697, 20, !dbg !237
  %758 = sext i32 %757 to i64, !dbg !237
  %759 = getelementptr inbounds half, ptr %C, i64 %758, !dbg !237
  store half %566, ptr %759, align 8, !dbg !237, !tbaa !256
  %760 = or i32 %697, 21, !dbg !237
  %761 = sext i32 %760 to i64, !dbg !237
  %762 = getelementptr inbounds half, ptr %C, i64 %761, !dbg !237
  store half %569, ptr %762, align 2, !dbg !237, !tbaa !256
  %763 = or i32 %697, 22, !dbg !237
  %764 = sext i32 %763 to i64, !dbg !237
  %765 = getelementptr inbounds half, ptr %C, i64 %764, !dbg !237
  store half %572, ptr %765, align 4, !dbg !237, !tbaa !256
  %766 = or i32 %697, 23, !dbg !237
  %767 = sext i32 %766 to i64, !dbg !237
  %768 = getelementptr inbounds half, ptr %C, i64 %767, !dbg !237
  store half %575, ptr %768, align 2, !dbg !237, !tbaa !256
  %769 = or i32 %697, 24, !dbg !237
  %770 = sext i32 %769 to i64, !dbg !237
  %771 = getelementptr inbounds half, ptr %C, i64 %770, !dbg !237
  store half %578, ptr %771, align 16, !dbg !237, !tbaa !256
  %772 = or i32 %697, 25, !dbg !237
  %773 = sext i32 %772 to i64, !dbg !237
  %774 = getelementptr inbounds half, ptr %C, i64 %773, !dbg !237
  store half %581, ptr %774, align 2, !dbg !237, !tbaa !256
  %775 = or i32 %697, 26, !dbg !237
  %776 = sext i32 %775 to i64, !dbg !237
  %777 = getelementptr inbounds half, ptr %C, i64 %776, !dbg !237
  store half %584, ptr %777, align 4, !dbg !237, !tbaa !256
  %778 = or i32 %697, 27, !dbg !237
  %779 = sext i32 %778 to i64, !dbg !237
  %780 = getelementptr inbounds half, ptr %C, i64 %779, !dbg !237
  store half %587, ptr %780, align 2, !dbg !237, !tbaa !256
  %781 = or i32 %697, 28, !dbg !237
  %782 = sext i32 %781 to i64, !dbg !237
  %783 = getelementptr inbounds half, ptr %C, i64 %782, !dbg !237
  store half %590, ptr %783, align 8, !dbg !237, !tbaa !256
  %784 = or i32 %697, 29, !dbg !237
  %785 = sext i32 %784 to i64, !dbg !237
  %786 = getelementptr inbounds half, ptr %C, i64 %785, !dbg !237
  store half %593, ptr %786, align 2, !dbg !237, !tbaa !256
  %787 = or i32 %697, 30, !dbg !237
  %788 = sext i32 %787 to i64, !dbg !237
  %789 = getelementptr inbounds half, ptr %C, i64 %788, !dbg !237
  store half %596, ptr %789, align 4, !dbg !237, !tbaa !256
  %790 = or i32 %697, 31, !dbg !237
  %791 = sext i32 %790 to i64, !dbg !237
  %792 = getelementptr inbounds half, ptr %C, i64 %791, !dbg !237
  store half %599, ptr %792, align 2, !dbg !237, !tbaa !256
  call void @llvm.dbg.declare(metadata i64 1, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !253, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !254, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 32, metadata !254, metadata !DIExpression()), !dbg !237
  %793 = or i64 %698, 32, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %793, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %793, metadata !255, metadata !DIExpression()), !dbg !237
  %794 = getelementptr inbounds half, ptr %C, i64 %793, !dbg !237
  store half %602, ptr %794, align 64, !dbg !237, !tbaa !256
  %795 = or i32 %697, 33, !dbg !237
  %796 = sext i32 %795 to i64, !dbg !237
  %797 = getelementptr inbounds half, ptr %C, i64 %796, !dbg !237
  store half %605, ptr %797, align 2, !dbg !237, !tbaa !256
  %798 = or i32 %697, 34, !dbg !237
  %799 = sext i32 %798 to i64, !dbg !237
  %800 = getelementptr inbounds half, ptr %C, i64 %799, !dbg !237
  store half %608, ptr %800, align 4, !dbg !237, !tbaa !256
  %801 = or i32 %697, 35, !dbg !237
  %802 = sext i32 %801 to i64, !dbg !237
  %803 = getelementptr inbounds half, ptr %C, i64 %802, !dbg !237
  store half %611, ptr %803, align 2, !dbg !237, !tbaa !256
  %804 = or i32 %697, 36, !dbg !237
  %805 = sext i32 %804 to i64, !dbg !237
  %806 = getelementptr inbounds half, ptr %C, i64 %805, !dbg !237
  store half %614, ptr %806, align 8, !dbg !237, !tbaa !256
  %807 = or i32 %697, 37, !dbg !237
  %808 = sext i32 %807 to i64, !dbg !237
  %809 = getelementptr inbounds half, ptr %C, i64 %808, !dbg !237
  store half %617, ptr %809, align 2, !dbg !237, !tbaa !256
  %810 = or i32 %697, 38, !dbg !237
  %811 = sext i32 %810 to i64, !dbg !237
  %812 = getelementptr inbounds half, ptr %C, i64 %811, !dbg !237
  store half %620, ptr %812, align 4, !dbg !237, !tbaa !256
  %813 = or i32 %697, 39, !dbg !237
  %814 = sext i32 %813 to i64, !dbg !237
  %815 = getelementptr inbounds half, ptr %C, i64 %814, !dbg !237
  store half %623, ptr %815, align 2, !dbg !237, !tbaa !256
  %816 = or i32 %697, 40, !dbg !237
  %817 = sext i32 %816 to i64, !dbg !237
  %818 = getelementptr inbounds half, ptr %C, i64 %817, !dbg !237
  store half %626, ptr %818, align 16, !dbg !237, !tbaa !256
  %819 = or i32 %697, 41, !dbg !237
  %820 = sext i32 %819 to i64, !dbg !237
  %821 = getelementptr inbounds half, ptr %C, i64 %820, !dbg !237
  store half %629, ptr %821, align 2, !dbg !237, !tbaa !256
  %822 = or i32 %697, 42, !dbg !237
  %823 = sext i32 %822 to i64, !dbg !237
  %824 = getelementptr inbounds half, ptr %C, i64 %823, !dbg !237
  store half %632, ptr %824, align 4, !dbg !237, !tbaa !256
  %825 = or i32 %697, 43, !dbg !237
  %826 = sext i32 %825 to i64, !dbg !237
  %827 = getelementptr inbounds half, ptr %C, i64 %826, !dbg !237
  store half %635, ptr %827, align 2, !dbg !237, !tbaa !256
  %828 = or i32 %697, 44, !dbg !237
  %829 = sext i32 %828 to i64, !dbg !237
  %830 = getelementptr inbounds half, ptr %C, i64 %829, !dbg !237
  store half %638, ptr %830, align 8, !dbg !237, !tbaa !256
  %831 = or i32 %697, 45, !dbg !237
  %832 = sext i32 %831 to i64, !dbg !237
  %833 = getelementptr inbounds half, ptr %C, i64 %832, !dbg !237
  store half %641, ptr %833, align 2, !dbg !237, !tbaa !256
  %834 = or i32 %697, 46, !dbg !237
  %835 = sext i32 %834 to i64, !dbg !237
  %836 = getelementptr inbounds half, ptr %C, i64 %835, !dbg !237
  store half %644, ptr %836, align 4, !dbg !237, !tbaa !256
  %837 = or i32 %697, 47, !dbg !237
  %838 = sext i32 %837 to i64, !dbg !237
  %839 = getelementptr inbounds half, ptr %C, i64 %838, !dbg !237
  store half %647, ptr %839, align 2, !dbg !237, !tbaa !256
  %840 = or i32 %697, 48, !dbg !237
  %841 = sext i32 %840 to i64, !dbg !237
  %842 = getelementptr inbounds half, ptr %C, i64 %841, !dbg !237
  store half %650, ptr %842, align 32, !dbg !237, !tbaa !256
  %843 = or i32 %697, 49, !dbg !237
  %844 = sext i32 %843 to i64, !dbg !237
  %845 = getelementptr inbounds half, ptr %C, i64 %844, !dbg !237
  store half %653, ptr %845, align 2, !dbg !237, !tbaa !256
  %846 = or i32 %697, 50, !dbg !237
  %847 = sext i32 %846 to i64, !dbg !237
  %848 = getelementptr inbounds half, ptr %C, i64 %847, !dbg !237
  store half %656, ptr %848, align 4, !dbg !237, !tbaa !256
  %849 = or i32 %697, 51, !dbg !237
  %850 = sext i32 %849 to i64, !dbg !237
  %851 = getelementptr inbounds half, ptr %C, i64 %850, !dbg !237
  store half %659, ptr %851, align 2, !dbg !237, !tbaa !256
  %852 = or i32 %697, 52, !dbg !237
  %853 = sext i32 %852 to i64, !dbg !237
  %854 = getelementptr inbounds half, ptr %C, i64 %853, !dbg !237
  store half %662, ptr %854, align 8, !dbg !237, !tbaa !256
  %855 = or i32 %697, 53, !dbg !237
  %856 = sext i32 %855 to i64, !dbg !237
  %857 = getelementptr inbounds half, ptr %C, i64 %856, !dbg !237
  store half %665, ptr %857, align 2, !dbg !237, !tbaa !256
  %858 = or i32 %697, 54, !dbg !237
  %859 = sext i32 %858 to i64, !dbg !237
  %860 = getelementptr inbounds half, ptr %C, i64 %859, !dbg !237
  store half %668, ptr %860, align 4, !dbg !237, !tbaa !256
  %861 = or i32 %697, 55, !dbg !237
  %862 = sext i32 %861 to i64, !dbg !237
  %863 = getelementptr inbounds half, ptr %C, i64 %862, !dbg !237
  store half %671, ptr %863, align 2, !dbg !237, !tbaa !256
  %864 = or i32 %697, 56, !dbg !237
  %865 = sext i32 %864 to i64, !dbg !237
  %866 = getelementptr inbounds half, ptr %C, i64 %865, !dbg !237
  store half %674, ptr %866, align 16, !dbg !237, !tbaa !256
  %867 = or i32 %697, 57, !dbg !237
  %868 = sext i32 %867 to i64, !dbg !237
  %869 = getelementptr inbounds half, ptr %C, i64 %868, !dbg !237
  store half %677, ptr %869, align 2, !dbg !237, !tbaa !256
  %870 = or i32 %697, 58, !dbg !237
  %871 = sext i32 %870 to i64, !dbg !237
  %872 = getelementptr inbounds half, ptr %C, i64 %871, !dbg !237
  store half %680, ptr %872, align 4, !dbg !237, !tbaa !256
  %873 = or i32 %697, 59, !dbg !237
  %874 = sext i32 %873 to i64, !dbg !237
  %875 = getelementptr inbounds half, ptr %C, i64 %874, !dbg !237
  store half %683, ptr %875, align 2, !dbg !237, !tbaa !256
  %876 = or i32 %697, 60, !dbg !237
  %877 = sext i32 %876 to i64, !dbg !237
  %878 = getelementptr inbounds half, ptr %C, i64 %877, !dbg !237
  store half %686, ptr %878, align 8, !dbg !237, !tbaa !256
  %879 = or i32 %697, 61, !dbg !237
  %880 = sext i32 %879 to i64, !dbg !237
  %881 = getelementptr inbounds half, ptr %C, i64 %880, !dbg !237
  store half %689, ptr %881, align 2, !dbg !237, !tbaa !256
  %882 = or i32 %697, 62, !dbg !237
  %883 = sext i32 %882 to i64, !dbg !237
  %884 = getelementptr inbounds half, ptr %C, i64 %883, !dbg !237
  store half %692, ptr %884, align 4, !dbg !237, !tbaa !256
  %885 = or i32 %697, 63, !dbg !237
  %886 = sext i32 %885 to i64, !dbg !237
  %887 = getelementptr inbounds half, ptr %C, i64 %886, !dbg !237
  store half %695, ptr %887, align 2, !dbg !237, !tbaa !256
  call void @llvm.dbg.declare(metadata i64 2, metadata !253, metadata !DIExpression()), !dbg !237
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next19, metadata !238, metadata !DIExpression()), !dbg !237
  %lftr.wideiv = trunc i64 %indvars.iv.next19 to i32, !dbg !237
  %exitcond20.not = icmp eq i32 %18, %lftr.wideiv, !dbg !237
  br i1 %exitcond20.not, label %for_end_m.outer, label %for_body_m.outer, !dbg !237, !prof !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fmuladd.f16(half, half, half) #1

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

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { noinline "target-cpu"="apple-m2" }
attributes #4 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #5 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #6 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!11 = distinct !DISubprogram(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x600000cdfb70.w4.b0", !32, i64 0}
!32 = !{!"0x600000cdfb70.w8.b0", !33, i64 0}
!33 = !{!"0x600000cdfb70.w16.b0", !34, i64 0}
!34 = !{!"0x600000cdfb70.w32.b0", !35, i64 0}
!35 = !{!"0x600000cdfb70.w64.b0", !36, i64 0}
!36 = !{!"0x600000cdfb70.w128.b0", !37, i64 0}
!37 = !{!"0x600000cdfb70.w256.b0", !38, i64 0}
!38 = !{!"0x600000cdfb70.w512.b0", !39, i64 0}
!39 = !{!"0x600000cdfb70.w1024.b0", !40, i64 0}
!40 = !{!"0x600000cdfb70", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x600000cdfb70.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x600000cdfb70.w4.b8", !47, i64 0}
!47 = !{!"0x600000cdfb70.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x600000cdfb70.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x600000cdfb70.w4.b16", !54, i64 0}
!54 = !{!"0x600000cdfb70.w8.b16", !55, i64 0}
!55 = !{!"0x600000cdfb70.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x600000cdfb70.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600000c4e760.w8.b0", !95, i64 0}
!95 = !{!"0x600000c4e760.w16.b0", !96, i64 0}
!96 = !{!"0x600000c4e760.w32.b0", !97, i64 0}
!97 = !{!"0x600000c4e760.w64.b0", !98, i64 0}
!98 = !{!"0x600000c4e760.w128.b0", !99, i64 0}
!99 = !{!"0x600000c4e760.w256.b0", !100, i64 0}
!100 = !{!"0x600000c4e760.w512.b0", !101, i64 0}
!101 = !{!"0x600000c4e760.w1024.b0", !102, i64 0}
!102 = !{!"0x600000c4e760", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600000c4e760.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600000c4e760.w8.b16", !107, i64 0}
!107 = !{!"0x600000c4e760.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600000d8d110.w8.b16", !110, i64 0}
!110 = !{!"0x600000d8d110.w16.b16", !111, i64 0}
!111 = !{!"0x600000d8d110.w32.b0", !112, i64 0}
!112 = !{!"0x600000d8d110.w64.b0", !113, i64 0}
!113 = !{!"0x600000d8d110.w128.b0", !114, i64 0}
!114 = !{!"0x600000d8d110.w256.b0", !115, i64 0}
!115 = !{!"0x600000d8d110.w512.b0", !116, i64 0}
!116 = !{!"0x600000d8d110.w1024.b0", !117, i64 0}
!117 = !{!"0x600000d8d110", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600000d8d110.w8.b8", !120, i64 0}
!120 = !{!"0x600000d8d110.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600000d8d110.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x600000d8f390.w8.b0", !125, i64 0}
!125 = !{!"0x600000d8f390.w16.b0", !126, i64 0}
!126 = !{!"0x600000d8f390.w32.b0", !127, i64 0}
!127 = !{!"0x600000d8f390.w64.b0", !128, i64 0}
!128 = !{!"0x600000d8f390.w128.b0", !129, i64 0}
!129 = !{!"0x600000d8f390.w256.b0", !130, i64 0}
!130 = !{!"0x600000d8f390.w512.b0", !131, i64 0}
!131 = !{!"0x600000d8f390.w1024.b0", !132, i64 0}
!132 = !{!"0x600000d8f390", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600000d8f390.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x600000d8f390.w8.b16", !137, i64 0}
!137 = !{!"0x600000d8f390.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x600000d8d500.w8.b16", !140, i64 0}
!140 = !{!"0x600000d8d500.w16.b16", !141, i64 0}
!141 = !{!"0x600000d8d500.w32.b0", !142, i64 0}
!142 = !{!"0x600000d8d500.w64.b0", !143, i64 0}
!143 = !{!"0x600000d8d500.w128.b0", !144, i64 0}
!144 = !{!"0x600000d8d500.w256.b0", !145, i64 0}
!145 = !{!"0x600000d8d500.w512.b0", !146, i64 0}
!146 = !{!"0x600000d8d500.w1024.b0", !147, i64 0}
!147 = !{!"0x600000d8d500", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x600000d8d500.w8.b8", !150, i64 0}
!150 = !{!"0x600000d8d500.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x600000d8fe40.w8.b0", !153, i64 0}
!153 = !{!"0x600000d8fe40.w16.b0", !154, i64 0}
!154 = !{!"0x600000d8fe40.w32.b0", !155, i64 0}
!155 = !{!"0x600000d8fe40.w64.b0", !156, i64 0}
!156 = !{!"0x600000d8fe40.w128.b0", !157, i64 0}
!157 = !{!"0x600000d8fe40.w256.b0", !158, i64 0}
!158 = !{!"0x600000d8fe40.w512.b0", !159, i64 0}
!159 = !{!"0x600000d8fe40.w1024.b0", !160, i64 0}
!160 = !{!"0x600000d8fe40", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x600000c4ecd0.w8.b0", !163, i64 0}
!163 = !{!"0x600000c4ecd0.w16.b0", !164, i64 0}
!164 = !{!"0x600000c4ecd0.w32.b0", !165, i64 0}
!165 = !{!"0x600000c4ecd0.w64.b0", !166, i64 0}
!166 = !{!"0x600000c4ecd0.w128.b0", !167, i64 0}
!167 = !{!"0x600000c4ecd0.w256.b0", !168, i64 0}
!168 = !{!"0x600000c4ecd0.w512.b0", !169, i64 0}
!169 = !{!"0x600000c4ecd0.w1024.b0", !170, i64 0}
!170 = !{!"0x600000c4ecd0", !28, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x600000c4ecd0.w8.b8", !163, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x600000fb8210.w8.b8", !175, i64 0}
!175 = !{!"0x600000fb8210.w16.b0", !176, i64 0}
!176 = !{!"0x600000fb8210.w32.b0", !177, i64 0}
!177 = !{!"0x600000fb8210.w64.b0", !178, i64 0}
!178 = !{!"0x600000fb8210.w128.b0", !179, i64 0}
!179 = !{!"0x600000fb8210.w256.b0", !180, i64 0}
!180 = !{!"0x600000fb8210.w512.b0", !181, i64 0}
!181 = !{!"0x600000fb8210.w1024.b0", !182, i64 0}
!182 = !{!"0x600000fb8210", !28, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x600000fb9320.w8.b0", !185, i64 0}
!185 = !{!"0x600000fb9320.w16.b0", !186, i64 0}
!186 = !{!"0x600000fb9320.w32.b0", !187, i64 0}
!187 = !{!"0x600000fb9320.w64.b0", !188, i64 0}
!188 = !{!"0x600000fb9320.w128.b0", !189, i64 0}
!189 = !{!"0x600000fb9320.w256.b0", !190, i64 0}
!190 = !{!"0x600000fb9320.w512.b0", !191, i64 0}
!191 = !{!"0x600000fb9320.w1024.b0", !192, i64 0}
!192 = !{!"0x600000fb9320", !28, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x600000fb9320.w8.b8", !185, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x600000fb9c20.w8.b8", !197, i64 0}
!197 = !{!"0x600000fb9c20.w16.b0", !198, i64 0}
!198 = !{!"0x600000fb9c20.w32.b0", !199, i64 0}
!199 = !{!"0x600000fb9c20.w64.b0", !200, i64 0}
!200 = !{!"0x600000fb9c20.w128.b0", !201, i64 0}
!201 = !{!"0x600000fb9c20.w256.b0", !202, i64 0}
!202 = !{!"0x600000fb9c20.w512.b0", !203, i64 0}
!203 = !{!"0x600000fb9c20.w1024.b0", !204, i64 0}
!204 = !{!"0x600000fb9c20", !28, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x600000fba7c0.w8.b0", !207, i64 0}
!207 = !{!"0x600000fba7c0.w16.b0", !208, i64 0}
!208 = !{!"0x600000fba7c0.w32.b0", !209, i64 0}
!209 = !{!"0x600000fba7c0.w64.b0", !210, i64 0}
!210 = !{!"0x600000fba7c0.w128.b0", !211, i64 0}
!211 = !{!"0x600000fba7c0.w256.b0", !212, i64 0}
!212 = !{!"0x600000fba7c0.w512.b0", !213, i64 0}
!213 = !{!"0x600000fba7c0.w1024.b0", !214, i64 0}
!214 = !{!"0x600000fba7c0", !28, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600000fba7c0.w8.b8", !207, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"0x600000fbb180.w8.b8", !219, i64 0}
!219 = !{!"0x600000fbb180.w16.b0", !220, i64 0}
!220 = !{!"0x600000fbb180.w32.b0", !221, i64 0}
!221 = !{!"0x600000fbb180.w64.b0", !222, i64 0}
!222 = !{!"0x600000fbb180.w128.b0", !223, i64 0}
!223 = !{!"0x600000fbb180.w256.b0", !224, i64 0}
!224 = !{!"0x600000fbb180.w512.b0", !225, i64 0}
!225 = !{!"0x600000fbb180.w1024.b0", !226, i64 0}
!226 = !{!"0x600000fbb180", !28, i64 0}
!227 = distinct !DISubprogram(name: "qgemm_lut_t12_int8_m6400_k3200_n1_b2_compute_", scope: !1, file: !1, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!14, !77, !72, !82, !82, !82, !82}
!230 = !{!231, !232, !233, !234, !235, !236}
!231 = !DILocalVariable(name: "LUT", arg: 1, scope: !227, file: !1, type: !77)
!232 = !DILocalVariable(name: "A", arg: 2, scope: !227, file: !1, type: !72)
!233 = !DILocalVariable(name: "Scales", arg: 3, scope: !227, file: !1, type: !82)
!234 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !227, file: !1, type: !82)
!235 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !227, file: !1, type: !82)
!236 = !DILocalVariable(name: "C", arg: 6, scope: !227, file: !1, type: !82)
!237 = !DILocation(line: 0, scope: !227)
!238 = !DILocalVariable(name: "m.outer", scope: !227, file: !1, type: !14)
!239 = !DILocalVariable(name: "CBits", scope: !227, file: !1, type: !82)
!240 = !DILocalVariable(name: "k.outer", scope: !227, file: !1, type: !14)
!241 = !{!242, !242, i64 0}
!242 = !{!"__fp16", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C++ TBAA"}
!245 = distinct !{!245, !246}
!246 = !{!"llvm.loop.mustprogress"}
!247 = !DILocalVariable(name: "m.c.outer", scope: !227, file: !1, type: !14)
!248 = !DILocalVariable(name: "cse_var_2", scope: !227, file: !1, type: !14)
!249 = !DILocalVariable(name: "cse_var_1", scope: !227, file: !1, type: !14)
!250 = !{!251, !251, i64 0}
!251 = !{!"0x600000d9c180", !28, i64 0}
!252 = !DILocalVariable(name: "C.global", scope: !227, file: !1, type: !82)
!253 = !DILocalVariable(name: "m.inner.outer", scope: !227, file: !1, type: !14)
!254 = !DILocalVariable(name: "cse_var_4", scope: !227, file: !1, type: !14)
!255 = !DILocalVariable(name: "cse_var_3", scope: !227, file: !1, type: !14)
!256 = !{!257, !257, i64 0}
!257 = !{!"0x600000d8d3b0", !28, i64 0}
