; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { ptr, i32 }
%closure_loop_parallel_m.outer = type { i32, ptr, ptr, ptr, ptr, ptr, ptr }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [87 x i8] c"Assert fail: num_args == 6, qgemm_lut_t8_int8_m8192_k11008_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [105 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t8_int8_m8192_k11008_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [107 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t8_int8_m8192_k11008_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [138 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t8_int8_m8192_k11008_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [146 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t8_int8_m8192_k11008_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [158 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t8_int8_m8192_k11008_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [174 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t8_int8_m8192_k11008_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [174 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t8_int8_m8192_k11008_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [138 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t8_int8_m8192_k11008_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [119 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t8_int8_m8192_k11008_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [121 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [123 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [125 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [129 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [131 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [119 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t8_int8_m8192_k11008_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [121 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [244 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_shape[0]) == 16, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape[0] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_shape[1]) == 2752, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape[1] has an unsatisfied constraint: 2752 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_shape[2]) == 256, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape[2] has an unsatisfied constraint: 256 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [322 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_strides[2]) and 256 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_strides[1]) and 704512 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_A_strides[0]), qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [114 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t8_int8_m8192_k11008_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_shape[1]) == 2752, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape[1] has an unsatisfied constraint: 2752 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [250 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [246 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_strides[1]), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [213 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [193 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [199 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [118 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [263 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [257 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [222 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [202 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [208 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [124 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Scales_shape[1]) == 172, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 172 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Biases_shape[1]) == 172, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 172 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [243 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_C_shape[0])\00", align 1
@.str.63 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_C_shape[1]) == 4096, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape[1] has an unsatisfied constraint: 4096 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_C_shape[1])\00", align 1
@.str.64 = private constant [163 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t8_int8_m8192_k11008_n1_b2_C_strides[1]), qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [193 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [114 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t8_int8_m8192_k11008_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__tvm_main__ = weak dllexport local_unnamed_addr constant [37 x i8] c"qgemm_lut_t8_int8_m8192_k11008_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t8_int8_m8192_k11008_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %74 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 16, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 2752, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 256, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 256, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  %97 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %98 = and i64 %97, 4294967295, !dbg !24
  %99 = icmp eq i64 %98, 704512, !dbg !24
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
  %123 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %124 = and i64 %123, 4294967295, !dbg !24
  %125 = icmp eq i64 %124, 1, !dbg !24
  br i1 %125, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %126(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %127 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape, i64 1, !dbg !24
  %128 = load i64, ptr %127, align 8, !dbg !24, !tbaa !133
  %129 = and i64 %128, 4294967295, !dbg !24
  %130 = icmp eq i64 %129, 2752, !dbg !24
  br i1 %130, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %131(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %132 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape, i64 2, !dbg !24
  %133 = load i64, ptr %132, align 8, !dbg !24, !tbaa !135
  %134 = and i64 %133, 4294967295, !dbg !24
  %135 = icmp eq i64 %134, 16, !dbg !24
  br i1 %135, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides, i64 2, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !138
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 1, !dbg !24
  %141 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides, i64 1, !dbg !24
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
  %172 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
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
  %201 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !161
  %202 = and i64 %201, 4294967295, !dbg !24
  %203 = icmp eq i64 %202, 1, !dbg !24
  br i1 %203, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %205 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %206 = load i64, ptr %205, align 8, !dbg !24, !tbaa !171
  %207 = and i64 %206, 4294967295, !dbg !24
  %208 = icmp eq i64 %207, 172, !dbg !24
  br i1 %208, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %209 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %209(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %210 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
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
  %240 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !183
  %241 = and i64 %240, 4294967295, !dbg !24
  %242 = icmp eq i64 %241, 1, !dbg !24
  br i1 %242, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %243 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %243(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %244 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %245 = load i64, ptr %244, align 8, !dbg !24, !tbaa !193
  %246 = and i64 %245, 4294967295, !dbg !24
  %247 = icmp eq i64 %246, 172, !dbg !24
  br i1 %247, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %248 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %248(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %249 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
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
  %279 = load i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape, align 8, !dbg !24, !tbaa !205
  %280 = and i64 %279, 4294967295, !dbg !24
  %281 = icmp eq i64 %280, 1, !dbg !24
  br i1 %281, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %282 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %282(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %283 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape, i64 1, !dbg !24
  %284 = load i64, ptr %283, align 8, !dbg !24, !tbaa !215
  %285 = and i64 %284, 4294967295, !dbg !24
  %286 = icmp eq i64 %285, 4096, !dbg !24
  br i1 %286, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %287 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %287(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %288 = getelementptr inbounds i64, ptr %qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides, i64 1, !dbg !24
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
  %306 = tail call fastcc i32 @qgemm_lut_t8_int8_m8192_k11008_n1_b2_compute_(i32 %dev_id, ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t8_int8_m8192_k11008_n1_b2_compute_(i32 %dev_id, ptr noalias align 64 %LUT, ptr noalias align 64 %A, ptr noalias align 64 %Scales, ptr noalias align 64 %LUT_Scales, ptr noalias align 64 %LUT_Biases, ptr noalias align 64 %C) unnamed_addr #3 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata i32 %dev_id, metadata !231, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !232, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %A, metadata !233, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !234, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !235, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !236, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.value(metadata ptr %C, metadata !237, metadata !DIExpression()), !dbg !238
  %0 = alloca %closure_loop_parallel_m.outer, align 8, !dbg !238
  store i32 %dev_id, ptr %0, align 8, !dbg !238
  %1 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 1, !dbg !238
  store ptr %LUT, ptr %1, align 8, !dbg !238
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 2, !dbg !238
  store ptr %A, ptr %2, align 8, !dbg !238
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 3, !dbg !238
  store ptr %Scales, ptr %3, align 8, !dbg !238
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 4, !dbg !238
  store ptr %LUT_Scales, ptr %4, align 8, !dbg !238
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 5, !dbg !238
  store ptr %LUT_Biases, ptr %5, align 8, !dbg !238
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %0, i64 0, i32 6, !dbg !238
  store ptr %C, ptr %6, align 8, !dbg !238
  %7 = load ptr, ptr @__TVMBackendParallelLaunch, align 8, !dbg !238, !tbaa !26
  %8 = call i32 %7(ptr nonnull @__tvm_parallel_lambda, ptr nonnull %0, i32 0), !dbg !238
  ret i32 %8, !dbg !238
}

define private i32 @__tvm_parallel_lambda(i32 %task_id, ptr nocapture readonly %0, ptr nocapture readonly %1) #4 {
parallel_closure_entry:
  %C.global4 = alloca [8 x <32 x half>], align 64, !dbg !238
  %dev_id = load i32, ptr %1, align 4, !dbg !238
  %2 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 1, !dbg !238
  %LUT = load ptr, ptr %2, align 8, !dbg !238
  %3 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 2, !dbg !238
  %A = load ptr, ptr %3, align 8, !dbg !238
  %4 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 3, !dbg !238
  %Scales = load ptr, ptr %4, align 8, !dbg !238
  %5 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 4, !dbg !238
  %LUT_Scales = load ptr, ptr %5, align 8, !dbg !238
  %6 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 5, !dbg !238
  %LUT_Biases = load ptr, ptr %6, align 8, !dbg !238
  %7 = getelementptr inbounds %closure_loop_parallel_m.outer, ptr %1, i64 0, i32 6, !dbg !238
  %C = load ptr, ptr %7, align 8, !dbg !238
  %8 = getelementptr inbounds %4, ptr %0, i64 0, i32 1, !dbg !238
  %num_task = load i32, ptr %8, align 4, !dbg !238
  %9 = add nsw i32 %num_task, 15, !dbg !238
  %10 = sdiv i32 %9, %num_task, !dbg !238
  %11 = mul i32 %10, %task_id, !dbg !238
  %12 = tail call i32 @llvm.smin.i32(i32 %11, i32 16), !dbg !238
  %13 = add nsw i32 %task_id, 1, !dbg !238
  %14 = mul nsw i32 %10, %13, !dbg !238
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 16), !dbg !238
  call void @llvm.dbg.declare(metadata i32 %12, metadata !239, metadata !DIExpression()), !dbg !238
  %16 = icmp slt i32 %12, %15, !dbg !238
  br i1 %16, label %for_body_m.outer.preheader, label %common.ret, !dbg !238, !prof !25

for_body_m.outer.preheader:                       ; preds = %parallel_closure_entry
  %17 = tail call i32 @llvm.smin.i32(i32 %11, i32 16), !dbg !238
  %smin = sext i32 %17 to i64, !dbg !238
  %18 = sub i32 %15, %12, !dbg !238
  br label %for_body_m.outer, !dbg !238

for_begin_m.outer:                                ; preds = %for_begin_m.inner.outer.preheader
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, 1, !dbg !238
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next20, metadata !239, metadata !DIExpression()), !dbg !238
  %indvar.next = add nuw i32 %indvar, 1, !dbg !238
  %exitcond21.not = icmp eq i32 %indvar.next, %18, !dbg !238
  br i1 %exitcond21.not, label %common.ret, label %for_body_m.outer, !dbg !238, !prof !29

for_body_m.outer:                                 ; preds = %for_body_m.outer.preheader, %for_begin_m.outer
  %indvars.iv19 = phi i64 [ %smin, %for_body_m.outer.preheader ], [ %indvars.iv.next20, %for_begin_m.outer ]
  %indvar = phi i32 [ 0, %for_body_m.outer.preheader ], [ %indvar.next, %for_begin_m.outer ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv19, metadata !239, metadata !DIExpression()), !dbg !238
  %19 = add i32 %12, %indvar, !dbg !238
  %20 = shl i32 %19, 8, !dbg !238
  %21 = sext i32 %20 to i64, !dbg !238
  %22 = shl nsw i64 %21, 1, !dbg !238
  %scevgep = getelementptr i8, ptr %C, i64 %22, !dbg !238
  %23 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !dbg !238, !tbaa !26
  %CBits = tail call ptr %23(i32 1, i32 %dev_id, i64 1024, i32 2, i32 16), !dbg !238
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !240, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !240, metadata !DIExpression()), !dbg !238
  call void @llvm.assume(i1 true) [ "align"(ptr %CBits, i64 64) ], !dbg !238
  %24 = icmp eq ptr %CBits, null, !dbg !238
  br i1 %24, label %common.ret, label %if_end, !dbg !238, !prof !25

common.ret:                                       ; preds = %for_begin_m.outer, %for_body_m.outer, %for_begin_m.inner.outer.preheader, %parallel_closure_entry
  %common.ret.op = phi i32 [ 0, %parallel_closure_entry ], [ -1, %for_begin_m.inner.outer.preheader ], [ -1, %for_body_m.outer ], [ 0, %for_begin_m.outer ]
  ret i32 %common.ret.op, !dbg !238

if_end:                                           ; preds = %for_body_m.outer
  call void @llvm.dbg.declare(metadata ptr %C.global4, metadata !241, metadata !DIExpression()), !dbg !238
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %CBits, i8 0, i64 1024, i1 false), !dbg !238
  %25 = mul nsw i64 %indvars.iv19, 704512
  call void @llvm.dbg.declare(metadata i32 0, metadata !244, metadata !DIExpression()), !dbg !238
  br label %for_body_k.outer, !dbg !238

for_body_k.outer:                                 ; preds = %if_end, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %if_end ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !244, metadata !DIExpression()), !dbg !238
  %26 = shl nuw nsw i64 %indvars.iv, 8, !dbg !238
  %27 = getelementptr inbounds i8, ptr %LUT, i64 %26, !dbg !238
  %28 = shl nuw nsw i64 %indvars.iv, 12, !dbg !238
  %29 = add nsw i64 %28, %25, !dbg !238
  %30 = getelementptr inbounds i8, ptr %A, i64 %29, !dbg !238
  %31 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !238
  %32 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !238
  %33 = load <16 x i8>, ptr %27, align 1, !dbg !238
  %34 = getelementptr inbounds i8, ptr %27, i64 16, !dbg !238
  %35 = load <16 x i8>, ptr %34, align 1, !dbg !238
  %36 = getelementptr inbounds i8, ptr %27, i64 32, !dbg !238
  %37 = load <16 x i8>, ptr %36, align 1, !dbg !238
  %38 = getelementptr inbounds i8, ptr %27, i64 48, !dbg !238
  %39 = load <16 x i8>, ptr %38, align 1, !dbg !238
  %40 = getelementptr inbounds i8, ptr %27, i64 64, !dbg !238
  %41 = load <16 x i8>, ptr %40, align 1, !dbg !238
  %42 = getelementptr inbounds i8, ptr %27, i64 80, !dbg !238
  %43 = load <16 x i8>, ptr %42, align 1, !dbg !238
  %44 = getelementptr inbounds i8, ptr %27, i64 96, !dbg !238
  %45 = load <16 x i8>, ptr %44, align 1, !dbg !238
  %46 = getelementptr inbounds i8, ptr %27, i64 112, !dbg !238
  %47 = load <16 x i8>, ptr %46, align 1, !dbg !238
  %48 = getelementptr inbounds i8, ptr %27, i64 128, !dbg !238
  %49 = load <16 x i8>, ptr %48, align 1, !dbg !238
  %50 = getelementptr inbounds i8, ptr %27, i64 144, !dbg !238
  %51 = load <16 x i8>, ptr %50, align 1, !dbg !238
  %52 = getelementptr inbounds i8, ptr %27, i64 160, !dbg !238
  %53 = load <16 x i8>, ptr %52, align 1, !dbg !238
  %54 = getelementptr inbounds i8, ptr %27, i64 176, !dbg !238
  %55 = load <16 x i8>, ptr %54, align 1, !dbg !238
  %56 = getelementptr inbounds i8, ptr %27, i64 192, !dbg !238
  %57 = load <16 x i8>, ptr %56, align 1, !dbg !238
  %58 = getelementptr inbounds i8, ptr %27, i64 208, !dbg !238
  %59 = load <16 x i8>, ptr %58, align 1, !dbg !238
  %60 = getelementptr inbounds i8, ptr %27, i64 224, !dbg !238
  %61 = load <16 x i8>, ptr %60, align 1, !dbg !238
  %62 = getelementptr inbounds i8, ptr %27, i64 240, !dbg !238
  %63 = load <16 x i8>, ptr %62, align 1, !dbg !238
  br label %64, !dbg !238

64:                                               ; preds = %64, %for_body_k.outer
  %65 = phi i64 [ 0, %for_body_k.outer ], [ %381, %64 ], !dbg !238
  %66 = shl nuw nsw i64 %65, 4, !dbg !238
  %67 = getelementptr inbounds i8, ptr %30, i64 %66, !dbg !238
  %68 = load half, ptr %31, align 2, !dbg !238, !tbaa !245
  %69 = load half, ptr %32, align 2, !dbg !238, !tbaa !245
  %70 = insertelement <8 x half> poison, half %68, i64 0, !dbg !238
  %71 = insertelement <8 x half> poison, half %69, i64 0, !dbg !238
  %72 = load <16 x i8>, ptr %67, align 1, !dbg !238
  %73 = lshr <16 x i8> %72, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %74 = and <16 x i8> %72, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %75 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %74), !dbg !238
  %76 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %73), !dbg !238
  %77 = getelementptr inbounds i8, ptr %67, i64 16, !dbg !238
  %78 = load <16 x i8>, ptr %77, align 1, !dbg !238
  %79 = lshr <16 x i8> %78, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %80 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %79), !dbg !238
  %81 = and <16 x i8> %78, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %82 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %81), !dbg !238
  %83 = shufflevector <16 x i8> %75, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %84 = shufflevector <16 x i8> %82, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %85 = sext <8 x i8> %83 to <8 x i16>, !dbg !238
  %86 = sext <8 x i8> %84 to <8 x i16>, !dbg !238
  %87 = shufflevector <16 x i8> %75, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %88 = sext <8 x i8> %87 to <8 x i16>, !dbg !238
  %89 = shufflevector <16 x i8> %82, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %90 = sext <8 x i8> %89 to <8 x i16>, !dbg !238
  %91 = add nsw <8 x i16> %86, %85, !dbg !238
  %92 = add nsw <8 x i16> %90, %88, !dbg !238
  %93 = shufflevector <16 x i8> %76, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %94 = shufflevector <16 x i8> %80, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %95 = sext <8 x i8> %93 to <8 x i16>, !dbg !238
  %96 = sext <8 x i8> %94 to <8 x i16>, !dbg !238
  %97 = shufflevector <16 x i8> %76, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %98 = sext <8 x i8> %97 to <8 x i16>, !dbg !238
  %99 = shufflevector <16 x i8> %80, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %100 = sext <8 x i8> %99 to <8 x i16>, !dbg !238
  %101 = getelementptr inbounds i8, ptr %67, i64 32, !dbg !238
  %102 = load <16 x i8>, ptr %101, align 1, !dbg !238
  %103 = lshr <16 x i8> %102, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %104 = and <16 x i8> %102, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %105 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %104), !dbg !238
  %106 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %103), !dbg !238
  %107 = getelementptr inbounds i8, ptr %67, i64 48, !dbg !238
  %108 = load <16 x i8>, ptr %107, align 1, !dbg !238
  %109 = and <16 x i8> %108, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %110 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %109), !dbg !238
  %111 = shufflevector <16 x i8> %105, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %112 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %113 = sext <8 x i8> %111 to <8 x i16>, !dbg !238
  %114 = sext <8 x i8> %112 to <8 x i16>, !dbg !238
  %115 = shufflevector <16 x i8> %105, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %116 = sext <8 x i8> %115 to <8 x i16>, !dbg !238
  %117 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %118 = sext <8 x i8> %117 to <8 x i16>, !dbg !238
  %119 = add nsw <8 x i16> %91, %113, !dbg !238
  %120 = add nsw <8 x i16> %119, %114, !dbg !238
  %121 = add nsw <8 x i16> %92, %116, !dbg !238
  %122 = add nsw <8 x i16> %121, %118, !dbg !238
  %123 = lshr <16 x i8> %108, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %124 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %123), !dbg !238
  %125 = shufflevector <16 x i8> %124, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %126 = sext <8 x i8> %125 to <8 x i16>, !dbg !238
  %127 = shufflevector <16 x i8> %106, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %128 = sext <8 x i8> %127 to <8 x i16>, !dbg !238
  %129 = shufflevector <16 x i8> %124, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %130 = sext <8 x i8> %129 to <8 x i16>, !dbg !238
  %131 = shufflevector <16 x i8> %106, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %132 = sext <8 x i8> %131 to <8 x i16>, !dbg !238
  %133 = getelementptr inbounds i8, ptr %67, i64 64, !dbg !238
  %134 = load <16 x i8>, ptr %133, align 1, !dbg !238
  %135 = lshr <16 x i8> %134, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %136 = and <16 x i8> %134, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %137 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %41, <16 x i8> %136), !dbg !238
  %138 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %41, <16 x i8> %135), !dbg !238
  %139 = getelementptr inbounds i8, ptr %67, i64 80, !dbg !238
  %140 = load <16 x i8>, ptr %139, align 1, !dbg !238
  %141 = and <16 x i8> %140, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %142 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %43, <16 x i8> %141), !dbg !238
  %143 = shufflevector <16 x i8> %137, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %144 = shufflevector <16 x i8> %142, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %145 = sext <8 x i8> %143 to <8 x i16>, !dbg !238
  %146 = sext <8 x i8> %144 to <8 x i16>, !dbg !238
  %147 = shufflevector <16 x i8> %137, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %148 = sext <8 x i8> %147 to <8 x i16>, !dbg !238
  %149 = shufflevector <16 x i8> %142, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %150 = sext <8 x i8> %149 to <8 x i16>, !dbg !238
  %151 = add nsw <8 x i16> %120, %145, !dbg !238
  %152 = add nsw <8 x i16> %151, %146, !dbg !238
  %153 = add nsw <8 x i16> %122, %148, !dbg !238
  %154 = add nsw <8 x i16> %153, %150, !dbg !238
  %155 = lshr <16 x i8> %140, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %156 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %43, <16 x i8> %155), !dbg !238
  %157 = shufflevector <16 x i8> %156, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %158 = sext <8 x i8> %157 to <8 x i16>, !dbg !238
  %159 = shufflevector <16 x i8> %138, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %160 = sext <8 x i8> %159 to <8 x i16>, !dbg !238
  %161 = shufflevector <16 x i8> %156, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %162 = sext <8 x i8> %161 to <8 x i16>, !dbg !238
  %163 = shufflevector <16 x i8> %138, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %164 = sext <8 x i8> %163 to <8 x i16>, !dbg !238
  %165 = getelementptr inbounds i8, ptr %67, i64 96, !dbg !238
  %166 = load <16 x i8>, ptr %165, align 1, !dbg !238
  %167 = lshr <16 x i8> %166, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %168 = and <16 x i8> %166, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %169 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %45, <16 x i8> %168), !dbg !238
  %170 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %45, <16 x i8> %167), !dbg !238
  %171 = getelementptr inbounds i8, ptr %67, i64 112, !dbg !238
  %172 = load <16 x i8>, ptr %171, align 1, !dbg !238
  %173 = and <16 x i8> %172, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %174 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %173), !dbg !238
  %175 = shufflevector <16 x i8> %169, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %176 = shufflevector <16 x i8> %174, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %177 = sext <8 x i8> %175 to <8 x i16>, !dbg !238
  %178 = sext <8 x i8> %176 to <8 x i16>, !dbg !238
  %179 = shufflevector <16 x i8> %169, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %180 = sext <8 x i8> %179 to <8 x i16>, !dbg !238
  %181 = shufflevector <16 x i8> %174, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %182 = sext <8 x i8> %181 to <8 x i16>, !dbg !238
  %183 = add nsw <8 x i16> %152, %177, !dbg !238
  %184 = add <8 x i16> %183, %178, !dbg !238
  %185 = add nsw <8 x i16> %154, %180, !dbg !238
  %186 = add <8 x i16> %185, %182, !dbg !238
  %187 = lshr <16 x i8> %172, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %188 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %187), !dbg !238
  %189 = shufflevector <16 x i8> %188, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %190 = sext <8 x i8> %189 to <8 x i16>, !dbg !238
  %191 = shufflevector <16 x i8> %170, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %192 = sext <8 x i8> %191 to <8 x i16>, !dbg !238
  %193 = shufflevector <16 x i8> %188, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %194 = sext <8 x i8> %193 to <8 x i16>, !dbg !238
  %195 = shufflevector <16 x i8> %170, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %196 = sext <8 x i8> %195 to <8 x i16>, !dbg !238
  %197 = getelementptr inbounds i8, ptr %67, i64 128, !dbg !238
  %198 = load <16 x i8>, ptr %197, align 1, !dbg !238
  %199 = lshr <16 x i8> %198, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %200 = and <16 x i8> %198, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %201 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %49, <16 x i8> %200), !dbg !238
  %202 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %49, <16 x i8> %199), !dbg !238
  %203 = getelementptr inbounds i8, ptr %67, i64 144, !dbg !238
  %204 = load <16 x i8>, ptr %203, align 1, !dbg !238
  %205 = and <16 x i8> %204, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %206 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %51, <16 x i8> %205), !dbg !238
  %207 = shufflevector <16 x i8> %201, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %208 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %209 = sext <8 x i8> %207 to <8 x i16>, !dbg !238
  %210 = sext <8 x i8> %208 to <8 x i16>, !dbg !238
  %211 = shufflevector <16 x i8> %201, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %212 = sext <8 x i8> %211 to <8 x i16>, !dbg !238
  %213 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %214 = sext <8 x i8> %213 to <8 x i16>, !dbg !238
  %215 = add <8 x i16> %184, %209, !dbg !238
  %216 = add <8 x i16> %215, %210, !dbg !238
  %217 = add <8 x i16> %186, %212, !dbg !238
  %218 = add <8 x i16> %217, %214, !dbg !238
  %219 = lshr <16 x i8> %204, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %220 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %51, <16 x i8> %219), !dbg !238
  %221 = shufflevector <16 x i8> %220, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %222 = sext <8 x i8> %221 to <8 x i16>, !dbg !238
  %223 = shufflevector <16 x i8> %202, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %224 = sext <8 x i8> %223 to <8 x i16>, !dbg !238
  %225 = shufflevector <16 x i8> %220, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %226 = sext <8 x i8> %225 to <8 x i16>, !dbg !238
  %227 = shufflevector <16 x i8> %202, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %228 = sext <8 x i8> %227 to <8 x i16>, !dbg !238
  %229 = getelementptr inbounds i8, ptr %67, i64 160, !dbg !238
  %230 = load <16 x i8>, ptr %229, align 1, !dbg !238
  %231 = lshr <16 x i8> %230, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %232 = and <16 x i8> %230, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %233 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %53, <16 x i8> %232), !dbg !238
  %234 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %53, <16 x i8> %231), !dbg !238
  %235 = getelementptr inbounds i8, ptr %67, i64 176, !dbg !238
  %236 = load <16 x i8>, ptr %235, align 1, !dbg !238
  %237 = and <16 x i8> %236, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %238 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %55, <16 x i8> %237), !dbg !238
  %239 = shufflevector <16 x i8> %233, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %240 = shufflevector <16 x i8> %238, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %241 = sext <8 x i8> %239 to <8 x i16>, !dbg !238
  %242 = sext <8 x i8> %240 to <8 x i16>, !dbg !238
  %243 = shufflevector <16 x i8> %233, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %244 = sext <8 x i8> %243 to <8 x i16>, !dbg !238
  %245 = shufflevector <16 x i8> %238, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %246 = sext <8 x i8> %245 to <8 x i16>, !dbg !238
  %247 = add <8 x i16> %216, %241, !dbg !238
  %248 = add <8 x i16> %247, %242, !dbg !238
  %249 = add <8 x i16> %218, %244, !dbg !238
  %250 = add <8 x i16> %249, %246, !dbg !238
  %251 = lshr <16 x i8> %236, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %252 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %55, <16 x i8> %251), !dbg !238
  %253 = shufflevector <16 x i8> %252, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %254 = sext <8 x i8> %253 to <8 x i16>, !dbg !238
  %255 = shufflevector <16 x i8> %234, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %256 = sext <8 x i8> %255 to <8 x i16>, !dbg !238
  %257 = shufflevector <16 x i8> %252, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %258 = sext <8 x i8> %257 to <8 x i16>, !dbg !238
  %259 = shufflevector <16 x i8> %234, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %260 = sext <8 x i8> %259 to <8 x i16>, !dbg !238
  %261 = getelementptr inbounds i8, ptr %67, i64 192, !dbg !238
  %262 = load <16 x i8>, ptr %261, align 1, !dbg !238
  %263 = lshr <16 x i8> %262, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %264 = and <16 x i8> %262, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %265 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %57, <16 x i8> %264), !dbg !238
  %266 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %57, <16 x i8> %263), !dbg !238
  %267 = getelementptr inbounds i8, ptr %67, i64 208, !dbg !238
  %268 = load <16 x i8>, ptr %267, align 1, !dbg !238
  %269 = and <16 x i8> %268, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %270 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %59, <16 x i8> %269), !dbg !238
  %271 = shufflevector <16 x i8> %265, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %272 = shufflevector <16 x i8> %270, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %273 = sext <8 x i8> %271 to <8 x i16>, !dbg !238
  %274 = sext <8 x i8> %272 to <8 x i16>, !dbg !238
  %275 = shufflevector <16 x i8> %265, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %276 = sext <8 x i8> %275 to <8 x i16>, !dbg !238
  %277 = shufflevector <16 x i8> %270, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %278 = sext <8 x i8> %277 to <8 x i16>, !dbg !238
  %279 = add <8 x i16> %248, %273, !dbg !238
  %280 = add <8 x i16> %279, %274, !dbg !238
  %281 = add <8 x i16> %250, %276, !dbg !238
  %282 = add <8 x i16> %281, %278, !dbg !238
  %283 = lshr <16 x i8> %268, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %284 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %59, <16 x i8> %283), !dbg !238
  %285 = shufflevector <16 x i8> %284, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %286 = sext <8 x i8> %285 to <8 x i16>, !dbg !238
  %287 = shufflevector <16 x i8> %266, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %288 = sext <8 x i8> %287 to <8 x i16>, !dbg !238
  %289 = shufflevector <16 x i8> %284, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %290 = sext <8 x i8> %289 to <8 x i16>, !dbg !238
  %291 = shufflevector <16 x i8> %266, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %292 = sext <8 x i8> %291 to <8 x i16>, !dbg !238
  %293 = getelementptr inbounds i8, ptr %67, i64 224, !dbg !238
  %294 = load <16 x i8>, ptr %293, align 1, !dbg !238
  %295 = lshr <16 x i8> %294, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %296 = and <16 x i8> %294, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %297 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %61, <16 x i8> %296), !dbg !238
  %298 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %61, <16 x i8> %295), !dbg !238
  %299 = getelementptr inbounds i8, ptr %67, i64 240, !dbg !238
  %300 = load <16 x i8>, ptr %299, align 1, !dbg !238
  %301 = and <16 x i8> %300, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !238
  %302 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %63, <16 x i8> %301), !dbg !238
  %303 = shufflevector <16 x i8> %297, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %304 = shufflevector <16 x i8> %302, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %305 = sext <8 x i8> %303 to <8 x i16>, !dbg !238
  %306 = sext <8 x i8> %304 to <8 x i16>, !dbg !238
  %307 = shufflevector <16 x i8> %297, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %308 = sext <8 x i8> %307 to <8 x i16>, !dbg !238
  %309 = shufflevector <16 x i8> %302, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %310 = sext <8 x i8> %309 to <8 x i16>, !dbg !238
  %311 = add <8 x i16> %280, %305, !dbg !238
  %312 = add <8 x i16> %311, %306, !dbg !238
  %313 = add <8 x i16> %282, %308, !dbg !238
  %314 = add <8 x i16> %313, %310, !dbg !238
  %315 = lshr <16 x i8> %300, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !238
  %316 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %63, <16 x i8> %315), !dbg !238
  %317 = shufflevector <16 x i8> %316, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %318 = sext <8 x i8> %317 to <8 x i16>, !dbg !238
  %319 = shufflevector <16 x i8> %298, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !238
  %320 = sext <8 x i8> %319 to <8 x i16>, !dbg !238
  %321 = add nsw <8 x i16> %100, %98, !dbg !238
  %322 = add nsw <8 x i16> %321, %128, !dbg !238
  %323 = add nsw <8 x i16> %322, %126, !dbg !238
  %324 = add nsw <8 x i16> %323, %160, !dbg !238
  %325 = add nsw <8 x i16> %324, %158, !dbg !238
  %326 = add nsw <8 x i16> %325, %192, !dbg !238
  %327 = add <8 x i16> %326, %190, !dbg !238
  %328 = add <8 x i16> %327, %224, !dbg !238
  %329 = add <8 x i16> %328, %222, !dbg !238
  %330 = add <8 x i16> %329, %256, !dbg !238
  %331 = add <8 x i16> %330, %254, !dbg !238
  %332 = add <8 x i16> %331, %288, !dbg !238
  %333 = add <8 x i16> %332, %286, !dbg !238
  %334 = add <8 x i16> %333, %320, !dbg !238
  %335 = add <8 x i16> %334, %318, !dbg !238
  %336 = shufflevector <16 x i8> %316, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %337 = sext <8 x i8> %336 to <8 x i16>, !dbg !238
  %338 = shufflevector <16 x i8> %298, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !238
  %339 = sext <8 x i8> %338 to <8 x i16>, !dbg !238
  %340 = add nsw <8 x i16> %96, %95, !dbg !238
  %341 = add nsw <8 x i16> %340, %132, !dbg !238
  %342 = add nsw <8 x i16> %341, %130, !dbg !238
  %343 = add nsw <8 x i16> %342, %164, !dbg !238
  %344 = add nsw <8 x i16> %343, %162, !dbg !238
  %345 = add nsw <8 x i16> %344, %196, !dbg !238
  %346 = add <8 x i16> %345, %194, !dbg !238
  %347 = add <8 x i16> %346, %228, !dbg !238
  %348 = add <8 x i16> %347, %226, !dbg !238
  %349 = add <8 x i16> %348, %260, !dbg !238
  %350 = add <8 x i16> %349, %258, !dbg !238
  %351 = add <8 x i16> %350, %292, !dbg !238
  %352 = add <8 x i16> %351, %290, !dbg !238
  %353 = add <8 x i16> %352, %339, !dbg !238
  %354 = add <8 x i16> %353, %337, !dbg !238
  %355 = shufflevector <8 x half> %70, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !238
  %356 = shufflevector <8 x half> %71, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !238
  %357 = sitofp <8 x i16> %312 to <8 x half>, !dbg !238
  %358 = sitofp <8 x i16> %314 to <8 x half>, !dbg !238
  %359 = sitofp <8 x i16> %354 to <8 x half>, !dbg !238
  %360 = sitofp <8 x i16> %335 to <8 x half>, !dbg !238
  %361 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %357, <8 x half> %355, <8 x half> %356), !dbg !238
  %362 = fmul <8 x half> %355, %358, !dbg !238
  %363 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %359, <8 x half> %355, <8 x half> %356), !dbg !238
  %364 = fmul <8 x half> %355, %360, !dbg !238
  %365 = load half, ptr %Scales, align 2, !dbg !238, !tbaa !245
  %366 = shl nuw nsw i64 %65, 1, !dbg !238
  %367 = getelementptr inbounds half, ptr %CBits, i64 %366, !dbg !238
  %368 = load <8 x half>, ptr %367, align 64, !dbg !238
  %369 = insertelement <8 x half> poison, half %365, i64 0, !dbg !238
  %370 = shufflevector <8 x half> %369, <8 x half> poison, <8 x i32> zeroinitializer, !dbg !238
  %371 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %361, <8 x half> %370, <8 x half> %368), !dbg !238
  store <8 x half> %371, ptr %367, align 64, !dbg !238
  %372 = getelementptr inbounds half, ptr %367, i64 8, !dbg !238
  %373 = load <8 x half>, ptr %372, align 16, !dbg !238
  %374 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %362, <8 x half> %370, <8 x half> %373), !dbg !238
  store <8 x half> %374, ptr %372, align 16, !dbg !238
  %375 = getelementptr inbounds half, ptr %367, i64 16, !dbg !238
  %376 = load <8 x half>, ptr %375, align 32, !dbg !238
  %377 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %363, <8 x half> %370, <8 x half> %376), !dbg !238
  store <8 x half> %377, ptr %375, align 32, !dbg !238
  %378 = getelementptr inbounds half, ptr %367, i64 24, !dbg !238
  %379 = load <8 x half>, ptr %378, align 16, !dbg !238
  %380 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %364, <8 x half> %370, <8 x half> %379), !dbg !238
  store <8 x half> %380, ptr %378, align 16, !dbg !238
  %381 = add nuw nsw i64 %65, 16, !dbg !238
  %382 = icmp ult i64 %65, 240, !dbg !238
  br i1 %382, label %64, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !238, !llvm.loop !249

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %64
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !238
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !244, metadata !DIExpression()), !dbg !238
  %exitcond.not = icmp eq i64 %indvars.iv.next, 172, !dbg !238
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !238, !prof !29

