; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [87 x i8] c"Assert fail: num_args == 6, qgemm_lut_t1_int8_m1024_k11008_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [105 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t1_int8_m1024_k11008_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [107 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t1_int8_m1024_k11008_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [138 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t1_int8_m1024_k11008_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [146 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t1_int8_m1024_k11008_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [158 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t1_int8_m1024_k11008_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [174 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t1_int8_m1024_k11008_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [174 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t1_int8_m1024_k11008_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [138 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t1_int8_m1024_k11008_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [119 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m1024_k11008_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [121 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [123 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [125 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [129 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [131 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [137 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [139 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [119 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m1024_k11008_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [121 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [240 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_shape[0]) == 2, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape[0] has an unsatisfied constraint: 2 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_shape[1]) == 2752, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape[1] has an unsatisfied constraint: 2752 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_shape[2]) == 256, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape[2] has an unsatisfied constraint: 256 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [322 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_strides[2]) and 256 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_strides[1]) and 704512 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_A_strides[0]), qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [114 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m1024_k11008_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [247 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [248 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [254 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_shape[1]) == 2752, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape[1] has an unsatisfied constraint: 2752 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [250 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [246 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_strides[1]), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [213 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [193 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [199 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [118 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [263 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [257 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [222 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [202 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [208 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [124 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Scales_shape[1]) == 172, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 172 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [279 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [269 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [273 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Biases_shape[1]) == 172, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 172 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [181 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [234 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [214 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [220 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [132 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [243 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_C_shape[0])\00", align 1
@.str.63 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_C_shape[1]) == 512, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape[1] has an unsatisfied constraint: 512 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_C_shape[1])\00", align 1
@.str.64 = private constant [163 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m1024_k11008_n1_b2_C_strides[1]), qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [207 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [187 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [193 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [114 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m1024_k11008_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global ptr null, align 8
@__tvm_main__ = weak dllexport local_unnamed_addr constant [37 x i8] c"qgemm_lut_t1_int8_m1024_k11008_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t1_int8_m1024_k11008_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %74 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 2, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 2752, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 256, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 256, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  %97 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
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
  %123 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %124 = and i64 %123, 4294967295, !dbg !24
  %125 = icmp eq i64 %124, 1, !dbg !24
  br i1 %125, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %126(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %127 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape, i64 1, !dbg !24
  %128 = load i64, ptr %127, align 8, !dbg !24, !tbaa !133
  %129 = and i64 %128, 4294967295, !dbg !24
  %130 = icmp eq i64 %129, 2752, !dbg !24
  br i1 %130, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %131(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %132 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape, i64 2, !dbg !24
  %133 = load i64, ptr %132, align 8, !dbg !24, !tbaa !135
  %134 = and i64 %133, 4294967295, !dbg !24
  %135 = icmp eq i64 %134, 16, !dbg !24
  br i1 %135, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides, i64 2, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !138
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 1, !dbg !24
  %141 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides, i64 1, !dbg !24
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
  %172 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
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
  %201 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !161
  %202 = and i64 %201, 4294967295, !dbg !24
  %203 = icmp eq i64 %202, 1, !dbg !24
  br i1 %203, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %205 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %206 = load i64, ptr %205, align 8, !dbg !24, !tbaa !171
  %207 = and i64 %206, 4294967295, !dbg !24
  %208 = icmp eq i64 %207, 172, !dbg !24
  br i1 %208, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %209 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %209(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %210 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
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
  %240 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !183
  %241 = and i64 %240, 4294967295, !dbg !24
  %242 = icmp eq i64 %241, 1, !dbg !24
  br i1 %242, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %243 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %243(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %244 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %245 = load i64, ptr %244, align 8, !dbg !24, !tbaa !193
  %246 = and i64 %245, 4294967295, !dbg !24
  %247 = icmp eq i64 %246, 172, !dbg !24
  br i1 %247, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %248 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %248(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %249 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
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
  %279 = load i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape, align 8, !dbg !24, !tbaa !205
  %280 = and i64 %279, 4294967295, !dbg !24
  %281 = icmp eq i64 %280, 1, !dbg !24
  br i1 %281, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %282 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %282(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %283 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape, i64 1, !dbg !24
  %284 = load i64, ptr %283, align 8, !dbg !24, !tbaa !215
  %285 = and i64 %284, 4294967295, !dbg !24
  %286 = icmp eq i64 %285, 512, !dbg !24
  br i1 %286, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %287 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %287(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %288 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides, i64 1, !dbg !24
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
  %306 = tail call fastcc i32 @qgemm_lut_t1_int8_m1024_k11008_n1_b2_compute_(i32 %dev_id, ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24, !range !227
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: noinline
define internal fastcc i32 @qgemm_lut_t1_int8_m1024_k11008_n1_b2_compute_(i32 %dev_id, ptr noalias nocapture readonly align 64 %LUT, ptr noalias nocapture readonly align 64 %A, ptr noalias nocapture readonly align 64 %Scales, ptr noalias nocapture readonly align 64 %LUT_Scales, ptr noalias nocapture readonly align 64 %LUT_Biases, ptr noalias nocapture writeonly align 64 %C) unnamed_addr #3 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata i32 %dev_id, metadata !232, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !233, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %A, metadata !234, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !235, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !236, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !237, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.value(metadata ptr %C, metadata !238, metadata !DIExpression()), !dbg !239
  %C.global4 = alloca [8 x <32 x half>], align 64, !dbg !239
  %0 = load ptr, ptr @__TVMBackendAllocWorkspace, align 8, !dbg !239, !tbaa !26
  %CBits = tail call ptr %0(i32 1, i32 %dev_id, i64 1024, i32 2, i32 16), !dbg !239
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !240, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata ptr %CBits, metadata !240, metadata !DIExpression()), !dbg !239
  call void @llvm.assume(i1 true) [ "align"(ptr %CBits, i64 64) ], !dbg !239
  %1 = icmp eq ptr %CBits, null, !dbg !239
  br i1 %1, label %common.ret, label %for_begin_m.outer.preheader, !dbg !239, !prof !25

for_begin_m.outer.preheader:                      ; preds = %entry
  %2 = load half, ptr %Scales, align 64, !tbaa !241
  %3 = insertelement <8 x half> poison, half %2, i64 0
  %4 = shufflevector <8 x half> %3, <8 x half> poison, <8 x i32> zeroinitializer
  call void @llvm.dbg.declare(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !239
  br label %for_body_m.outer, !dbg !239

common.ret:                                       ; preds = %for_end_m.outer, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ %., %for_end_m.outer ]
  ret i32 %common.ret.op, !dbg !239

for_body_m.outer:                                 ; preds = %for_begin_m.outer.preheader, %for_begin_m.inner.outer.preheader
  %5 = phi i1 [ true, %for_begin_m.outer.preheader ], [ false, %for_begin_m.inner.outer.preheader ]
  %indvar = phi i64 [ 0, %for_begin_m.outer.preheader ], [ 1, %for_begin_m.inner.outer.preheader ]
  call void @llvm.dbg.declare(metadata i64 %indvar, metadata !245, metadata !DIExpression()), !dbg !239
  %6 = shl nuw nsw i64 %indvar, 9, !dbg !239
  %scevgep = getelementptr i8, ptr %C, i64 %6, !dbg !239
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(1024) %CBits, i8 0, i64 1024, i1 false), !dbg !239
  %7 = mul nuw nsw i64 %indvar, 704512
  call void @llvm.dbg.declare(metadata i32 0, metadata !246, metadata !DIExpression()), !dbg !239
  br label %for_body_k.outer, !dbg !239

for_end_m.outer:                                  ; preds = %for_begin_m.inner.outer.preheader
  %8 = load ptr, ptr @__TVMBackendFreeWorkspace, align 8, !dbg !239, !tbaa !26
  %9 = tail call i32 %8(i32 1, i32 %dev_id, ptr nonnull %CBits), !dbg !239
  %.not = icmp ne i32 %9, 0, !dbg !239
  %. = sext i1 %.not to i32
  br label %common.ret

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !246, metadata !DIExpression()), !dbg !239
  %10 = shl nuw nsw i64 %indvars.iv, 8, !dbg !239
  %11 = getelementptr inbounds i8, ptr %LUT, i64 %10, !dbg !239
  %12 = shl nuw nsw i64 %indvars.iv, 12, !dbg !239
  %13 = add nuw nsw i64 %12, %7, !dbg !239
  %14 = getelementptr inbounds i8, ptr %A, i64 %13, !dbg !239
  %15 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !239
  %16 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !239
  %17 = load <16 x i8>, ptr %11, align 64, !dbg !239
  %18 = getelementptr inbounds i8, ptr %11, i64 16, !dbg !239
  %19 = load <16 x i8>, ptr %18, align 16, !dbg !239
  %20 = getelementptr inbounds i8, ptr %11, i64 32, !dbg !239
  %21 = load <16 x i8>, ptr %20, align 32, !dbg !239
  %22 = getelementptr inbounds i8, ptr %11, i64 48, !dbg !239
  %23 = load <16 x i8>, ptr %22, align 16, !dbg !239
  %24 = getelementptr inbounds i8, ptr %11, i64 64, !dbg !239
  %25 = load <16 x i8>, ptr %24, align 64, !dbg !239
  %26 = getelementptr inbounds i8, ptr %11, i64 80, !dbg !239
  %27 = load <16 x i8>, ptr %26, align 16, !dbg !239
  %28 = getelementptr inbounds i8, ptr %11, i64 96, !dbg !239
  %29 = load <16 x i8>, ptr %28, align 32, !dbg !239
  %30 = getelementptr inbounds i8, ptr %11, i64 112, !dbg !239
  %31 = load <16 x i8>, ptr %30, align 16, !dbg !239
  %32 = getelementptr inbounds i8, ptr %11, i64 128, !dbg !239
  %33 = load <16 x i8>, ptr %32, align 64, !dbg !239
  %34 = getelementptr inbounds i8, ptr %11, i64 144, !dbg !239
  %35 = load <16 x i8>, ptr %34, align 16, !dbg !239
  %36 = getelementptr inbounds i8, ptr %11, i64 160, !dbg !239
  %37 = load <16 x i8>, ptr %36, align 32, !dbg !239
  %38 = getelementptr inbounds i8, ptr %11, i64 176, !dbg !239
  %39 = load <16 x i8>, ptr %38, align 16, !dbg !239
  %40 = getelementptr inbounds i8, ptr %11, i64 192, !dbg !239
  %41 = load <16 x i8>, ptr %40, align 64, !dbg !239
  %42 = getelementptr inbounds i8, ptr %11, i64 208, !dbg !239
  %43 = load <16 x i8>, ptr %42, align 16, !dbg !239
  %44 = getelementptr inbounds i8, ptr %11, i64 224, !dbg !239
  %45 = load <16 x i8>, ptr %44, align 32, !dbg !239
  %46 = getelementptr inbounds i8, ptr %11, i64 240, !dbg !239
  %47 = load <16 x i8>, ptr %46, align 16, !dbg !239
  %48 = load half, ptr %15, align 2, !tbaa !241
  %49 = load half, ptr %16, align 2, !tbaa !241
  %50 = insertelement <8 x half> poison, half %48, i64 0
  %51 = insertelement <8 x half> poison, half %49, i64 0
  %52 = shufflevector <8 x half> %50, <8 x half> poison, <8 x i32> zeroinitializer
  %53 = shufflevector <8 x half> %51, <8 x half> poison, <8 x i32> zeroinitializer
  br label %54, !dbg !239

54:                                               ; preds = %54, %for_body_k.outer
  %55 = phi i64 [ 0, %for_body_k.outer ], [ %362, %54 ], !dbg !239
  %56 = shl nuw nsw i64 %55, 4, !dbg !239
  %57 = getelementptr inbounds i8, ptr %14, i64 %56, !dbg !239
  %58 = load <16 x i8>, ptr %57, align 64, !dbg !239
  %59 = lshr <16 x i8> %58, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %60 = and <16 x i8> %58, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %61 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %17, <16 x i8> %60), !dbg !239
  %62 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %17, <16 x i8> %59), !dbg !239
  %63 = getelementptr inbounds i8, ptr %57, i64 16, !dbg !239
  %64 = load <16 x i8>, ptr %63, align 16, !dbg !239
  %65 = lshr <16 x i8> %64, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %66 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %19, <16 x i8> %65), !dbg !239
  %67 = and <16 x i8> %64, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %68 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %19, <16 x i8> %67), !dbg !239
  %69 = shufflevector <16 x i8> %61, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %70 = shufflevector <16 x i8> %68, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %71 = sext <8 x i8> %69 to <8 x i16>, !dbg !239
  %72 = sext <8 x i8> %70 to <8 x i16>, !dbg !239
  %73 = shufflevector <16 x i8> %61, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %74 = sext <8 x i8> %73 to <8 x i16>, !dbg !239
  %75 = shufflevector <16 x i8> %68, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %76 = sext <8 x i8> %75 to <8 x i16>, !dbg !239
  %77 = add nsw <8 x i16> %72, %71, !dbg !239
  %78 = add nsw <8 x i16> %76, %74, !dbg !239
  %79 = shufflevector <16 x i8> %62, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %80 = shufflevector <16 x i8> %66, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %81 = sext <8 x i8> %79 to <8 x i16>, !dbg !239
  %82 = sext <8 x i8> %80 to <8 x i16>, !dbg !239
  %83 = shufflevector <16 x i8> %62, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %84 = sext <8 x i8> %83 to <8 x i16>, !dbg !239
  %85 = shufflevector <16 x i8> %66, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %86 = sext <8 x i8> %85 to <8 x i16>, !dbg !239
  %87 = getelementptr inbounds i8, ptr %57, i64 32, !dbg !239
  %88 = load <16 x i8>, ptr %87, align 32, !dbg !239
  %89 = lshr <16 x i8> %88, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %90 = and <16 x i8> %88, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %91 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %21, <16 x i8> %90), !dbg !239
  %92 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %21, <16 x i8> %89), !dbg !239
  %93 = getelementptr inbounds i8, ptr %57, i64 48, !dbg !239
  %94 = load <16 x i8>, ptr %93, align 16, !dbg !239
  %95 = and <16 x i8> %94, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %96 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %23, <16 x i8> %95), !dbg !239
  %97 = shufflevector <16 x i8> %91, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %98 = shufflevector <16 x i8> %96, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %99 = sext <8 x i8> %97 to <8 x i16>, !dbg !239
  %100 = sext <8 x i8> %98 to <8 x i16>, !dbg !239
  %101 = shufflevector <16 x i8> %91, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %102 = sext <8 x i8> %101 to <8 x i16>, !dbg !239
  %103 = shufflevector <16 x i8> %96, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %104 = sext <8 x i8> %103 to <8 x i16>, !dbg !239
  %105 = add nsw <8 x i16> %77, %99, !dbg !239
  %106 = add nsw <8 x i16> %105, %100, !dbg !239
  %107 = add nsw <8 x i16> %78, %102, !dbg !239
  %108 = add nsw <8 x i16> %107, %104, !dbg !239
  %109 = lshr <16 x i8> %94, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %110 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %23, <16 x i8> %109), !dbg !239
  %111 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %112 = sext <8 x i8> %111 to <8 x i16>, !dbg !239
  %113 = shufflevector <16 x i8> %92, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %114 = sext <8 x i8> %113 to <8 x i16>, !dbg !239
  %115 = shufflevector <16 x i8> %110, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %116 = sext <8 x i8> %115 to <8 x i16>, !dbg !239
  %117 = shufflevector <16 x i8> %92, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %118 = sext <8 x i8> %117 to <8 x i16>, !dbg !239
  %119 = getelementptr inbounds i8, ptr %57, i64 64, !dbg !239
  %120 = load <16 x i8>, ptr %119, align 64, !dbg !239
  %121 = lshr <16 x i8> %120, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %122 = and <16 x i8> %120, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %123 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %25, <16 x i8> %122), !dbg !239
  %124 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %25, <16 x i8> %121), !dbg !239
  %125 = getelementptr inbounds i8, ptr %57, i64 80, !dbg !239
  %126 = load <16 x i8>, ptr %125, align 16, !dbg !239
  %127 = and <16 x i8> %126, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %128 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %27, <16 x i8> %127), !dbg !239
  %129 = shufflevector <16 x i8> %123, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %130 = shufflevector <16 x i8> %128, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %131 = sext <8 x i8> %129 to <8 x i16>, !dbg !239
  %132 = sext <8 x i8> %130 to <8 x i16>, !dbg !239
  %133 = shufflevector <16 x i8> %123, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %134 = sext <8 x i8> %133 to <8 x i16>, !dbg !239
  %135 = shufflevector <16 x i8> %128, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %136 = sext <8 x i8> %135 to <8 x i16>, !dbg !239
  %137 = add nsw <8 x i16> %106, %131, !dbg !239
  %138 = add nsw <8 x i16> %137, %132, !dbg !239
  %139 = add nsw <8 x i16> %108, %134, !dbg !239
  %140 = add nsw <8 x i16> %139, %136, !dbg !239
  %141 = lshr <16 x i8> %126, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %142 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %27, <16 x i8> %141), !dbg !239
  %143 = shufflevector <16 x i8> %142, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %144 = sext <8 x i8> %143 to <8 x i16>, !dbg !239
  %145 = shufflevector <16 x i8> %124, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %146 = sext <8 x i8> %145 to <8 x i16>, !dbg !239
  %147 = shufflevector <16 x i8> %142, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %148 = sext <8 x i8> %147 to <8 x i16>, !dbg !239
  %149 = shufflevector <16 x i8> %124, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %150 = sext <8 x i8> %149 to <8 x i16>, !dbg !239
  %151 = getelementptr inbounds i8, ptr %57, i64 96, !dbg !239
  %152 = load <16 x i8>, ptr %151, align 32, !dbg !239
  %153 = lshr <16 x i8> %152, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %154 = and <16 x i8> %152, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %155 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %29, <16 x i8> %154), !dbg !239
  %156 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %29, <16 x i8> %153), !dbg !239
  %157 = getelementptr inbounds i8, ptr %57, i64 112, !dbg !239
  %158 = load <16 x i8>, ptr %157, align 16, !dbg !239
  %159 = and <16 x i8> %158, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %160 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %31, <16 x i8> %159), !dbg !239
  %161 = shufflevector <16 x i8> %155, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %162 = shufflevector <16 x i8> %160, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %163 = sext <8 x i8> %161 to <8 x i16>, !dbg !239
  %164 = sext <8 x i8> %162 to <8 x i16>, !dbg !239
  %165 = shufflevector <16 x i8> %155, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %166 = sext <8 x i8> %165 to <8 x i16>, !dbg !239
  %167 = shufflevector <16 x i8> %160, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %168 = sext <8 x i8> %167 to <8 x i16>, !dbg !239
  %169 = add nsw <8 x i16> %138, %163, !dbg !239
  %170 = add <8 x i16> %169, %164, !dbg !239
  %171 = add nsw <8 x i16> %140, %166, !dbg !239
  %172 = add <8 x i16> %171, %168, !dbg !239
  %173 = lshr <16 x i8> %158, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %174 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %31, <16 x i8> %173), !dbg !239
  %175 = shufflevector <16 x i8> %174, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %176 = sext <8 x i8> %175 to <8 x i16>, !dbg !239
  %177 = shufflevector <16 x i8> %156, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %178 = sext <8 x i8> %177 to <8 x i16>, !dbg !239
  %179 = shufflevector <16 x i8> %174, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %180 = sext <8 x i8> %179 to <8 x i16>, !dbg !239
  %181 = shufflevector <16 x i8> %156, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %182 = sext <8 x i8> %181 to <8 x i16>, !dbg !239
  %183 = getelementptr inbounds i8, ptr %57, i64 128, !dbg !239
  %184 = load <16 x i8>, ptr %183, align 64, !dbg !239
  %185 = lshr <16 x i8> %184, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %186 = and <16 x i8> %184, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %187 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %186), !dbg !239
  %188 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %185), !dbg !239
  %189 = getelementptr inbounds i8, ptr %57, i64 144, !dbg !239
  %190 = load <16 x i8>, ptr %189, align 16, !dbg !239
  %191 = and <16 x i8> %190, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %192 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %191), !dbg !239
  %193 = shufflevector <16 x i8> %187, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %194 = shufflevector <16 x i8> %192, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %195 = sext <8 x i8> %193 to <8 x i16>, !dbg !239
  %196 = sext <8 x i8> %194 to <8 x i16>, !dbg !239
  %197 = shufflevector <16 x i8> %187, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %198 = sext <8 x i8> %197 to <8 x i16>, !dbg !239
  %199 = shufflevector <16 x i8> %192, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %200 = sext <8 x i8> %199 to <8 x i16>, !dbg !239
  %201 = add <8 x i16> %170, %195, !dbg !239
  %202 = add <8 x i16> %201, %196, !dbg !239
  %203 = add <8 x i16> %172, %198, !dbg !239
  %204 = add <8 x i16> %203, %200, !dbg !239
  %205 = lshr <16 x i8> %190, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %206 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %205), !dbg !239
  %207 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %208 = sext <8 x i8> %207 to <8 x i16>, !dbg !239
  %209 = shufflevector <16 x i8> %188, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %210 = sext <8 x i8> %209 to <8 x i16>, !dbg !239
  %211 = shufflevector <16 x i8> %206, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %212 = sext <8 x i8> %211 to <8 x i16>, !dbg !239
  %213 = shufflevector <16 x i8> %188, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %214 = sext <8 x i8> %213 to <8 x i16>, !dbg !239
  %215 = getelementptr inbounds i8, ptr %57, i64 160, !dbg !239
  %216 = load <16 x i8>, ptr %215, align 32, !dbg !239
  %217 = lshr <16 x i8> %216, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %218 = and <16 x i8> %216, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %219 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %218), !dbg !239
  %220 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %217), !dbg !239
  %221 = getelementptr inbounds i8, ptr %57, i64 176, !dbg !239
  %222 = load <16 x i8>, ptr %221, align 16, !dbg !239
  %223 = and <16 x i8> %222, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %224 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %223), !dbg !239
  %225 = shufflevector <16 x i8> %219, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %226 = shufflevector <16 x i8> %224, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %227 = sext <8 x i8> %225 to <8 x i16>, !dbg !239
  %228 = sext <8 x i8> %226 to <8 x i16>, !dbg !239
  %229 = shufflevector <16 x i8> %219, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %230 = sext <8 x i8> %229 to <8 x i16>, !dbg !239
  %231 = shufflevector <16 x i8> %224, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %232 = sext <8 x i8> %231 to <8 x i16>, !dbg !239
  %233 = add <8 x i16> %202, %227, !dbg !239
  %234 = add <8 x i16> %233, %228, !dbg !239
  %235 = add <8 x i16> %204, %230, !dbg !239
  %236 = add <8 x i16> %235, %232, !dbg !239
  %237 = lshr <16 x i8> %222, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %238 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %237), !dbg !239
  %239 = shufflevector <16 x i8> %238, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %240 = sext <8 x i8> %239 to <8 x i16>, !dbg !239
  %241 = shufflevector <16 x i8> %220, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %242 = sext <8 x i8> %241 to <8 x i16>, !dbg !239
  %243 = shufflevector <16 x i8> %238, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %244 = sext <8 x i8> %243 to <8 x i16>, !dbg !239
  %245 = shufflevector <16 x i8> %220, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %246 = sext <8 x i8> %245 to <8 x i16>, !dbg !239
  %247 = getelementptr inbounds i8, ptr %57, i64 192, !dbg !239
  %248 = load <16 x i8>, ptr %247, align 64, !dbg !239
  %249 = lshr <16 x i8> %248, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %250 = and <16 x i8> %248, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %251 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %41, <16 x i8> %250), !dbg !239
  %252 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %41, <16 x i8> %249), !dbg !239
  %253 = getelementptr inbounds i8, ptr %57, i64 208, !dbg !239
  %254 = load <16 x i8>, ptr %253, align 16, !dbg !239
  %255 = and <16 x i8> %254, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %256 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %43, <16 x i8> %255), !dbg !239
  %257 = shufflevector <16 x i8> %251, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %258 = shufflevector <16 x i8> %256, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %259 = sext <8 x i8> %257 to <8 x i16>, !dbg !239
  %260 = sext <8 x i8> %258 to <8 x i16>, !dbg !239
  %261 = shufflevector <16 x i8> %251, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %262 = sext <8 x i8> %261 to <8 x i16>, !dbg !239
  %263 = shufflevector <16 x i8> %256, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %264 = sext <8 x i8> %263 to <8 x i16>, !dbg !239
  %265 = add <8 x i16> %234, %259, !dbg !239
  %266 = add <8 x i16> %265, %260, !dbg !239
  %267 = add <8 x i16> %236, %262, !dbg !239
  %268 = add <8 x i16> %267, %264, !dbg !239
  %269 = lshr <16 x i8> %254, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %270 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %43, <16 x i8> %269), !dbg !239
  %271 = shufflevector <16 x i8> %270, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %272 = sext <8 x i8> %271 to <8 x i16>, !dbg !239
  %273 = shufflevector <16 x i8> %252, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %274 = sext <8 x i8> %273 to <8 x i16>, !dbg !239
  %275 = shufflevector <16 x i8> %270, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %276 = sext <8 x i8> %275 to <8 x i16>, !dbg !239
  %277 = shufflevector <16 x i8> %252, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %278 = sext <8 x i8> %277 to <8 x i16>, !dbg !239
  %279 = getelementptr inbounds i8, ptr %57, i64 224, !dbg !239
  %280 = load <16 x i8>, ptr %279, align 32, !dbg !239
  %281 = lshr <16 x i8> %280, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %282 = and <16 x i8> %280, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %283 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %45, <16 x i8> %282), !dbg !239
  %284 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %45, <16 x i8> %281), !dbg !239
  %285 = getelementptr inbounds i8, ptr %57, i64 240, !dbg !239
  %286 = load <16 x i8>, ptr %285, align 16, !dbg !239
  %287 = and <16 x i8> %286, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !239
  %288 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %287), !dbg !239
  %289 = shufflevector <16 x i8> %283, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %290 = shufflevector <16 x i8> %288, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %291 = sext <8 x i8> %289 to <8 x i16>, !dbg !239
  %292 = sext <8 x i8> %290 to <8 x i16>, !dbg !239
  %293 = shufflevector <16 x i8> %283, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %294 = sext <8 x i8> %293 to <8 x i16>, !dbg !239
  %295 = shufflevector <16 x i8> %288, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %296 = sext <8 x i8> %295 to <8 x i16>, !dbg !239
  %297 = add <8 x i16> %266, %291, !dbg !239
  %298 = add <8 x i16> %297, %292, !dbg !239
  %299 = add <8 x i16> %268, %294, !dbg !239
  %300 = add <8 x i16> %299, %296, !dbg !239
  %301 = lshr <16 x i8> %286, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !239
  %302 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %47, <16 x i8> %301), !dbg !239
  %303 = shufflevector <16 x i8> %302, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %304 = sext <8 x i8> %303 to <8 x i16>, !dbg !239
  %305 = shufflevector <16 x i8> %284, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !239
  %306 = sext <8 x i8> %305 to <8 x i16>, !dbg !239
  %307 = add nsw <8 x i16> %86, %84, !dbg !239
  %308 = add nsw <8 x i16> %307, %114, !dbg !239
  %309 = add nsw <8 x i16> %308, %112, !dbg !239
  %310 = add nsw <8 x i16> %309, %146, !dbg !239
  %311 = add nsw <8 x i16> %310, %144, !dbg !239
  %312 = add nsw <8 x i16> %311, %178, !dbg !239
  %313 = add <8 x i16> %312, %176, !dbg !239
  %314 = add <8 x i16> %313, %210, !dbg !239
  %315 = add <8 x i16> %314, %208, !dbg !239
  %316 = add <8 x i16> %315, %242, !dbg !239
  %317 = add <8 x i16> %316, %240, !dbg !239
  %318 = add <8 x i16> %317, %274, !dbg !239
  %319 = add <8 x i16> %318, %272, !dbg !239
  %320 = add <8 x i16> %319, %306, !dbg !239
  %321 = add <8 x i16> %320, %304, !dbg !239
  %322 = shufflevector <16 x i8> %302, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %323 = sext <8 x i8> %322 to <8 x i16>, !dbg !239
  %324 = shufflevector <16 x i8> %284, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !239
  %325 = sext <8 x i8> %324 to <8 x i16>, !dbg !239
  %326 = add nsw <8 x i16> %82, %81, !dbg !239
  %327 = add nsw <8 x i16> %326, %118, !dbg !239
  %328 = add nsw <8 x i16> %327, %116, !dbg !239
  %329 = add nsw <8 x i16> %328, %150, !dbg !239
  %330 = add nsw <8 x i16> %329, %148, !dbg !239
  %331 = add nsw <8 x i16> %330, %182, !dbg !239
  %332 = add <8 x i16> %331, %180, !dbg !239
  %333 = add <8 x i16> %332, %214, !dbg !239
  %334 = add <8 x i16> %333, %212, !dbg !239
  %335 = add <8 x i16> %334, %246, !dbg !239
  %336 = add <8 x i16> %335, %244, !dbg !239
  %337 = add <8 x i16> %336, %278, !dbg !239
  %338 = add <8 x i16> %337, %276, !dbg !239
  %339 = add <8 x i16> %338, %325, !dbg !239
  %340 = add <8 x i16> %339, %323, !dbg !239
  %341 = sitofp <8 x i16> %298 to <8 x half>, !dbg !239
  %342 = sitofp <8 x i16> %300 to <8 x half>, !dbg !239
  %343 = sitofp <8 x i16> %340 to <8 x half>, !dbg !239
  %344 = sitofp <8 x i16> %321 to <8 x half>, !dbg !239
  %345 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %341, <8 x half> %52, <8 x half> %53), !dbg !239
  %346 = fmul <8 x half> %52, %342, !dbg !239
  %347 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %343, <8 x half> %52, <8 x half> %53), !dbg !239
  %348 = fmul <8 x half> %52, %344, !dbg !239
  %349 = shl nuw nsw i64 %55, 1, !dbg !239
  %350 = getelementptr inbounds half, ptr %CBits, i64 %349, !dbg !239
  %351 = load <8 x half>, ptr %350, align 64, !dbg !239
  %352 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %345, <8 x half> %4, <8 x half> %351), !dbg !239
  store <8 x half> %352, ptr %350, align 64, !dbg !239
  %353 = getelementptr inbounds half, ptr %350, i64 8, !dbg !239
  %354 = load <8 x half>, ptr %353, align 16, !dbg !239
  %355 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %346, <8 x half> %4, <8 x half> %354), !dbg !239
  store <8 x half> %355, ptr %353, align 16, !dbg !239
  %356 = getelementptr inbounds half, ptr %350, i64 16, !dbg !239
  %357 = load <8 x half>, ptr %356, align 32, !dbg !239
  %358 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %347, <8 x half> %4, <8 x half> %357), !dbg !239
  store <8 x half> %358, ptr %356, align 32, !dbg !239
  %359 = getelementptr inbounds half, ptr %350, i64 24, !dbg !239
  %360 = load <8 x half>, ptr %359, align 16, !dbg !239
  %361 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %348, <8 x half> %4, <8 x half> %360), !dbg !239
  store <8 x half> %361, ptr %359, align 16, !dbg !239
  %362 = add nuw nsw i64 %55, 16, !dbg !239
  %363 = icmp ult i64 %55, 240, !dbg !239
  br i1 %363, label %54, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !239, !llvm.loop !247

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %54
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !239
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !246, metadata !DIExpression()), !dbg !239
  %exitcond.not = icmp eq i64 %indvars.iv.next, 172, !dbg !239
  br i1 %exitcond.not, label %for_body_m.c.outer, label %for_body_k.outer, !dbg !239, !prof !29

for_begin_m.inner.outer.preheader:                ; preds = %for_body_m.c.outer
  call void @llvm.dbg.declare(metadata i32 0, metadata !249, metadata !DIExpression()), !dbg !239
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(512) %scevgep, ptr noundef nonnull align 64 dereferenceable(512) %C.global4, i64 512, i1 false), !dbg !239
  call void @llvm.dbg.declare(metadata i64 poison, metadata !249, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i64 %indvar, metadata !245, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !239
  br i1 %5, label %for_body_m.outer, label %for_end_m.outer, !dbg !239, !prof !25

for_body_m.c.outer:                               ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, %for_body_m.c.outer
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for_body_m.c.outer ], [ 0, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv10, metadata !250, metadata !DIExpression()), !dbg !239
  %364 = shl nuw nsw i64 %indvars.iv10, 6, !dbg !239
  %365 = trunc i64 %364 to i32, !dbg !239
  %366 = insertelement <32 x i32> undef, i32 %365, i64 0, !dbg !239
  %367 = shufflevector <32 x i32> %366, <32 x i32> undef, <32 x i32> zeroinitializer, !dbg !239
  %cse_var_1 = or <32 x i32> %367, <i32 poison, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 48, i32 49, i32 50, i32 51, i32 52, i32 53, i32 54, i32 55>, !dbg !239
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !251, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata <32 x i32> %cse_var_1, metadata !251, metadata !DIExpression()), !dbg !239
  %368 = getelementptr inbounds half, ptr %CBits, i64 %364, !dbg !239
  %369 = load half, ptr %368, align 64, !dbg !239, !tbaa !253
  %370 = extractelement <32 x i32> %cse_var_1, i64 1, !dbg !239
  %371 = zext i32 %370 to i64, !dbg !239
  %372 = getelementptr inbounds half, ptr %CBits, i64 %371, !dbg !239
  %373 = load half, ptr %372, align 2, !dbg !239, !tbaa !253
  %374 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !239
  %375 = zext <2 x i32> %374 to <2 x i64>, !dbg !239
  %376 = extractelement <2 x i64> %375, i64 0, !dbg !239
  %377 = getelementptr inbounds half, ptr %CBits, i64 %376, !dbg !239
  %378 = load half, ptr %377, align 2, !dbg !239, !tbaa !253
  %379 = extractelement <2 x i64> %375, i64 1, !dbg !239
  %380 = getelementptr inbounds half, ptr %CBits, i64 %379, !dbg !239
  %381 = load half, ptr %380, align 2, !dbg !239, !tbaa !253
  %382 = extractelement <32 x i32> %cse_var_1, i64 4, !dbg !239
  %383 = zext i32 %382 to i64, !dbg !239
  %384 = getelementptr inbounds half, ptr %CBits, i64 %383, !dbg !239
  %385 = load half, ptr %384, align 2, !dbg !239, !tbaa !253
  %386 = extractelement <32 x i32> %cse_var_1, i64 5, !dbg !239
  %387 = zext i32 %386 to i64, !dbg !239
  %388 = getelementptr inbounds half, ptr %CBits, i64 %387, !dbg !239
  %389 = load half, ptr %388, align 2, !dbg !239, !tbaa !253
  %390 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !239
  %391 = zext <2 x i32> %390 to <2 x i64>, !dbg !239
  %392 = extractelement <2 x i64> %391, i64 0, !dbg !239
  %393 = getelementptr inbounds half, ptr %CBits, i64 %392, !dbg !239
  %394 = load half, ptr %393, align 2, !dbg !239, !tbaa !253
  %395 = extractelement <2 x i64> %391, i64 1, !dbg !239
  %396 = getelementptr inbounds half, ptr %CBits, i64 %395, !dbg !239
  %397 = load half, ptr %396, align 2, !dbg !239, !tbaa !253
  %398 = extractelement <32 x i32> %cse_var_1, i64 8, !dbg !239
  %399 = zext i32 %398 to i64, !dbg !239
  %400 = getelementptr inbounds half, ptr %CBits, i64 %399, !dbg !239
  %401 = load half, ptr %400, align 2, !dbg !239, !tbaa !253
  %402 = extractelement <32 x i32> %cse_var_1, i64 9, !dbg !239
  %403 = zext i32 %402 to i64, !dbg !239
  %404 = getelementptr inbounds half, ptr %CBits, i64 %403, !dbg !239
  %405 = load half, ptr %404, align 2, !dbg !239, !tbaa !253
  %406 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !239
  %407 = zext <2 x i32> %406 to <2 x i64>, !dbg !239
  %408 = extractelement <2 x i64> %407, i64 0, !dbg !239
  %409 = getelementptr inbounds half, ptr %CBits, i64 %408, !dbg !239
  %410 = load half, ptr %409, align 2, !dbg !239, !tbaa !253
  %411 = extractelement <2 x i64> %407, i64 1, !dbg !239
  %412 = getelementptr inbounds half, ptr %CBits, i64 %411, !dbg !239
  %413 = load half, ptr %412, align 2, !dbg !239, !tbaa !253
  %414 = extractelement <32 x i32> %cse_var_1, i64 12, !dbg !239
  %415 = zext i32 %414 to i64, !dbg !239
  %416 = getelementptr inbounds half, ptr %CBits, i64 %415, !dbg !239
  %417 = load half, ptr %416, align 2, !dbg !239, !tbaa !253
  %418 = extractelement <32 x i32> %cse_var_1, i64 13, !dbg !239
  %419 = zext i32 %418 to i64, !dbg !239
  %420 = getelementptr inbounds half, ptr %CBits, i64 %419, !dbg !239
  %421 = load half, ptr %420, align 2, !dbg !239, !tbaa !253
  %422 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !239
  %423 = zext <2 x i32> %422 to <2 x i64>, !dbg !239
  %424 = extractelement <2 x i64> %423, i64 0, !dbg !239
  %425 = getelementptr inbounds half, ptr %CBits, i64 %424, !dbg !239
  %426 = load half, ptr %425, align 2, !dbg !239, !tbaa !253
  %427 = extractelement <2 x i64> %423, i64 1, !dbg !239
  %428 = getelementptr inbounds half, ptr %CBits, i64 %427, !dbg !239
  %429 = load half, ptr %428, align 2, !dbg !239, !tbaa !253
  %430 = extractelement <32 x i32> %cse_var_1, i64 16, !dbg !239
  %431 = zext i32 %430 to i64, !dbg !239
  %432 = getelementptr inbounds half, ptr %CBits, i64 %431, !dbg !239
  %433 = load half, ptr %432, align 64, !dbg !239, !tbaa !253
  %434 = extractelement <32 x i32> %cse_var_1, i64 17, !dbg !239
  %435 = zext i32 %434 to i64, !dbg !239
  %436 = getelementptr inbounds half, ptr %CBits, i64 %435, !dbg !239
  %437 = load half, ptr %436, align 2, !dbg !239, !tbaa !253
  %438 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !239
  %439 = zext <2 x i32> %438 to <2 x i64>, !dbg !239
  %440 = extractelement <2 x i64> %439, i64 0, !dbg !239
  %441 = getelementptr inbounds half, ptr %CBits, i64 %440, !dbg !239
  %442 = load half, ptr %441, align 2, !dbg !239, !tbaa !253
  %443 = extractelement <2 x i64> %439, i64 1, !dbg !239
  %444 = getelementptr inbounds half, ptr %CBits, i64 %443, !dbg !239
  %445 = load half, ptr %444, align 2, !dbg !239, !tbaa !253
  %446 = extractelement <32 x i32> %cse_var_1, i64 20, !dbg !239
  %447 = zext i32 %446 to i64, !dbg !239
  %448 = getelementptr inbounds half, ptr %CBits, i64 %447, !dbg !239
  %449 = load half, ptr %448, align 2, !dbg !239, !tbaa !253
  %450 = extractelement <32 x i32> %cse_var_1, i64 21, !dbg !239
  %451 = zext i32 %450 to i64, !dbg !239
  %452 = getelementptr inbounds half, ptr %CBits, i64 %451, !dbg !239
  %453 = load half, ptr %452, align 2, !dbg !239, !tbaa !253
  %454 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !239
  %455 = zext <2 x i32> %454 to <2 x i64>, !dbg !239
  %456 = extractelement <2 x i64> %455, i64 0, !dbg !239
  %457 = getelementptr inbounds half, ptr %CBits, i64 %456, !dbg !239
  %458 = load half, ptr %457, align 2, !dbg !239, !tbaa !253
  %459 = extractelement <2 x i64> %455, i64 1, !dbg !239
  %460 = getelementptr inbounds half, ptr %CBits, i64 %459, !dbg !239
  %461 = load half, ptr %460, align 2, !dbg !239, !tbaa !253
  %462 = extractelement <32 x i32> %cse_var_1, i64 24, !dbg !239
  %463 = zext i32 %462 to i64, !dbg !239
  %464 = getelementptr inbounds half, ptr %CBits, i64 %463, !dbg !239
  %465 = load half, ptr %464, align 2, !dbg !239, !tbaa !253
  %466 = extractelement <32 x i32> %cse_var_1, i64 25, !dbg !239
  %467 = zext i32 %466 to i64, !dbg !239
  %468 = getelementptr inbounds half, ptr %CBits, i64 %467, !dbg !239
  %469 = load half, ptr %468, align 2, !dbg !239, !tbaa !253
  %470 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !239
  %471 = zext <2 x i32> %470 to <2 x i64>, !dbg !239
  %472 = extractelement <2 x i64> %471, i64 0, !dbg !239
  %473 = getelementptr inbounds half, ptr %CBits, i64 %472, !dbg !239
  %474 = load half, ptr %473, align 2, !dbg !239, !tbaa !253
  %475 = extractelement <2 x i64> %471, i64 1, !dbg !239
  %476 = getelementptr inbounds half, ptr %CBits, i64 %475, !dbg !239
  %477 = load half, ptr %476, align 2, !dbg !239, !tbaa !253
  %478 = extractelement <32 x i32> %cse_var_1, i64 28, !dbg !239
  %479 = zext i32 %478 to i64, !dbg !239
  %480 = getelementptr inbounds half, ptr %CBits, i64 %479, !dbg !239
  %481 = load half, ptr %480, align 2, !dbg !239, !tbaa !253
  %482 = extractelement <32 x i32> %cse_var_1, i64 29, !dbg !239
  %483 = zext i32 %482 to i64, !dbg !239
  %484 = getelementptr inbounds half, ptr %CBits, i64 %483, !dbg !239
  %485 = load half, ptr %484, align 2, !dbg !239, !tbaa !253
  %486 = shufflevector <32 x i32> %cse_var_1, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !239
  %487 = zext <2 x i32> %486 to <2 x i64>, !dbg !239
  %488 = extractelement <2 x i64> %487, i64 0, !dbg !239
  %489 = getelementptr inbounds half, ptr %CBits, i64 %488, !dbg !239
  %490 = load half, ptr %489, align 2, !dbg !239, !tbaa !253
  %491 = extractelement <2 x i64> %487, i64 1, !dbg !239
  %492 = getelementptr inbounds half, ptr %CBits, i64 %491, !dbg !239
  %493 = load half, ptr %492, align 2, !dbg !239, !tbaa !253
  %494 = insertelement <32 x half> undef, half %369, i64 0, !dbg !239
  %495 = insertelement <32 x half> %494, half %373, i64 1, !dbg !239
  %496 = insertelement <32 x half> %495, half %378, i64 2, !dbg !239
  %497 = insertelement <32 x half> %496, half %381, i64 3, !dbg !239
  %498 = insertelement <32 x half> %497, half %385, i64 4, !dbg !239
  %499 = insertelement <32 x half> %498, half %389, i64 5, !dbg !239
  %500 = insertelement <32 x half> %499, half %394, i64 6, !dbg !239
  %501 = insertelement <32 x half> %500, half %397, i64 7, !dbg !239
  %502 = insertelement <32 x half> %501, half %401, i64 8, !dbg !239
  %503 = insertelement <32 x half> %502, half %405, i64 9, !dbg !239
  %504 = insertelement <32 x half> %503, half %410, i64 10, !dbg !239
  %505 = insertelement <32 x half> %504, half %413, i64 11, !dbg !239
  %506 = insertelement <32 x half> %505, half %417, i64 12, !dbg !239
  %507 = insertelement <32 x half> %506, half %421, i64 13, !dbg !239
  %508 = insertelement <32 x half> %507, half %426, i64 14, !dbg !239
  %509 = insertelement <32 x half> %508, half %429, i64 15, !dbg !239
  %510 = insertelement <32 x half> %509, half %433, i64 16, !dbg !239
  %511 = insertelement <32 x half> %510, half %437, i64 17, !dbg !239
  %512 = insertelement <32 x half> %511, half %442, i64 18, !dbg !239
  %513 = insertelement <32 x half> %512, half %445, i64 19, !dbg !239
  %514 = insertelement <32 x half> %513, half %449, i64 20, !dbg !239
  %515 = insertelement <32 x half> %514, half %453, i64 21, !dbg !239
  %516 = insertelement <32 x half> %515, half %458, i64 22, !dbg !239
  %517 = insertelement <32 x half> %516, half %461, i64 23, !dbg !239
  %518 = insertelement <32 x half> %517, half %465, i64 24, !dbg !239
  %519 = insertelement <32 x half> %518, half %469, i64 25, !dbg !239
  %520 = insertelement <32 x half> %519, half %474, i64 26, !dbg !239
  %521 = insertelement <32 x half> %520, half %477, i64 27, !dbg !239
  %522 = insertelement <32 x half> %521, half %481, i64 28, !dbg !239
  %523 = insertelement <32 x half> %522, half %485, i64 29, !dbg !239
  %524 = insertelement <32 x half> %523, half %490, i64 30, !dbg !239
  %525 = insertelement <32 x half> %524, half %493, i64 31, !dbg !239
  %526 = or <32 x i32> %367, <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 62, i32 63>, !dbg !239
  %527 = extractelement <32 x i32> %526, i64 0, !dbg !239
  %528 = zext i32 %527 to i64, !dbg !239
  %529 = getelementptr inbounds half, ptr %CBits, i64 %528, !dbg !239
  %530 = load half, ptr %529, align 2, !dbg !239, !tbaa !253
  %531 = extractelement <32 x i32> %526, i64 1, !dbg !239
  %532 = zext i32 %531 to i64, !dbg !239
  %533 = getelementptr inbounds half, ptr %CBits, i64 %532, !dbg !239
  %534 = load half, ptr %533, align 2, !dbg !239, !tbaa !253
  %535 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 2, i32 3>, !dbg !239
  %536 = zext <2 x i32> %535 to <2 x i64>, !dbg !239
  %537 = extractelement <2 x i64> %536, i64 0, !dbg !239
  %538 = getelementptr inbounds half, ptr %CBits, i64 %537, !dbg !239
  %539 = load half, ptr %538, align 2, !dbg !239, !tbaa !253
  %540 = extractelement <2 x i64> %536, i64 1, !dbg !239
  %541 = getelementptr inbounds half, ptr %CBits, i64 %540, !dbg !239
  %542 = load half, ptr %541, align 2, !dbg !239, !tbaa !253
  %543 = extractelement <32 x i32> %526, i64 4, !dbg !239
  %544 = zext i32 %543 to i64, !dbg !239
  %545 = getelementptr inbounds half, ptr %CBits, i64 %544, !dbg !239
  %546 = load half, ptr %545, align 2, !dbg !239, !tbaa !253
  %547 = extractelement <32 x i32> %526, i64 5, !dbg !239
  %548 = zext i32 %547 to i64, !dbg !239
  %549 = getelementptr inbounds half, ptr %CBits, i64 %548, !dbg !239
  %550 = load half, ptr %549, align 2, !dbg !239, !tbaa !253
  %551 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 6, i32 7>, !dbg !239
  %552 = zext <2 x i32> %551 to <2 x i64>, !dbg !239
  %553 = extractelement <2 x i64> %552, i64 0, !dbg !239
  %554 = getelementptr inbounds half, ptr %CBits, i64 %553, !dbg !239
  %555 = load half, ptr %554, align 2, !dbg !239, !tbaa !253
  %556 = extractelement <2 x i64> %552, i64 1, !dbg !239
  %557 = getelementptr inbounds half, ptr %CBits, i64 %556, !dbg !239
  %558 = load half, ptr %557, align 2, !dbg !239, !tbaa !253
  %559 = extractelement <32 x i32> %526, i64 8, !dbg !239
  %560 = zext i32 %559 to i64, !dbg !239
  %561 = getelementptr inbounds half, ptr %CBits, i64 %560, !dbg !239
  %562 = load half, ptr %561, align 2, !dbg !239, !tbaa !253
  %563 = extractelement <32 x i32> %526, i64 9, !dbg !239
  %564 = zext i32 %563 to i64, !dbg !239
  %565 = getelementptr inbounds half, ptr %CBits, i64 %564, !dbg !239
  %566 = load half, ptr %565, align 2, !dbg !239, !tbaa !253
  %567 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 10, i32 11>, !dbg !239
  %568 = zext <2 x i32> %567 to <2 x i64>, !dbg !239
  %569 = extractelement <2 x i64> %568, i64 0, !dbg !239
  %570 = getelementptr inbounds half, ptr %CBits, i64 %569, !dbg !239
  %571 = load half, ptr %570, align 2, !dbg !239, !tbaa !253
  %572 = extractelement <2 x i64> %568, i64 1, !dbg !239
  %573 = getelementptr inbounds half, ptr %CBits, i64 %572, !dbg !239
  %574 = load half, ptr %573, align 2, !dbg !239, !tbaa !253
  %575 = extractelement <32 x i32> %526, i64 12, !dbg !239
  %576 = zext i32 %575 to i64, !dbg !239
  %577 = getelementptr inbounds half, ptr %CBits, i64 %576, !dbg !239
  %578 = load half, ptr %577, align 2, !dbg !239, !tbaa !253
  %579 = extractelement <32 x i32> %526, i64 13, !dbg !239
  %580 = zext i32 %579 to i64, !dbg !239
  %581 = getelementptr inbounds half, ptr %CBits, i64 %580, !dbg !239
  %582 = load half, ptr %581, align 2, !dbg !239, !tbaa !253
  %583 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 14, i32 15>, !dbg !239
  %584 = zext <2 x i32> %583 to <2 x i64>, !dbg !239
  %585 = extractelement <2 x i64> %584, i64 0, !dbg !239
  %586 = getelementptr inbounds half, ptr %CBits, i64 %585, !dbg !239
  %587 = load half, ptr %586, align 2, !dbg !239, !tbaa !253
  %588 = extractelement <2 x i64> %584, i64 1, !dbg !239
  %589 = getelementptr inbounds half, ptr %CBits, i64 %588, !dbg !239
  %590 = load half, ptr %589, align 2, !dbg !239, !tbaa !253
  %591 = extractelement <32 x i32> %526, i64 16, !dbg !239
  %592 = zext i32 %591 to i64, !dbg !239
  %593 = getelementptr inbounds half, ptr %CBits, i64 %592, !dbg !239
  %594 = load half, ptr %593, align 2, !dbg !239, !tbaa !253
  %595 = extractelement <32 x i32> %526, i64 17, !dbg !239
  %596 = zext i32 %595 to i64, !dbg !239
  %597 = getelementptr inbounds half, ptr %CBits, i64 %596, !dbg !239
  %598 = load half, ptr %597, align 2, !dbg !239, !tbaa !253
  %599 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 18, i32 19>, !dbg !239
  %600 = zext <2 x i32> %599 to <2 x i64>, !dbg !239
  %601 = extractelement <2 x i64> %600, i64 0, !dbg !239
  %602 = getelementptr inbounds half, ptr %CBits, i64 %601, !dbg !239
  %603 = load half, ptr %602, align 2, !dbg !239, !tbaa !253
  %604 = extractelement <2 x i64> %600, i64 1, !dbg !239
  %605 = getelementptr inbounds half, ptr %CBits, i64 %604, !dbg !239
  %606 = load half, ptr %605, align 2, !dbg !239, !tbaa !253
  %607 = extractelement <32 x i32> %526, i64 20, !dbg !239
  %608 = zext i32 %607 to i64, !dbg !239
  %609 = getelementptr inbounds half, ptr %CBits, i64 %608, !dbg !239
  %610 = load half, ptr %609, align 2, !dbg !239, !tbaa !253
  %611 = extractelement <32 x i32> %526, i64 21, !dbg !239
  %612 = zext i32 %611 to i64, !dbg !239
  %613 = getelementptr inbounds half, ptr %CBits, i64 %612, !dbg !239
  %614 = load half, ptr %613, align 2, !dbg !239, !tbaa !253
  %615 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 22, i32 23>, !dbg !239
  %616 = zext <2 x i32> %615 to <2 x i64>, !dbg !239
  %617 = extractelement <2 x i64> %616, i64 0, !dbg !239
  %618 = getelementptr inbounds half, ptr %CBits, i64 %617, !dbg !239
  %619 = load half, ptr %618, align 2, !dbg !239, !tbaa !253
  %620 = extractelement <2 x i64> %616, i64 1, !dbg !239
  %621 = getelementptr inbounds half, ptr %CBits, i64 %620, !dbg !239
  %622 = load half, ptr %621, align 2, !dbg !239, !tbaa !253
  %623 = extractelement <32 x i32> %526, i64 24, !dbg !239
  %624 = zext i32 %623 to i64, !dbg !239
  %625 = getelementptr inbounds half, ptr %CBits, i64 %624, !dbg !239
  %626 = load half, ptr %625, align 2, !dbg !239, !tbaa !253
  %627 = extractelement <32 x i32> %526, i64 25, !dbg !239
  %628 = zext i32 %627 to i64, !dbg !239
  %629 = getelementptr inbounds half, ptr %CBits, i64 %628, !dbg !239
  %630 = load half, ptr %629, align 2, !dbg !239, !tbaa !253
  %631 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 26, i32 27>, !dbg !239
  %632 = zext <2 x i32> %631 to <2 x i64>, !dbg !239
  %633 = extractelement <2 x i64> %632, i64 0, !dbg !239
  %634 = getelementptr inbounds half, ptr %CBits, i64 %633, !dbg !239
  %635 = load half, ptr %634, align 2, !dbg !239, !tbaa !253
  %636 = extractelement <2 x i64> %632, i64 1, !dbg !239
  %637 = getelementptr inbounds half, ptr %CBits, i64 %636, !dbg !239
  %638 = load half, ptr %637, align 2, !dbg !239, !tbaa !253
  %639 = extractelement <32 x i32> %526, i64 28, !dbg !239
  %640 = zext i32 %639 to i64, !dbg !239
  %641 = getelementptr inbounds half, ptr %CBits, i64 %640, !dbg !239
  %642 = load half, ptr %641, align 2, !dbg !239, !tbaa !253
  %643 = extractelement <32 x i32> %526, i64 29, !dbg !239
  %644 = zext i32 %643 to i64, !dbg !239
  %645 = getelementptr inbounds half, ptr %CBits, i64 %644, !dbg !239
  %646 = load half, ptr %645, align 2, !dbg !239, !tbaa !253
  %647 = shufflevector <32 x i32> %526, <32 x i32> poison, <2 x i32> <i32 30, i32 31>, !dbg !239
  %648 = zext <2 x i32> %647 to <2 x i64>, !dbg !239
  %649 = extractelement <2 x i64> %648, i64 0, !dbg !239
  %650 = getelementptr inbounds half, ptr %CBits, i64 %649, !dbg !239
  %651 = load half, ptr %650, align 2, !dbg !239, !tbaa !253
  %652 = extractelement <2 x i64> %648, i64 1, !dbg !239
  %653 = getelementptr inbounds half, ptr %CBits, i64 %652, !dbg !239
  %654 = load half, ptr %653, align 2, !dbg !239, !tbaa !253
  %655 = insertelement <32 x half> undef, half %530, i64 0, !dbg !239
  %656 = insertelement <32 x half> %655, half %534, i64 1, !dbg !239
  %657 = insertelement <32 x half> %656, half %539, i64 2, !dbg !239
  %658 = insertelement <32 x half> %657, half %542, i64 3, !dbg !239
  %659 = insertelement <32 x half> %658, half %546, i64 4, !dbg !239
  %660 = insertelement <32 x half> %659, half %550, i64 5, !dbg !239
  %661 = insertelement <32 x half> %660, half %555, i64 6, !dbg !239
  %662 = insertelement <32 x half> %661, half %558, i64 7, !dbg !239
  %663 = insertelement <32 x half> %662, half %562, i64 8, !dbg !239
  %664 = insertelement <32 x half> %663, half %566, i64 9, !dbg !239
  %665 = insertelement <32 x half> %664, half %571, i64 10, !dbg !239
  %666 = insertelement <32 x half> %665, half %574, i64 11, !dbg !239
  %667 = insertelement <32 x half> %666, half %578, i64 12, !dbg !239
  %668 = insertelement <32 x half> %667, half %582, i64 13, !dbg !239
  %669 = insertelement <32 x half> %668, half %587, i64 14, !dbg !239
  %670 = insertelement <32 x half> %669, half %590, i64 15, !dbg !239
  %671 = insertelement <32 x half> %670, half %594, i64 16, !dbg !239
  %672 = insertelement <32 x half> %671, half %598, i64 17, !dbg !239
  %673 = insertelement <32 x half> %672, half %603, i64 18, !dbg !239
  %674 = insertelement <32 x half> %673, half %606, i64 19, !dbg !239
  %675 = insertelement <32 x half> %674, half %610, i64 20, !dbg !239
  %676 = insertelement <32 x half> %675, half %614, i64 21, !dbg !239
  %677 = insertelement <32 x half> %676, half %619, i64 22, !dbg !239
  %678 = insertelement <32 x half> %677, half %622, i64 23, !dbg !239
  %679 = insertelement <32 x half> %678, half %626, i64 24, !dbg !239
  %680 = insertelement <32 x half> %679, half %630, i64 25, !dbg !239
  %681 = insertelement <32 x half> %680, half %635, i64 26, !dbg !239
  %682 = insertelement <32 x half> %681, half %638, i64 27, !dbg !239
  %683 = insertelement <32 x half> %682, half %642, i64 28, !dbg !239
  %684 = insertelement <32 x half> %683, half %646, i64 29, !dbg !239
  %685 = insertelement <32 x half> %684, half %651, i64 30, !dbg !239
  %686 = insertelement <32 x half> %685, half %654, i64 31, !dbg !239
  %687 = tail call <32 x half> @llvm.fmuladd.v32f16(<32 x half> %525, <32 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <32 x half> %686), !dbg !239
  %688 = getelementptr inbounds <32 x half>, ptr %C.global4, i64 %indvars.iv10, !dbg !239
  store <32 x half> %687, ptr %688, align 64, !dbg !239, !tbaa !255
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1, !dbg !239
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next11, metadata !250, metadata !DIExpression()), !dbg !239
  %exitcond13.not = icmp eq i64 %indvars.iv.next11, 8, !dbg !239
  br i1 %exitcond13.not, label %for_begin_m.inner.outer.preheader, label %for_body_m.c.outer, !dbg !239, !prof !29
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x half> @llvm.fmuladd.v32f16(<32 x half>, <32 x half>, <32 x half>) #1

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