for_begin_m.inner.outer.preheader:                ; preds = %for_body_m.c.outer
  call void @llvm.dbg.declare(metadata i32 0, metadata !251, metadata !DIExpression()), !dbg !238
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(512) %scevgep, ptr noundef nonnull align 64 dereferenceable(512) %C.global4, i64 512, i1 false), !dbg !238
  call void @llvm.dbg.declare(metadata i64 poison, metadata !251, metadata !DIExpression()), !dbg !238
  %383 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !dbg !238, !tbaa !26
  %384 = tail call i32 %383(i32 1, i32 %dev_id, ptr nonnull %CBits), !dbg !238
  %.not = icmp eq i32 %384, 0, !dbg !238
  br i1 %.not, label %for_begin_m.outer, label %common.ret, !dbg !238, !prof !29

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, %for_body_m.c.outer
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for_body_m.c.outer ], [ 0, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv12, metadata !252, metadata !DIExpression()), !dbg !238
  %385 = shl nuw nsw i64 %indvars.iv12, 6, !dbg !238
  %386 = trunc i64 %385 to i32, !dbg !238
  %387 = insertelement <32 x i32> undef, i32 %386, i64 0, !dbg !238
  %388 = shufflevector <32 x i32> %387, <32 x i32> undef, <32 x i32> zeroinitializer, !dbg !238
  %cse_var_1 = or <32 x i32> %388, <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, !dbg !238
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !253, metadata !DIExpression()), !dbg !238
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !253, metadata !DIExpression()), !dbg !238
  %389 = getelementptr inbounds half, ptr %CBits, i64 %385, !dbg !238
  %390 = load half, ptr %389, align 64, !dbg !238, !tbaa !255
  %391 = extractelement <32 x i32> %cse_var_1, i64 1, !dbg !238
  %392 = zext i32 %391 to i64, !dbg !238
  %393 = getelementptr inbounds half, ptr %CBits, i64 %392, !dbg !238
  %394 = load half, ptr %393, align 2, !dbg !238, !tbaa !255
  %395 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !238
  %396 = zext <2 x i32> %395 to <2 x i64>, !dbg !238
  %397 = extractelement <2 x i64> %396, i64 0, !dbg !238
  %398 = getelementptr inbounds half, ptr %CBits, i64 %397, !dbg !238
  %399 = load half, ptr %398, align 2, !dbg !238, !tbaa !255
  %400 = extractelement <2 x i64> %396, i64 1, !dbg !238
  %401 = getelementptr inbounds half, ptr %CBits, i64 %400, !dbg !238
  %402 = load half, ptr %401, align 2, !dbg !238, !tbaa !255
  %403 = extractelement <32 x i32> %cse_var_1, i64 4, !dbg !238
  %404 = zext i32 %403 to i64, !dbg !238
  %405 = getelementptr inbounds half, ptr %CBits, i64 %404, !dbg !238
  %406 = load half, ptr %405, align 2, !dbg !238, !tbaa !255
  %407 = extractelement <32 x i32> %cse_var_1, i64 5, !dbg !238
  %408 = zext i32 %407 to i64, !dbg !238
  %409 = getelementptr inbounds half, ptr %CBits, i64 %408, !dbg !238
  %410 = load half, ptr %409, align 2, !dbg !238, !tbaa !255
  %411 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !238
  %412 = zext <2 x i32> %411 to <2 x i64>, !dbg !238
  %413 = extractelement <2 x i64> %412, i64 0, !dbg !238
  %414 = getelementptr inbounds half, ptr %CBits, i64 %413, !dbg !238
  %415 = load half, ptr %414, align 2, !dbg !238, !tbaa !255
  %416 = extractelement <2 x i64> %412, i64 1, !dbg !238
  %417 = getelementptr inbounds half, ptr %CBits, i64 %416, !dbg !238
  %418 = load half, ptr %417, align 2, !dbg !238, !tbaa !255
  %419 = extractelement <32 x i32> %cse_var_1, i64 8, !dbg !238
  %420 = zext i32 %419 to i64, !dbg !238
  %421 = getelementptr inbounds half, ptr %CBits, i64 %420, !dbg !238
  %422 = load half, ptr %421, align 2, !dbg !238, !tbaa !255
  %423 = extractelement <32 x i32> %cse_var_1, i64 9, !dbg !238
  %424 = zext i32 %423 to i64, !dbg !238
  %425 = getelementptr inbounds half, ptr %CBits, i64 %424, !dbg !238
  %426 = load half, ptr %425, align 2, !dbg !238, !tbaa !255
  %427 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !238
  %428 = zext <2 x i32> %427 to <2 x i64>, !dbg !238
  %429 = extractelement <2 x i64> %428, i64 0, !dbg !238
  %430 = getelementptr inbounds half, ptr %CBits, i64 %429, !dbg !238
  %431 = load half, ptr %430, align 2, !dbg !238, !tbaa !255
  %432 = extractelement <2 x i64> %428, i64 1, !dbg !238
  %433 = getelementptr inbounds half, ptr %CBits, i64 %432, !dbg !238
  %434 = load half, ptr %433, align 2, !dbg !238, !tbaa !255
  %435 = extractelement <32 x i32> %cse_var_1, i64 12, !dbg !238
  %436 = zext i32 %435 to i64, !dbg !238
  %437 = getelementptr inbounds half, ptr %CBits, i64 %436, !dbg !238
  %438 = load half, ptr %437, align 2, !dbg !238, !tbaa !255
  %439 = extractelement <32 x i32> %cse_var_1, i64 13, !dbg !238
  %440 = zext i32 %439 to i64, !dbg !238
  %441 = getelementptr inbounds half, ptr %CBits, i64 %440, !dbg !238
  %442 = load half, ptr %441, align 2, !dbg !238, !tbaa !255
  %443 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !238
  %444 = zext <2 x i32> %443 to <2 x i64>, !dbg !238
  %445 = extractelement <2 x i64> %444, i64 0, !dbg !238
  %446 = getelementptr inbounds half, ptr %CBits, i64 %445, !dbg !238
  %447 = load half, ptr %446, align 2, !dbg !238, !tbaa !255
  %448 = extractelement <2 x i64> %444, i64 1, !dbg !238
  %449 = getelementptr inbounds half, ptr %CBits, i64 %448, !dbg !238
  %450 = load half, ptr %449, align 2, !dbg !238, !tbaa !255
  %451 = extractelement <32 x i32> %cse_var_1, i64 16, !dbg !238
  %452 = zext i32 %451 to i64, !dbg !238
  %453 = getelementptr inbounds half, ptr %CBits, i64 %452, !dbg !238
  %454 = load half, ptr %453, align 64, !dbg !238, !tbaa !255
  %455 = extractelement <32 x i32> %cse_var_1, i64 17, !dbg !238
  %456 = zext i32 %455 to i64, !dbg !238
  %457 = getelementptr inbounds half, ptr %CBits, i64 %456, !dbg !238
  %458 = load half, ptr %457, align 2, !dbg !238, !tbaa !255
  %459 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !238
  %460 = zext <2 x i32> %459 to <2 x i64>, !dbg !238
  %461 = extractelement <2 x i64> %460, i64 0, !dbg !238
  %462 = getelementptr inbounds half, ptr %CBits, i64 %461, !dbg !238
  %463 = load half, ptr %462, align 2, !dbg !238, !tbaa !255
  %464 = extractelement <2 x i64> %460, i64 1, !dbg !238
  %465 = getelementptr inbounds half, ptr %CBits, i64 %464, !dbg !238
  %466 = load half, ptr %465, align 2, !dbg !238, !tbaa !255
  %467 = extractelement <32 x i32> %cse_var_1, i64 20, !dbg !238
  %468 = zext i32 %467 to i64, !dbg !238
  %469 = getelementptr inbounds half, ptr %CBits, i64 %468, !dbg !238
  %470 = load half, ptr %469, align 2, !dbg !238, !tbaa !255
  %471 = extractelement <32 x i32> %cse_var_1, i64 21, !dbg !238
  %472 = zext i32 %471 to i64, !dbg !238
  %473 = getelementptr inbounds half, ptr %CBits, i64 %472, !dbg !238
  %474 = load half, ptr %473, align 2, !dbg !238, !tbaa !255
  %475 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !238
  %476 = zext <2 x i32> %475 to <2 x i64>, !dbg !238
  %477 = extractelement <2 x i64> %476, i64 0, !dbg !238
  %478 = getelementptr inbounds half, ptr %CBits, i64 %477, !dbg !238
  %479 = load half, ptr %478, align 2, !dbg !238, !tbaa !255
  %480 = extractelement <2 x i64> %476, i64 1, !dbg !238
  %481 = getelementptr inbounds half, ptr %CBits, i64 %480, !dbg !238
  %482 = load half, ptr %481, align 2, !dbg !238, !tbaa !255
  %483 = extractelement <32 x i32> %cse_var_1, i64 24, !dbg !238
  %484 = zext i32 %483 to i64, !dbg !238
  %485 = getelementptr inbounds half, ptr %CBits, i64 %484, !dbg !238
  %486 = load half, ptr %485, align 2, !dbg !238, !tbaa !255
  %487 = extractelement <32 x i32> %cse_var_1, i64 25, !dbg !238
  %488 = zext i32 %487 to i64, !dbg !238
  %489 = getelementptr inbounds half, ptr %CBits, i64 %488, !dbg !238
  %490 = load half, ptr %489, align 2, !dbg !238, !tbaa !255
  %491 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !238
  %492 = zext <2 x i32> %491 to <2 x i64>, !dbg !238
  %493 = extractelement <2 x i64> %492, i64 0, !dbg !238
  %494 = getelementptr inbounds half, ptr %CBits, i64 %493, !dbg !238
  %495 = load half, ptr %494, align 2, !dbg !238, !tbaa !255
  %496 = extractelement <2 x i64> %492, i64 1, !dbg !238
  %497 = getelementptr inbounds half, ptr %CBits, i64 %496, !dbg !238
  %498 = load half, ptr %497, align 2, !dbg !238, !tbaa !255
  %499 = extractelement <32 x i32> %cse_var_1, i64 28, !dbg !238
  %500 = zext i32 %499 to i64, !dbg !238
  %501 = getelementptr inbounds half, ptr %CBits, i64 %500, !dbg !238
  %502 = load half, ptr %501, align 2, !dbg !238, !tbaa !255
  %503 = extractelement <32 x i32> %cse_var_1, i64 29, !dbg !238
  %504 = zext i32 %503 to i64, !dbg !238
  %505 = getelementptr inbounds half, ptr %CBits, i64 %504, !dbg !238
  %506 = load half, ptr %505, align 2, !dbg !238, !tbaa !255
  %507 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !238
  %508 = zext <2 x i32> %507 to <2 x i64>, !dbg !238
  %509 = extractelement <2 x i64> %508, i64 0, !dbg !238
  %510 = getelementptr inbounds half, ptr %CBits, i64 %509, !dbg !238
  %511 = load half, ptr %510, align 2, !dbg !238, !tbaa !255
  %512 = extractelement <2 x i64> %508, i64 1, !dbg !238
  %513 = getelementptr inbounds half, ptr %CBits, i64 %512, !dbg !238
  %514 = load half, ptr %513, align 2, !dbg !238, !tbaa !255
  %515 = insertelement <32 x half> undef, half %390, i64 0, !dbg !238
  %516 = insertelement <32 x half> %515, half %394, i64 1, !dbg !238
  %517 = insertelement <32 x half> %516, half %399, i64 2, !dbg !238
  %518 = insertelement <32 x half> %517, half %402, i64 3, !dbg !238
  %519 = insertelement <32 x half> %518, half %406, i64 4, !dbg !238
  %520 = insertelement <32 x half> %519, half %410, i64 5, !dbg !238
  %521 = insertelement <32 x half> %520, half %415, i64 6, !dbg !238
  %522 = insertelement <32 x half> %521, half %418, i64 7, !dbg !238
  %523 = insertelement <32 x half> %522, half %422, i64 8, !dbg !238
  %524 = insertelement <32 x half> %523, half %426, i64 9, !dbg !238
  %525 = insertelement <32 x half> %524, half %431, i64 10, !dbg !238
  %526 = insertelement <32 x half> %525, half %434, i64 11, !dbg !238
  %527 = insertelement <32 x half> %526, half %438, i64 12, !dbg !238
  %528 = insertelement <32 x half> %527, half %442, i64 13, !dbg !238
  %529 = insertelement <32 x half> %528, half %447, i64 14, !dbg !238
  %530 = insertelement <32 x half> %529, half %450, i64 15, !dbg !238
  %531 = insertelement <32 x half> %530, half %454, i64 16, !dbg !238
  %532 = insertelement <32 x half> %531, half %458, i64 17, !dbg !238
  %533 = insertelement <32 x half> %532, half %463, i64 18, !dbg !238
  %534 = insertelement <32 x half> %533, half %466, i64 19, !dbg !238
  %535 = insertelement <32 x half> %534, half %470, i64 20, !dbg !238
  %536 = insertelement <32 x half> %535, half %474, i64 21, !dbg !238
  %537 = insertelement <32 x half> %536, half %479, i64 22, !dbg !238
  %538 = insertelement <32 x half> %537, half %482, i64 23, !dbg !238
  %539 = insertelement <32 x half> %538, half %486, i64 24, !dbg !238
  %540 = insertelement <32 x half> %539, half %490, i64 25, !dbg !238
  %541 = insertelement <32 x half> %540, half %495, i64 26, !dbg !238
  %542 = insertelement <32 x half> %541, half %498, i64 27, !dbg !238
  %543 = insertelement <32 x half> %542, half %502, i64 28, !dbg !238
  %544 = insertelement <32 x half> %543, half %506, i64 29, !dbg !238
  %545 = insertelement <32 x half> %544, half %511, i64 30, !dbg !238
  %546 = insertelement <32 x half> %545, half %514, i64 31, !dbg !238
  %547 = or <32 x i32> %388, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, !dbg !238
  %548 = extractelement <32 x i32> %547, i64 0, !dbg !238
  %549 = zext i32 %548 to i64, !dbg !238
  %550 = getelementptr inbounds half, ptr %CBits, i64 %549, !dbg !238
  %551 = load half, ptr %550, align 2, !dbg !238, !tbaa !255
  %552 = extractelement <32 x i32> %547, i64 1, !dbg !238
  %553 = zext i32 %552 to i64, !dbg !238
  %554 = getelementptr inbounds half, ptr %CBits, i64 %553, !dbg !238
  %555 = load half, ptr %554, align 2, !dbg !238, !tbaa !255
  %556 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !238
  %557 = zext <2 x i32> %556 to <2 x i64>, !dbg !238
  %558 = extractelement <2 x i64> %557, i64 0, !dbg !238
  %559 = getelementptr inbounds half, ptr %CBits, i64 %558, !dbg !238
  %560 = load half, ptr %559, align 2, !dbg !238, !tbaa !255
  %561 = extractelement <2 x i64> %557, i64 1, !dbg !238
  %562 = getelementptr inbounds half, ptr %CBits, i64 %561, !dbg !238
  %563 = load half, ptr %562, align 2, !dbg !238, !tbaa !255
  %564 = extractelement <32 x i32> %547, i64 4, !dbg !238
  %565 = zext i32 %564 to i64, !dbg !238
  %566 = getelementptr inbounds half, ptr %CBits, i64 %565, !dbg !238
  %567 = load half, ptr %566, align 2, !dbg !238, !tbaa !255
  %568 = extractelement <32 x i32> %547, i64 5, !dbg !238
  %569 = zext i32 %568 to i64, !dbg !238
  %570 = getelementptr inbounds half, ptr %CBits, i64 %569, !dbg !238
  %571 = load half, ptr %570, align 2, !dbg !238, !tbaa !255
  %572 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !238
  %573 = zext <2 x i32> %572 to <2 x i64>, !dbg !238
  %574 = extractelement <2 x i64> %573, i64 0, !dbg !238
  %575 = getelementptr inbounds half, ptr %CBits, i64 %574, !dbg !238
  %576 = load half, ptr %575, align 2, !dbg !238, !tbaa !255
  %577 = extractelement <2 x i64> %573, i64 1, !dbg !238
  %578 = getelementptr inbounds half, ptr %CBits, i64 %577, !dbg !238
  %579 = load half, ptr %578, align 2, !dbg !238, !tbaa !255
  %580 = extractelement <32 x i32> %547, i64 8, !dbg !238
  %581 = zext i32 %580 to i64, !dbg !238
  %582 = getelementptr inbounds half, ptr %CBits, i64 %581, !dbg !238
  %583 = load half, ptr %582, align 2, !dbg !238, !tbaa !255
  %584 = extractelement <32 x i32> %547, i64 9, !dbg !238
  %585 = zext i32 %584 to i64, !dbg !238
  %586 = getelementptr inbounds half, ptr %CBits, i64 %585, !dbg !238
  %587 = load half, ptr %586, align 2, !dbg !238, !tbaa !255
  %588 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !238
  %589 = zext <2 x i32> %588 to <2 x i64>, !dbg !238
  %590 = extractelement <2 x i64> %589, i64 0, !dbg !238
  %591 = getelementptr inbounds half, ptr %CBits, i64 %590, !dbg !238
  %592 = load half, ptr %591, align 2, !dbg !238, !tbaa !255
  %593 = extractelement <2 x i64> %589, i64 1, !dbg !238
  %594 = getelementptr inbounds half, ptr %CBits, i64 %593, !dbg !238
  %595 = load half, ptr %594, align 2, !dbg !238, !tbaa !255
  %596 = extractelement <32 x i32> %547, i64 12, !dbg !238
  %597 = zext i32 %596 to i64, !dbg !238
  %598 = getelementptr inbounds half, ptr %CBits, i64 %597, !dbg !238
  %599 = load half, ptr %598, align 2, !dbg !238, !tbaa !255
  %600 = extractelement <32 x i32> %547, i64 13, !dbg !238
  %601 = zext i32 %600 to i64, !dbg !238
  %602 = getelementptr inbounds half, ptr %CBits, i64 %601, !dbg !238
  %603 = load half, ptr %602, align 2, !dbg !238, !tbaa !255
  %604 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !238
  %605 = zext <2 x i32> %604 to <2 x i64>, !dbg !238
  %606 = extractelement <2 x i64> %605, i64 0, !dbg !238
  %607 = getelementptr inbounds half, ptr %CBits, i64 %606, !dbg !238
  %608 = load half, ptr %607, align 2, !dbg !238, !tbaa !255
  %609 = extractelement <2 x i64> %605, i64 1, !dbg !238
  %610 = getelementptr inbounds half, ptr %CBits, i64 %609, !dbg !238
  %611 = load half, ptr %610, align 2, !dbg !238, !tbaa !255
  %612 = extractelement <32 x i32> %547, i64 16, !dbg !238
  %613 = zext i32 %612 to i64, !dbg !238
  %614 = getelementptr inbounds half, ptr %CBits, i64 %613, !dbg !238
  %615 = load half, ptr %614, align 2, !dbg !238, !tbaa !255
  %616 = extractelement <32 x i32> %547, i64 17, !dbg !238
  %617 = zext i32 %616 to i64, !dbg !238
  %618 = getelementptr inbounds half, ptr %CBits, i64 %617, !dbg !238
  %619 = load half, ptr %618, align 2, !dbg !238, !tbaa !255
  %620 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !238
  %621 = zext <2 x i32> %620 to <2 x i64>, !dbg !238
  %622 = extractelement <2 x i64> %621, i64 0, !dbg !238
  %623 = getelementptr inbounds half, ptr %CBits, i64 %622, !dbg !238
  %624 = load half, ptr %623, align 2, !dbg !238, !tbaa !255
  %625 = extractelement <2 x i64> %621, i64 1, !dbg !238
  %626 = getelementptr inbounds half, ptr %CBits, i64 %625, !dbg !238
  %627 = load half, ptr %626, align 2, !dbg !238, !tbaa !255
  %628 = extractelement <32 x i32> %547, i64 20, !dbg !238
  %629 = zext i32 %628 to i64, !dbg !238
  %630 = getelementptr inbounds half, ptr %CBits, i64 %629, !dbg !238
  %631 = load half, ptr %630, align 2, !dbg !238, !tbaa !255
  %632 = extractelement <32 x i32> %547, i64 21, !dbg !238
  %633 = zext i32 %632 to i64, !dbg !238
  %634 = getelementptr inbounds half, ptr %CBits, i64 %633, !dbg !238
  %635 = load half, ptr %634, align 2, !dbg !238, !tbaa !255
  %636 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !238
  %637 = zext <2 x i32> %636 to <2 x i64>, !dbg !238
  %638 = extractelement <2 x i64> %637, i64 0, !dbg !238
  %639 = getelementptr inbounds half, ptr %CBits, i64 %638, !dbg !238
  %640 = load half, ptr %639, align 2, !dbg !238, !tbaa !255
  %641 = extractelement <2 x i64> %637, i64 1, !dbg !238
  %642 = getelementptr inbounds half, ptr %CBits, i64 %641, !dbg !238
  %643 = load half, ptr %642, align 2, !dbg !238, !tbaa !255
  %644 = extractelement <32 x i32> %547, i64 24, !dbg !238
  %645 = zext i32 %644 to i64, !dbg !238
  %646 = getelementptr inbounds half, ptr %CBits, i64 %645, !dbg !238
  %647 = load half, ptr %646, align 2, !dbg !238, !tbaa !255
  %648 = extractelement <32 x i32> %547, i64 25, !dbg !238
  %649 = zext i32 %648 to i64, !dbg !238
  %650 = getelementptr inbounds half, ptr %CBits, i64 %649, !dbg !238
  %651 = load half, ptr %650, align 2, !dbg !238, !tbaa !255
  %652 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !238
  %653 = zext <2 x i32> %652 to <2 x i64>, !dbg !238
  %654 = extractelement <2 x i64> %653, i64 0, !dbg !238
  %655 = getelementptr inbounds half, ptr %CBits, i64 %654, !dbg !238
  %656 = load half, ptr %655, align 2, !dbg !238, !tbaa !255
  %657 = extractelement <2 x i64> %653, i64 1, !dbg !238
  %658 = getelementptr inbounds half, ptr %CBits, i64 %657, !dbg !238
  %659 = load half, ptr %658, align 2, !dbg !238, !tbaa !255
  %660 = extractelement <32 x i32> %547, i64 28, !dbg !238
  %661 = zext i32 %660 to i64, !dbg !238
  %662 = getelementptr inbounds half, ptr %CBits, i64 %661, !dbg !238
  %663 = load half, ptr %662, align 2, !dbg !238, !tbaa !255
  %664 = extractelement <32 x i32> %547, i64 29, !dbg !238
  %665 = zext i32 %664 to i64, !dbg !238
  %666 = getelementptr inbounds half, ptr %CBits, i64 %665, !dbg !238
  %667 = load half, ptr %666, align 2, !dbg !238, !tbaa !255
  %668 = shufflevector <32 x i32> %547, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !238
  %669 = zext <2 x i32> %668 to <2 x i64>, !dbg !238
  %670 = extractelement <2 x i64> %669, i64 0, !dbg !238
  %671 = getelementptr inbounds half, ptr %CBits, i64 %670, !dbg !238
  %672 = load half, ptr %671, align 2, !dbg !238, !tbaa !255
  %673 = extractelement <2 x i64> %669, i64 1, !dbg !238
  %674 = getelementptr inbounds half, ptr %CBits, i64 %673, !dbg !238
  %675 = load half, ptr %674, align 2, !dbg !238, !tbaa !255
  %676 = insertelement <32 x half> undef, half %551, i64 0, !dbg !238
  %677 = insertelement <32 x half> %676, half %555, i64 1, !dbg !238
  %678 = insertelement <32 x half> %677, half %560, i64 2, !dbg !238
  %679 = insertelement <32 x half> %678, half %563, i64 3, !dbg !238
  %680 = insertelement <32 x half> %679, half %567, i64 4, !dbg !238
  %681 = insertelement <32 x half> %680, half %571, i64 5, !dbg !238
  %682 = insertelement <32 x half> %681, half %576, i64 6, !dbg !238
  %683 = insertelement <32 x half> %682, half %579, i64 7, !dbg !238
  %684 = insertelement <32 x half> %683, half %583, i64 8, !dbg !238
  %685 = insertelement <32 x half> %684, half %587, i64 9, !dbg !238
  %686 = insertelement <32 x half> %685, half %592, i64 10, !dbg !238
  %687 = insertelement <32 x half> %686, half %595, i64 11, !dbg !238
  %688 = insertelement <32 x half> %687, half %599, i64 12, !dbg !238
  %689 = insertelement <32 x half> %688, half %603, i64 13, !dbg !238
  %690 = insertelement <32 x half> %689, half %608, i64 14, !dbg !238
  %691 = insertelement <32 x half> %690, half %611, i64 15, !dbg !238
  %692 = insertelement <32 x half> %691, half %615, i64 16, !dbg !238
  %693 = insertelement <32 x half> %692, half %619, i64 17, !dbg !238
  %694 = insertelement <32 x half> %693, half %624, i64 18, !dbg !238
  %695 = insertelement <32 x half> %694, half %627, i64 19, !dbg !238
  %696 = insertelement <32 x half> %695, half %631, i64 20, !dbg !238
  %697 = insertelement <32 x half> %696, half %635, i64 21, !dbg !238
  %698 = insertelement <32 x half> %697, half %640, i64 22, !dbg !238
  %699 = insertelement <32 x half> %698, half %643, i64 23, !dbg !238
  %700 = insertelement <32 x half> %699, half %647, i64 24, !dbg !238
  %701 = insertelement <32 x half> %700, half %651, i64 25, !dbg !238
  %702 = insertelement <32 x half> %701, half %656, i64 26, !dbg !238
  %703 = insertelement <32 x half> %702, half %659, i64 27, !dbg !238
  %704 = insertelement <32 x half> %703, half %663, i64 28, !dbg !238
  %705 = insertelement <32 x half> %704, half %667, i64 29, !dbg !238
  %706 = insertelement <32 x half> %705, half %672, i64 30, !dbg !238
  %707 = insertelement <32 x half> %706, half %675, i64 31, !dbg !238
  %708 = tail call <32 x half> @llvm.fmuladd.v32f16(<32 x half> %546, <32 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <32 x half> %707), !dbg !238
  %709 = getelementptr inbounds <32 x half>, ptr %C.global4, i64 %indvars.iv12, !dbg !238
  store <32 x half> %708, ptr %709, align 64, !dbg !238, !tbaa !257
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1, !dbg !238
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next13, metadata !252, metadata !DIExpression()), !dbg !238
  %exitcond15.not = icmp eq i64 %indvars.iv.next13, 8, !dbg !238
  br i1 %exitcond15.not, label %for_begin_m.inner.outer.preheader, label %for_body_m.c.outer, !dbg !238, !prof !29
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

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #7

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { noinline "target-cpu"="apple-m2" }
attributes #4 = { "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #5 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #6 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!11 = distinct !DISubprogram(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x600001594c30.w4.b0", !32, i64 0}
!32 = !{!"0x600001594c30.w8.b0", !33, i64 0}
!33 = !{!"0x600001594c30.w16.b0", !34, i64 0}
!34 = !{!"0x600001594c30.w32.b0", !35, i64 0}
!35 = !{!"0x600001594c30.w64.b0", !36, i64 0}
!36 = !{!"0x600001594c30.w128.b0", !37, i64 0}
!37 = !{!"0x600001594c30.w256.b0", !38, i64 0}
!38 = !{!"0x600001594c30.w512.b0", !39, i64 0}
!39 = !{!"0x600001594c30.w1024.b0", !40, i64 0}
!40 = !{!"0x600001594c30", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x600001594c30.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x600001594c30.w4.b8", !47, i64 0}
!47 = !{!"0x600001594c30.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x600001594c30.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x600001594c30.w4.b16", !54, i64 0}
!54 = !{!"0x600001594c30.w8.b16", !55, i64 0}
!55 = !{!"0x600001594c30.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x600001594c30.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600001582400.w8.b0", !95, i64 0}
!95 = !{!"0x600001582400.w16.b0", !96, i64 0}
!96 = !{!"0x600001582400.w32.b0", !97, i64 0}
!97 = !{!"0x600001582400.w64.b0", !98, i64 0}
!98 = !{!"0x600001582400.w128.b0", !99, i64 0}
!99 = !{!"0x600001582400.w256.b0", !100, i64 0}
!100 = !{!"0x600001582400.w512.b0", !101, i64 0}
!101 = !{!"0x600001582400.w1024.b0", !102, i64 0}
!102 = !{!"0x600001582400", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600001582400.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600001582400.w8.b16", !107, i64 0}
!107 = !{!"0x600001582400.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600001624d20.w8.b16", !110, i64 0}
!110 = !{!"0x600001624d20.w16.b16", !111, i64 0}
!111 = !{!"0x600001624d20.w32.b0", !112, i64 0}
!112 = !{!"0x600001624d20.w64.b0", !113, i64 0}
!113 = !{!"0x600001624d20.w128.b0", !114, i64 0}
!114 = !{!"0x600001624d20.w256.b0", !115, i64 0}
!115 = !{!"0x600001624d20.w512.b0", !116, i64 0}
!116 = !{!"0x600001624d20.w1024.b0", !117, i64 0}
!117 = !{!"0x600001624d20", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600001624d20.w8.b8", !120, i64 0}
!120 = !{!"0x600001624d20.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600001624d20.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x600001627c60.w8.b0", !125, i64 0}
!125 = !{!"0x600001627c60.w16.b0", !126, i64 0}
!126 = !{!"0x600001627c60.w32.b0", !127, i64 0}
!127 = !{!"0x600001627c60.w64.b0", !128, i64 0}
!128 = !{!"0x600001627c60.w128.b0", !129, i64 0}
!129 = !{!"0x600001627c60.w256.b0", !130, i64 0}
!130 = !{!"0x600001627c60.w512.b0", !131, i64 0}
!131 = !{!"0x600001627c60.w1024.b0", !132, i64 0}
!132 = !{!"0x600001627c60", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600001627c60.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x600001627c60.w8.b16", !137, i64 0}
!137 = !{!"0x600001627c60.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x60000159df20.w8.b16", !140, i64 0}
!140 = !{!"0x60000159df20.w16.b16", !141, i64 0}
!141 = !{!"0x60000159df20.w32.b0", !142, i64 0}
!142 = !{!"0x60000159df20.w64.b0", !143, i64 0}
!143 = !{!"0x60000159df20.w128.b0", !144, i64 0}
!144 = !{!"0x60000159df20.w256.b0", !145, i64 0}
!145 = !{!"0x60000159df20.w512.b0", !146, i64 0}
!146 = !{!"0x60000159df20.w1024.b0", !147, i64 0}
!147 = !{!"0x60000159df20", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x60000159df20.w8.b8", !150, i64 0}
!150 = !{!"0x60000159df20.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x60000159c930.w8.b0", !153, i64 0}
!153 = !{!"0x60000159c930.w16.b0", !154, i64 0}
!154 = !{!"0x60000159c930.w32.b0", !155, i64 0}
!155 = !{!"0x60000159c930.w64.b0", !156, i64 0}
!156 = !{!"0x60000159c930.w128.b0", !157, i64 0}
!157 = !{!"0x60000159c930.w256.b0", !158, i64 0}
!158 = !{!"0x60000159c930.w512.b0", !159, i64 0}
!159 = !{!"0x60000159c930.w1024.b0", !160, i64 0}
!160 = !{!"0x60000159c930", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x6000015991a0.w8.b0", !163, i64 0}
!163 = !{!"0x6000015991a0.w16.b0", !164, i64 0}
!164 = !{!"0x6000015991a0.w32.b0", !165, i64 0}
!165 = !{!"0x6000015991a0.w64.b0", !166, i64 0}
!166 = !{!"0x6000015991a0.w128.b0", !167, i64 0}
!167 = !{!"0x6000015991a0.w256.b0", !168, i64 0}
!168 = !{!"0x6000015991a0.w512.b0", !169, i64 0}
!169 = !{!"0x6000015991a0.w1024.b0", !170, i64 0}
!170 = !{!"0x6000015991a0", !28, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x6000015991a0.w8.b8", !163, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x600001599aa0.w8.b8", !175, i64 0}
!175 = !{!"0x600001599aa0.w16.b0", !176, i64 0}
!176 = !{!"0x600001599aa0.w32.b0", !177, i64 0}
!177 = !{!"0x600001599aa0.w64.b0", !178, i64 0}
!178 = !{!"0x600001599aa0.w128.b0", !179, i64 0}
!179 = !{!"0x600001599aa0.w256.b0", !180, i64 0}
!180 = !{!"0x600001599aa0.w512.b0", !181, i64 0}
!181 = !{!"0x600001599aa0.w1024.b0", !182, i64 0}
!182 = !{!"0x600001599aa0", !28, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x60000159a610.w8.b0", !185, i64 0}
!185 = !{!"0x60000159a610.w16.b0", !186, i64 0}
!186 = !{!"0x60000159a610.w32.b0", !187, i64 0}
!187 = !{!"0x60000159a610.w64.b0", !188, i64 0}
!188 = !{!"0x60000159a610.w128.b0", !189, i64 0}
!189 = !{!"0x60000159a610.w256.b0", !190, i64 0}
!190 = !{!"0x60000159a610.w512.b0", !191, i64 0}
!191 = !{!"0x60000159a610.w1024.b0", !192, i64 0}
!192 = !{!"0x60000159a610", !28, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x60000159a610.w8.b8", !185, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x60000159af10.w8.b8", !197, i64 0}
!197 = !{!"0x60000159af10.w16.b0", !198, i64 0}
!198 = !{!"0x60000159af10.w32.b0", !199, i64 0}
!199 = !{!"0x60000159af10.w64.b0", !200, i64 0}
!200 = !{!"0x60000159af10.w128.b0", !201, i64 0}
!201 = !{!"0x60000159af10.w256.b0", !202, i64 0}
!202 = !{!"0x60000159af10.w512.b0", !203, i64 0}
!203 = !{!"0x60000159af10.w1024.b0", !204, i64 0}
!204 = !{!"0x60000159af10", !28, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x60000159bab0.w8.b0", !207, i64 0}
!207 = !{!"0x60000159bab0.w16.b0", !208, i64 0}
!208 = !{!"0x60000159bab0.w32.b0", !209, i64 0}
!209 = !{!"0x60000159bab0.w64.b0", !210, i64 0}
!210 = !{!"0x60000159bab0.w128.b0", !211, i64 0}
!211 = !{!"0x60000159bab0.w256.b0", !212, i64 0}
!212 = !{!"0x60000159bab0.w512.b0", !213, i64 0}
!213 = !{!"0x60000159bab0.w1024.b0", !214, i64 0}
!214 = !{!"0x60000159bab0", !28, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x60000159bab0.w8.b8", !207, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"0x6000015a4180.w8.b8", !219, i64 0}
!219 = !{!"0x6000015a4180.w16.b0", !220, i64 0}
!220 = !{!"0x6000015a4180.w32.b0", !221, i64 0}
!221 = !{!"0x6000015a4180.w64.b0", !222, i64 0}
!222 = !{!"0x6000015a4180.w128.b0", !223, i64 0}
!223 = !{!"0x6000015a4180.w256.b0", !224, i64 0}
!224 = !{!"0x6000015a4180.w512.b0", !225, i64 0}
!225 = !{!"0x6000015a4180.w1024.b0", !226, i64 0}
!226 = !{!"0x6000015a4180", !28, i64 0}
!227 = distinct !DISubprogram(name: "qgemm_lut_t8_int8_m8192_k11008_n1_b2_compute_", scope: !1, file: !1, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(types: !229)
!229 = !{!14, !14, !77, !72, !82, !82, !82, !82}
!230 = !{!231, !232, !233, !234, !235, !236, !237}
!231 = !DILocalVariable(name: "dev_id", arg: 1, scope: !227, file: !1, type: !14)
!232 = !DILocalVariable(name: "LUT", arg: 2, scope: !227, file: !1, type: !77)
!233 = !DILocalVariable(name: "A", arg: 3, scope: !227, file: !1, type: !72)
!234 = !DILocalVariable(name: "Scales", arg: 4, scope: !227, file: !1, type: !82)
!235 = !DILocalVariable(name: "LUT_Scales", arg: 5, scope: !227, file: !1, type: !82)
!236 = !DILocalVariable(name: "LUT_Biases", arg: 6, scope: !227, file: !1, type: !82)
!237 = !DILocalVariable(name: "C", arg: 7, scope: !227, file: !1, type: !82)
!238 = !DILocation(line: 0, scope: !227)
!239 = !DILocalVariable(name: "m.outer", scope: !227, file: !1, type: !14)
!240 = !DILocalVariable(name: "CBits", scope: !227, file: !1, type: !82)
!241 = !DILocalVariable(name: "C.global", scope: !227, file: !1, type: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243)
!243 = !DIBasicType(name: "float16x32", size: 512, encoding: DW_ATE_float)
!244 = !DILocalVariable(name: "k.outer", scope: !227, file: !1, type: !14)
!245 = !{!246, !246, i64 0}
!246 = !{!"__fp16", !247, i64 0}
!247 = !{!"omnipotent char", !248, i64 0}
!248 = !{!"Simple C++ TBAA"}
!249 = distinct !{!249, !250}
!250 = !{!"llvm.loop.mustprogress"}
!251 = !DILocalVariable(name: "m.inner.outer", scope: !227, file: !1, type: !14)
!252 = !DILocalVariable(name: "m.c.outer", scope: !227, file: !1, type: !14)
!253 = !DILocalVariable(name: "cse_var_1", scope: !227, file: !1, type: !254)
!254 = !DIBasicType(name: "int32x32", size: 1024, encoding: DW_ATE_signed)
!255 = !{!256, !256, i64 0}
!256 = !{!"0x600001594810", !28, i64 0}
!257 = !{!258, !258, i64 0}
!258 = !{!"0x600001627750", !28, i64 0}