; Function Attrs: alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8>, <16 x i8>) #6

; Function Attrs: alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x half> @llvm.fmuladd.v8f16(<8 x half>, <8 x half>, <8 x half>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { noinline "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #4 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #5 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }

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
!11 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x60000052f9c0.w4.b0", !32, i64 0}
!32 = !{!"0x60000052f9c0.w8.b0", !33, i64 0}
!33 = !{!"0x60000052f9c0.w16.b0", !34, i64 0}
!34 = !{!"0x60000052f9c0.w32.b0", !35, i64 0}
!35 = !{!"0x60000052f9c0.w64.b0", !36, i64 0}
!36 = !{!"0x60000052f9c0.w128.b0", !37, i64 0}
!37 = !{!"0x60000052f9c0.w256.b0", !38, i64 0}
!38 = !{!"0x60000052f9c0.w512.b0", !39, i64 0}
!39 = !{!"0x60000052f9c0.w1024.b0", !40, i64 0}
!40 = !{!"0x60000052f9c0", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x60000052f9c0.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x60000052f9c0.w4.b8", !47, i64 0}
!47 = !{!"0x60000052f9c0.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x60000052f9c0.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x60000052f9c0.w4.b16", !54, i64 0}
!54 = !{!"0x60000052f9c0.w8.b16", !55, i64 0}
!55 = !{!"0x60000052f9c0.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x60000052f9c0.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600000535cb0.w8.b0", !95, i64 0}
!95 = !{!"0x600000535cb0.w16.b0", !96, i64 0}
!96 = !{!"0x600000535cb0.w32.b0", !97, i64 0}
!97 = !{!"0x600000535cb0.w64.b0", !98, i64 0}
!98 = !{!"0x600000535cb0.w128.b0", !99, i64 0}
!99 = !{!"0x600000535cb0.w256.b0", !100, i64 0}
!100 = !{!"0x600000535cb0.w512.b0", !101, i64 0}
!101 = !{!"0x600000535cb0.w1024.b0", !102, i64 0}
!102 = !{!"0x600000535cb0", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600000535cb0.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600000535cb0.w8.b16", !107, i64 0}
!107 = !{!"0x600000535cb0.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x6000006189f0.w8.b16", !110, i64 0}
!110 = !{!"0x6000006189f0.w16.b16", !111, i64 0}
!111 = !{!"0x6000006189f0.w32.b0", !112, i64 0}
!112 = !{!"0x6000006189f0.w64.b0", !113, i64 0}
!113 = !{!"0x6000006189f0.w128.b0", !114, i64 0}
!114 = !{!"0x6000006189f0.w256.b0", !115, i64 0}
!115 = !{!"0x6000006189f0.w512.b0", !116, i64 0}
!116 = !{!"0x6000006189f0.w1024.b0", !117, i64 0}
!117 = !{!"0x6000006189f0", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x6000006189f0.w8.b8", !120, i64 0}
!120 = !{!"0x6000006189f0.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x6000006189f0.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x600000619860.w8.b0", !125, i64 0}
!125 = !{!"0x600000619860.w16.b0", !126, i64 0}
!126 = !{!"0x600000619860.w32.b0", !127, i64 0}
!127 = !{!"0x600000619860.w64.b0", !128, i64 0}
!128 = !{!"0x600000619860.w128.b0", !129, i64 0}
!129 = !{!"0x600000619860.w256.b0", !130, i64 0}
!130 = !{!"0x600000619860.w512.b0", !131, i64 0}
!131 = !{!"0x600000619860.w1024.b0", !132, i64 0}
!132 = !{!"0x600000619860", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600000619860.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x600000619860.w8.b16", !137, i64 0}
!137 = !{!"0x600000619860.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x60000079e2e0.w8.b16", !140, i64 0}
!140 = !{!"0x60000079e2e0.w16.b16", !141, i64 0}
!141 = !{!"0x60000079e2e0.w32.b0", !142, i64 0}
!142 = !{!"0x60000079e2e0.w64.b0", !143, i64 0}
!143 = !{!"0x60000079e2e0.w128.b0", !144, i64 0}
!144 = !{!"0x60000079e2e0.w256.b0", !145, i64 0}
!145 = !{!"0x60000079e2e0.w512.b0", !146, i64 0}
!146 = !{!"0x60000079e2e0.w1024.b0", !147, i64 0}
!147 = !{!"0x60000079e2e0", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x60000079e2e0.w8.b8", !150, i64 0}
!150 = !{!"0x60000079e2e0.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x6000006474e0.w8.b0", !153, i64 0}
!153 = !{!"0x6000006474e0.w16.b0", !154, i64 0}
!154 = !{!"0x6000006474e0.w32.b0", !155, i64 0}
!155 = !{!"0x6000006474e0.w64.b0", !156, i64 0}
!156 = !{!"0x6000006474e0.w128.b0", !157, i64 0}
!157 = !{!"0x6000006474e0.w256.b0", !158, i64 0}
!158 = !{!"0x6000006474e0.w512.b0", !159, i64 0}
!159 = !{!"0x6000006474e0.w1024.b0", !160, i64 0}
!160 = !{!"0x6000006474e0", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x6000005d93e0.w8.b0", !163, i64 0}
!163 = !{!"0x6000005d93e0.w16.b0", !164, i64 0}
!164 = !{!"0x6000005d93e0.w32.b0", !165, i64 0}
!165 = !{!"0x6000005d93e0.w64.b0", !166, i64 0}
!166 = !{!"0x6000005d93e0.w128.b0", !167, i64 0}
!167 = !{!"0x6000005d93e0.w256.b0", !168, i64 0}
!168 = !{!"0x6000005d93e0.w512.b0", !169, i64 0}
!169 = !{!"0x6000005d93e0.w1024.b0", !170, i64 0}
!170 = !{!"0x6000005d93e0", !28, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x6000005d93e0.w8.b8", !163, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x6000005dbe70.w8.b8", !175, i64 0}
!175 = !{!"0x6000005dbe70.w16.b0", !176, i64 0}
!176 = !{!"0x6000005dbe70.w32.b0", !177, i64 0}
!177 = !{!"0x6000005dbe70.w64.b0", !178, i64 0}
!178 = !{!"0x6000005dbe70.w128.b0", !179, i64 0}
!179 = !{!"0x6000005dbe70.w256.b0", !180, i64 0}
!180 = !{!"0x6000005dbe70.w512.b0", !181, i64 0}
!181 = !{!"0x6000005dbe70.w1024.b0", !182, i64 0}
!182 = !{!"0x6000005dbe70", !28, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x6000005db330.w8.b0", !185, i64 0}
!185 = !{!"0x6000005db330.w16.b0", !186, i64 0}
!186 = !{!"0x6000005db330.w32.b0", !187, i64 0}
!187 = !{!"0x6000005db330.w64.b0", !188, i64 0}
!188 = !{!"0x6000005db330.w128.b0", !189, i64 0}
!189 = !{!"0x6000005db330.w256.b0", !190, i64 0}
!190 = !{!"0x6000005db330.w512.b0", !191, i64 0}
!191 = !{!"0x6000005db330.w1024.b0", !192, i64 0}
!192 = !{!"0x6000005db330", !28, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x6000005db330.w8.b8", !185, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x6000005d91a0.w8.b8", !197, i64 0}
!197 = !{!"0x6000005d91a0.w16.b0", !198, i64 0}
!198 = !{!"0x6000005d91a0.w32.b0", !199, i64 0}
!199 = !{!"0x6000005d91a0.w64.b0", !200, i64 0}
!200 = !{!"0x6000005d91a0.w128.b0", !201, i64 0}
!201 = !{!"0x6000005d91a0.w256.b0", !202, i64 0}
!202 = !{!"0x6000005d91a0.w512.b0", !203, i64 0}
!203 = !{!"0x6000005d91a0.w1024.b0", !204, i64 0}
!204 = !{!"0x6000005d91a0", !28, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x6000005d5b90.w8.b0", !207, i64 0}
!207 = !{!"0x6000005d5b90.w16.b0", !208, i64 0}
!208 = !{!"0x6000005d5b90.w32.b0", !209, i64 0}
!209 = !{!"0x6000005d5b90.w64.b0", !210, i64 0}
!210 = !{!"0x6000005d5b90.w128.b0", !211, i64 0}
!211 = !{!"0x6000005d5b90.w256.b0", !212, i64 0}
!212 = !{!"0x6000005d5b90.w512.b0", !213, i64 0}
!213 = !{!"0x6000005d5b90.w1024.b0", !214, i64 0}
!214 = !{!"0x6000005d5b90", !28, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x6000005d5b90.w8.b8", !207, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"0x6000005c4180.w8.b8", !219, i64 0}
!219 = !{!"0x6000005c4180.w16.b0", !220, i64 0}
!220 = !{!"0x6000005c4180.w32.b0", !221, i64 0}
!221 = !{!"0x6000005c4180.w64.b0", !222, i64 0}
!222 = !{!"0x6000005c4180.w128.b0", !223, i64 0}
!223 = !{!"0x6000005c4180.w256.b0", !224, i64 0}
!224 = !{!"0x6000005c4180.w512.b0", !225, i64 0}
!225 = !{!"0x6000005c4180.w1024.b0", !226, i64 0}
!226 = !{!"0x6000005c4180", !28, i64 0}
!227 = !{i32 -1, i32 1}
!228 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m1024_k11008_n1_b2_compute_", scope: !1, file: !1, type: !229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!14, !14, !77, !72, !82, !82, !82, !82}
!231 = !{!232, !233, !234, !235, !236, !237, !238}
!232 = !DILocalVariable(name: "dev_id", arg: 1, scope: !228, file: !1, type: !14)
!233 = !DILocalVariable(name: "LUT", arg: 2, scope: !228, file: !1, type: !77)
!234 = !DILocalVariable(name: "A", arg: 3, scope: !228, file: !1, type: !72)
!235 = !DILocalVariable(name: "Scales", arg: 4, scope: !228, file: !1, type: !82)
!236 = !DILocalVariable(name: "LUT_Scales", arg: 5, scope: !228, file: !1, type: !82)
!237 = !DILocalVariable(name: "LUT_Biases", arg: 6, scope: !228, file: !1, type: !82)
!238 = !DILocalVariable(name: "C", arg: 7, scope: !228, file: !1, type: !82)
!239 = !DILocation(line: 0, scope: !228)
!240 = !DILocalVariable(name: "CBits", scope: !228, file: !1, type: !82)
!241 = !{!242, !242, i64 0}
!242 = !{!"__fp16", !243, i64 0}
!243 = !{!"omnipotent char", !244, i64 0}
!244 = !{!"Simple C++ TBAA"}
!245 = !DILocalVariable(name: "m.outer", scope: !228, file: !1, type: !14)
!246 = !DILocalVariable(name: "k.outer", scope: !228, file: !1, type: !14)
!247 = distinct !{!247, !248}
!248 = !{!"llvm.loop.mustprogress"}
!249 = !DILocalVariable(name: "m.inner.outer", scope: !228, file: !1, type: !14)
!250 = !DILocalVariable(name: "m.c.outer", scope: !228, file: !1, type: !14)
!251 = !DILocalVariable(name: "cse_var_1", scope: !228, file: !1, type: !252)
!252 = !DIBasicType(name: "int32x32", size: 1024, encoding: DW_ATE_signed)
!253 = !{!254, !254, i64 0}
!254 = !{!"0x60000053e670", !28, i64 0}
!255 = !{!256, !256, i64 0}
!256 = !{!"0x600000535620", !28, i64 0}
