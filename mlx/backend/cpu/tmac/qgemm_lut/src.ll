; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [85 x i8] c"Assert fail: num_args == 6, qgemm_lut_t1_int8_m320_k3200_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [103 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t1_int8_m320_k3200_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [105 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t1_int8_m320_k3200_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [136 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t1_int8_m320_k3200_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [144 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t1_int8_m320_k3200_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [156 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t1_int8_m320_k3200_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [172 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t1_int8_m320_k3200_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [172 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t1_int8_m320_k3200_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [136 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t1_int8_m320_k3200_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [117 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m320_k3200_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [119 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t1_int8_m320_k3200_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [121 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [123 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [127 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [129 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [135 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [137 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [135 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [137 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [117 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m320_k3200_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [119 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t1_int8_m320_k3200_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [238 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m320_k3200_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [236 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_shape[0]) == 2, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape[0] has an unsatisfied constraint: 2 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [240 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_shape[1]) == 800, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [238 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_shape[2]) == 80, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape[2] has an unsatisfied constraint: 80 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [312 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_strides[2]) and 80 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_strides[1]) and 64000 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_A_strides[0]), qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [205 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [185 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [112 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m320_k3200_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [245 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_shape[1]) == 800, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [244 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [240 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_strides[1]), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [211 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [191 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [197 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [116 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [261 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [220 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [200 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [206 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [122 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [277 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [265 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Scales_shape[1]) == 50, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [177 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [232 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [212 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [218 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [130 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [277 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [265 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Biases_shape[1]) == 50, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [177 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [232 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [212 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [218 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [130 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [241 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m320_k3200_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [236 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_C_shape[0])\00", align 1
@.str.63 = private constant [240 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_C_shape[1]) == 160, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape[1] has an unsatisfied constraint: 160 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_C_shape[1])\00", align 1
@.str.64 = private constant [159 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m320_k3200_n1_b2_C_strides[1]), qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [205 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [185 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [191 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m320_k3200_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [112 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m320_k3200_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [35 x i8] c"qgemm_lut_t1_int8_m320_k3200_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t1_int8_m320_k3200_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail7 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail47 ], [ -1, %assert_fail49 ], [ -1, %assert_fail53 ], [ -1, %assert_fail55 ], [ -1, %assert_fail57 ], [ -1, %assert_fail59 ], [ -1, %assert_fail61 ], [ -1, %assert_fail63 ], [ -1, %assert_fail65 ], [ -1, %assert_fail67 ], [ -1, %assert_fail69 ], [ -1, %assert_fail71 ], [ -1, %assert_fail73 ], [ -1, %assert_fail75 ], [ -1, %assert_fail79 ], [ -1, %assert_fail81 ], [ -1, %assert_fail83 ], [ -1, %assert_fail85 ], [ -1, %assert_fail87 ], [ -1, %assert_fail89 ], [ -1, %assert_fail91 ], [ -1, %assert_fail97 ], [ -1, %assert_fail99 ], [ -1, %assert_fail101 ], [ -1, %assert_fail103 ], [ -1, %assert_fail105 ], [ -1, %assert_fail107 ], [ -1, %assert_fail109 ], [ -1, %assert_fail113 ], [ -1, %assert_fail115 ], [ -1, %assert_fail117 ], [ -1, %assert_fail119 ], [ -1, %assert_fail121 ], [ -1, %assert_fail123 ], [ -1, %assert_fail125 ], [ -1, %assert_fail127 ], [ -1, %assert_fail131 ], [ -1, %assert_fail133 ], [ -1, %assert_fail135 ], [ -1, %assert_fail137 ], [ -1, %assert_fail139 ], [ -1, %assert_fail141 ], [ -1, %assert_fail143 ], [ -1, %assert_fail145 ], [ -1, %assert_fail149 ], [ -1, %assert_fail151 ], [ -1, %assert_fail153 ], [ -1, %assert_fail155 ], [ -1, %assert_fail157 ], [ 0, %assert_end158 ]
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
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %74 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 2, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 800, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 80, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 80, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  %97 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides, align 8, !dbg !24, !tbaa !121
  %98 = and i64 %97, 4294967295, !dbg !24
  %99 = icmp eq i64 %98, 64000, !dbg !24
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
  %123 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !123
  %124 = and i64 %123, 4294967295, !dbg !24
  %125 = icmp eq i64 %124, 1, !dbg !24
  br i1 %125, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %126 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %126(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %127 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape, i64 1, !dbg !24
  %128 = load i64, ptr %127, align 8, !dbg !24, !tbaa !133
  %129 = and i64 %128, 4294967295, !dbg !24
  %130 = icmp eq i64 %129, 800, !dbg !24
  br i1 %130, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %131 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %131(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %132 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape, i64 2, !dbg !24
  %133 = load i64, ptr %132, align 8, !dbg !24, !tbaa !135
  %134 = and i64 %133, 4294967295, !dbg !24
  %135 = icmp eq i64 %134, 16, !dbg !24
  br i1 %135, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %136 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %136(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides, i64 2, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !138
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 1, !dbg !24
  %141 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides, i64 1, !dbg !24
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
  %172 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !151
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
  %201 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !161
  %202 = and i64 %201, 4294967295, !dbg !24
  %203 = icmp eq i64 %202, 1, !dbg !24
  br i1 %203, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %204 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %204(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %205 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %206 = load i64, ptr %205, align 8, !dbg !24, !tbaa !171
  %207 = and i64 %206, 4294967295, !dbg !24
  %208 = icmp eq i64 %207, 50, !dbg !24
  br i1 %208, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %209 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %209(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %210 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
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
  %240 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !183
  %241 = and i64 %240, 4294967295, !dbg !24
  %242 = icmp eq i64 %241, 1, !dbg !24
  br i1 %242, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %243 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %243(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %244 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %245 = load i64, ptr %244, align 8, !dbg !24, !tbaa !193
  %246 = and i64 %245, 4294967295, !dbg !24
  %247 = icmp eq i64 %246, 50, !dbg !24
  br i1 %247, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %248 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %248(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %249 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
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
  %279 = load i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape, align 8, !dbg !24, !tbaa !205
  %280 = and i64 %279, 4294967295, !dbg !24
  %281 = icmp eq i64 %280, 1, !dbg !24
  br i1 %281, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %282 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %282(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %283 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape, i64 1, !dbg !24
  %284 = load i64, ptr %283, align 8, !dbg !24, !tbaa !215
  %285 = and i64 %284, 4294967295, !dbg !24
  %286 = icmp eq i64 %285, 160, !dbg !24
  br i1 %286, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %287 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %287(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %288 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides, i64 1, !dbg !24
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
  tail call fastcc void @qgemm_lut_t1_int8_m320_k3200_n1_b2_compute_(ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite)
define internal fastcc void @qgemm_lut_t1_int8_m320_k3200_n1_b2_compute_(ptr noalias nocapture readonly align 64 %LUT, ptr noalias nocapture readonly align 64 %A, ptr noalias nocapture readonly align 64 %Scales, ptr noalias nocapture readonly align 64 %LUT_Scales, ptr noalias nocapture readonly align 64 %LUT_Biases, ptr noalias nocapture writeonly align 64 %C) unnamed_addr #3 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !231, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %A, metadata !232, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !233, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata ptr %C, metadata !236, metadata !DIExpression()), !dbg !237
  %C.global5 = alloca [80 x half], align 16, !dbg !237
  %CBits6 = alloca [160 x half], align 16, !dbg !237
  call void @llvm.dbg.declare(metadata ptr %CBits6, metadata !238, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata ptr %C.global5, metadata !239, metadata !DIExpression()), !dbg !237
  %0 = load half, ptr %Scales, align 64, !tbaa !240
  %1 = insertelement <8 x half> poison, half %0, i64 0
  %2 = shufflevector <8 x half> %1, <8 x half> poison, <8 x i32> zeroinitializer
  call void @llvm.dbg.declare(metadata i32 0, metadata !244, metadata !DIExpression()), !dbg !237
  %3 = getelementptr inbounds half, ptr %C.global5, i64 32
  %4 = getelementptr inbounds half, ptr %C.global5, i64 36
  %5 = getelementptr inbounds half, ptr %C.global5, i64 40
  %6 = getelementptr inbounds half, ptr %C.global5, i64 44
  %7 = getelementptr inbounds half, ptr %C.global5, i64 48
  %8 = getelementptr inbounds half, ptr %C.global5, i64 52
  %9 = getelementptr inbounds half, ptr %C.global5, i64 56
  %10 = getelementptr inbounds half, ptr %C.global5, i64 60
  br label %for_body_m.outer, !dbg !237

for_body_m.outer:                                 ; preds = %entry, %for_end_m.inner.inner.s.2
  %11 = phi i1 [ true, %entry ], [ false, %for_end_m.inner.inner.s.2 ]
  %indvars.iv31 = phi i64 [ 0, %entry ], [ 1, %for_end_m.inner.inner.s.2 ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv31, metadata !244, metadata !DIExpression()), !dbg !237
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %CBits6, i8 0, i64 320, i1 false), !dbg !237
  %12 = mul nuw nsw i64 %indvars.iv31, 64000
  call void @llvm.dbg.declare(metadata i32 0, metadata !245, metadata !DIExpression()), !dbg !237
  br label %for_body_k.outer, !dbg !237

for_end_m.outer:                                  ; preds = %for_end_m.inner.inner.s.2
  ret void, !dbg !237

for_body_k.outer:                                 ; preds = %for_body_m.outer, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %for_body_m.outer ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !245, metadata !DIExpression()), !dbg !237
  %13 = shl nuw nsw i64 %indvars.iv, 8, !dbg !237
  %14 = getelementptr inbounds i8, ptr %LUT, i64 %13, !dbg !237
  %15 = mul nuw nsw i64 %indvars.iv, 1280, !dbg !237
  %16 = add nuw nsw i64 %15, %12, !dbg !237
  %17 = getelementptr inbounds i8, ptr %A, i64 %16, !dbg !237
  %18 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !237
  %19 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !237
  %20 = load <16 x i8>, ptr %14, align 64, !dbg !237
  %21 = getelementptr inbounds i8, ptr %14, i64 16, !dbg !237
  %22 = load <16 x i8>, ptr %21, align 16, !dbg !237
  %23 = getelementptr inbounds i8, ptr %14, i64 32, !dbg !237
  %24 = load <16 x i8>, ptr %23, align 32, !dbg !237
  %25 = getelementptr inbounds i8, ptr %14, i64 48, !dbg !237
  %26 = load <16 x i8>, ptr %25, align 16, !dbg !237
  %27 = getelementptr inbounds i8, ptr %14, i64 64, !dbg !237
  %28 = load <16 x i8>, ptr %27, align 64, !dbg !237
  %29 = getelementptr inbounds i8, ptr %14, i64 80, !dbg !237
  %30 = load <16 x i8>, ptr %29, align 16, !dbg !237
  %31 = getelementptr inbounds i8, ptr %14, i64 96, !dbg !237
  %32 = load <16 x i8>, ptr %31, align 32, !dbg !237
  %33 = getelementptr inbounds i8, ptr %14, i64 112, !dbg !237
  %34 = load <16 x i8>, ptr %33, align 16, !dbg !237
  %35 = getelementptr inbounds i8, ptr %14, i64 128, !dbg !237
  %36 = load <16 x i8>, ptr %35, align 64, !dbg !237
  %37 = getelementptr inbounds i8, ptr %14, i64 144, !dbg !237
  %38 = load <16 x i8>, ptr %37, align 16, !dbg !237
  %39 = getelementptr inbounds i8, ptr %14, i64 160, !dbg !237
  %40 = load <16 x i8>, ptr %39, align 32, !dbg !237
  %41 = getelementptr inbounds i8, ptr %14, i64 176, !dbg !237
  %42 = load <16 x i8>, ptr %41, align 16, !dbg !237
  %43 = getelementptr inbounds i8, ptr %14, i64 192, !dbg !237
  %44 = load <16 x i8>, ptr %43, align 64, !dbg !237
  %45 = getelementptr inbounds i8, ptr %14, i64 208, !dbg !237
  %46 = load <16 x i8>, ptr %45, align 16, !dbg !237
  %47 = getelementptr inbounds i8, ptr %14, i64 224, !dbg !237
  %48 = load <16 x i8>, ptr %47, align 32, !dbg !237
  %49 = getelementptr inbounds i8, ptr %14, i64 240, !dbg !237
  %50 = load <16 x i8>, ptr %49, align 16, !dbg !237
  %51 = load half, ptr %18, align 2, !tbaa !240
  %52 = load half, ptr %19, align 2, !tbaa !240
  %53 = insertelement <8 x half> poison, half %51, i64 0
  %54 = insertelement <8 x half> poison, half %52, i64 0
  %55 = shufflevector <8 x half> %53, <8 x half> poison, <8 x i32> zeroinitializer
  %56 = shufflevector <8 x half> %54, <8 x half> poison, <8 x i32> zeroinitializer
  br label %57, !dbg !237

57:                                               ; preds = %57, %for_body_k.outer
  %58 = phi i64 [ 0, %for_body_k.outer ], [ %365, %57 ], !dbg !237
  %59 = shl nuw nsw i64 %58, 4, !dbg !237
  %60 = getelementptr inbounds i8, ptr %17, i64 %59, !dbg !237
  %61 = load <16 x i8>, ptr %60, align 64, !dbg !237
  %62 = lshr <16 x i8> %61, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %63 = and <16 x i8> %61, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %64 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %20, <16 x i8> %63), !dbg !237
  %65 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %20, <16 x i8> %62), !dbg !237
  %66 = getelementptr inbounds i8, ptr %60, i64 16, !dbg !237
  %67 = load <16 x i8>, ptr %66, align 16, !dbg !237
  %68 = lshr <16 x i8> %67, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %69 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %22, <16 x i8> %68), !dbg !237
  %70 = and <16 x i8> %67, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %71 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %22, <16 x i8> %70), !dbg !237
  %72 = shufflevector <16 x i8> %64, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %73 = shufflevector <16 x i8> %71, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %74 = sext <8 x i8> %72 to <8 x i16>, !dbg !237
  %75 = sext <8 x i8> %73 to <8 x i16>, !dbg !237
  %76 = shufflevector <16 x i8> %64, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %77 = sext <8 x i8> %76 to <8 x i16>, !dbg !237
  %78 = shufflevector <16 x i8> %71, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %79 = sext <8 x i8> %78 to <8 x i16>, !dbg !237
  %80 = add nsw <8 x i16> %75, %74, !dbg !237
  %81 = add nsw <8 x i16> %79, %77, !dbg !237
  %82 = shufflevector <16 x i8> %65, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %83 = shufflevector <16 x i8> %69, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %84 = sext <8 x i8> %82 to <8 x i16>, !dbg !237
  %85 = sext <8 x i8> %83 to <8 x i16>, !dbg !237
  %86 = shufflevector <16 x i8> %65, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %87 = sext <8 x i8> %86 to <8 x i16>, !dbg !237
  %88 = shufflevector <16 x i8> %69, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %89 = sext <8 x i8> %88 to <8 x i16>, !dbg !237
  %90 = getelementptr inbounds i8, ptr %60, i64 32, !dbg !237
  %91 = load <16 x i8>, ptr %90, align 32, !dbg !237
  %92 = lshr <16 x i8> %91, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %93 = and <16 x i8> %91, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %94 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %24, <16 x i8> %93), !dbg !237
  %95 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %24, <16 x i8> %92), !dbg !237
  %96 = getelementptr inbounds i8, ptr %60, i64 48, !dbg !237
  %97 = load <16 x i8>, ptr %96, align 16, !dbg !237
  %98 = and <16 x i8> %97, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %99 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %26, <16 x i8> %98), !dbg !237
  %100 = shufflevector <16 x i8> %94, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %101 = shufflevector <16 x i8> %99, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %102 = sext <8 x i8> %100 to <8 x i16>, !dbg !237
  %103 = sext <8 x i8> %101 to <8 x i16>, !dbg !237
  %104 = shufflevector <16 x i8> %94, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %105 = sext <8 x i8> %104 to <8 x i16>, !dbg !237
  %106 = shufflevector <16 x i8> %99, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %107 = sext <8 x i8> %106 to <8 x i16>, !dbg !237
  %108 = add nsw <8 x i16> %80, %102, !dbg !237
  %109 = add nsw <8 x i16> %108, %103, !dbg !237
  %110 = add nsw <8 x i16> %81, %105, !dbg !237
  %111 = add nsw <8 x i16> %110, %107, !dbg !237
  %112 = lshr <16 x i8> %97, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %113 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %26, <16 x i8> %112), !dbg !237
  %114 = shufflevector <16 x i8> %113, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %115 = sext <8 x i8> %114 to <8 x i16>, !dbg !237
  %116 = shufflevector <16 x i8> %95, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %117 = sext <8 x i8> %116 to <8 x i16>, !dbg !237
  %118 = shufflevector <16 x i8> %113, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %119 = sext <8 x i8> %118 to <8 x i16>, !dbg !237
  %120 = shufflevector <16 x i8> %95, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %121 = sext <8 x i8> %120 to <8 x i16>, !dbg !237
  %122 = getelementptr inbounds i8, ptr %60, i64 64, !dbg !237
  %123 = load <16 x i8>, ptr %122, align 64, !dbg !237
  %124 = lshr <16 x i8> %123, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %125 = and <16 x i8> %123, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %126 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %28, <16 x i8> %125), !dbg !237
  %127 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %28, <16 x i8> %124), !dbg !237
  %128 = getelementptr inbounds i8, ptr %60, i64 80, !dbg !237
  %129 = load <16 x i8>, ptr %128, align 16, !dbg !237
  %130 = and <16 x i8> %129, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %131 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %30, <16 x i8> %130), !dbg !237
  %132 = shufflevector <16 x i8> %126, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %133 = shufflevector <16 x i8> %131, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %134 = sext <8 x i8> %132 to <8 x i16>, !dbg !237
  %135 = sext <8 x i8> %133 to <8 x i16>, !dbg !237
  %136 = shufflevector <16 x i8> %126, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %137 = sext <8 x i8> %136 to <8 x i16>, !dbg !237
  %138 = shufflevector <16 x i8> %131, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %139 = sext <8 x i8> %138 to <8 x i16>, !dbg !237
  %140 = add nsw <8 x i16> %109, %134, !dbg !237
  %141 = add nsw <8 x i16> %140, %135, !dbg !237
  %142 = add nsw <8 x i16> %111, %137, !dbg !237
  %143 = add nsw <8 x i16> %142, %139, !dbg !237
  %144 = lshr <16 x i8> %129, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %145 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %30, <16 x i8> %144), !dbg !237
  %146 = shufflevector <16 x i8> %145, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %147 = sext <8 x i8> %146 to <8 x i16>, !dbg !237
  %148 = shufflevector <16 x i8> %127, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %149 = sext <8 x i8> %148 to <8 x i16>, !dbg !237
  %150 = shufflevector <16 x i8> %145, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %151 = sext <8 x i8> %150 to <8 x i16>, !dbg !237
  %152 = shufflevector <16 x i8> %127, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %153 = sext <8 x i8> %152 to <8 x i16>, !dbg !237
  %154 = getelementptr inbounds i8, ptr %60, i64 96, !dbg !237
  %155 = load <16 x i8>, ptr %154, align 32, !dbg !237
  %156 = lshr <16 x i8> %155, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %157 = and <16 x i8> %155, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %158 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %32, <16 x i8> %157), !dbg !237
  %159 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %32, <16 x i8> %156), !dbg !237
  %160 = getelementptr inbounds i8, ptr %60, i64 112, !dbg !237
  %161 = load <16 x i8>, ptr %160, align 16, !dbg !237
  %162 = and <16 x i8> %161, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %163 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %34, <16 x i8> %162), !dbg !237
  %164 = shufflevector <16 x i8> %158, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %165 = shufflevector <16 x i8> %163, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %166 = sext <8 x i8> %164 to <8 x i16>, !dbg !237
  %167 = sext <8 x i8> %165 to <8 x i16>, !dbg !237
  %168 = shufflevector <16 x i8> %158, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %169 = sext <8 x i8> %168 to <8 x i16>, !dbg !237
  %170 = shufflevector <16 x i8> %163, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %171 = sext <8 x i8> %170 to <8 x i16>, !dbg !237
  %172 = add nsw <8 x i16> %141, %166, !dbg !237
  %173 = add <8 x i16> %172, %167, !dbg !237
  %174 = add nsw <8 x i16> %143, %169, !dbg !237
  %175 = add <8 x i16> %174, %171, !dbg !237
  %176 = lshr <16 x i8> %161, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %177 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %34, <16 x i8> %176), !dbg !237
  %178 = shufflevector <16 x i8> %177, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %179 = sext <8 x i8> %178 to <8 x i16>, !dbg !237
  %180 = shufflevector <16 x i8> %159, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %181 = sext <8 x i8> %180 to <8 x i16>, !dbg !237
  %182 = shufflevector <16 x i8> %177, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %183 = sext <8 x i8> %182 to <8 x i16>, !dbg !237
  %184 = shufflevector <16 x i8> %159, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %185 = sext <8 x i8> %184 to <8 x i16>, !dbg !237
  %186 = getelementptr inbounds i8, ptr %60, i64 128, !dbg !237
  %187 = load <16 x i8>, ptr %186, align 64, !dbg !237
  %188 = lshr <16 x i8> %187, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %189 = and <16 x i8> %187, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %190 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %36, <16 x i8> %189), !dbg !237
  %191 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %36, <16 x i8> %188), !dbg !237
  %192 = getelementptr inbounds i8, ptr %60, i64 144, !dbg !237
  %193 = load <16 x i8>, ptr %192, align 16, !dbg !237
  %194 = and <16 x i8> %193, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %195 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %38, <16 x i8> %194), !dbg !237
  %196 = shufflevector <16 x i8> %190, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %197 = shufflevector <16 x i8> %195, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %198 = sext <8 x i8> %196 to <8 x i16>, !dbg !237
  %199 = sext <8 x i8> %197 to <8 x i16>, !dbg !237
  %200 = shufflevector <16 x i8> %190, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %201 = sext <8 x i8> %200 to <8 x i16>, !dbg !237
  %202 = shufflevector <16 x i8> %195, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %203 = sext <8 x i8> %202 to <8 x i16>, !dbg !237
  %204 = add <8 x i16> %173, %198, !dbg !237
  %205 = add <8 x i16> %204, %199, !dbg !237
  %206 = add <8 x i16> %175, %201, !dbg !237
  %207 = add <8 x i16> %206, %203, !dbg !237
  %208 = lshr <16 x i8> %193, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %209 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %38, <16 x i8> %208), !dbg !237
  %210 = shufflevector <16 x i8> %209, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %211 = sext <8 x i8> %210 to <8 x i16>, !dbg !237
  %212 = shufflevector <16 x i8> %191, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %213 = sext <8 x i8> %212 to <8 x i16>, !dbg !237
  %214 = shufflevector <16 x i8> %209, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %215 = sext <8 x i8> %214 to <8 x i16>, !dbg !237
  %216 = shufflevector <16 x i8> %191, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %217 = sext <8 x i8> %216 to <8 x i16>, !dbg !237
  %218 = getelementptr inbounds i8, ptr %60, i64 160, !dbg !237
  %219 = load <16 x i8>, ptr %218, align 32, !dbg !237
  %220 = lshr <16 x i8> %219, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %221 = and <16 x i8> %219, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %222 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %40, <16 x i8> %221), !dbg !237
  %223 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %40, <16 x i8> %220), !dbg !237
  %224 = getelementptr inbounds i8, ptr %60, i64 176, !dbg !237
  %225 = load <16 x i8>, ptr %224, align 16, !dbg !237
  %226 = and <16 x i8> %225, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %227 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %42, <16 x i8> %226), !dbg !237
  %228 = shufflevector <16 x i8> %222, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %229 = shufflevector <16 x i8> %227, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %230 = sext <8 x i8> %228 to <8 x i16>, !dbg !237
  %231 = sext <8 x i8> %229 to <8 x i16>, !dbg !237
  %232 = shufflevector <16 x i8> %222, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %233 = sext <8 x i8> %232 to <8 x i16>, !dbg !237
  %234 = shufflevector <16 x i8> %227, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %235 = sext <8 x i8> %234 to <8 x i16>, !dbg !237
  %236 = add <8 x i16> %205, %230, !dbg !237
  %237 = add <8 x i16> %236, %231, !dbg !237
  %238 = add <8 x i16> %207, %233, !dbg !237
  %239 = add <8 x i16> %238, %235, !dbg !237
  %240 = lshr <16 x i8> %225, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %241 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %42, <16 x i8> %240), !dbg !237
  %242 = shufflevector <16 x i8> %241, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %243 = sext <8 x i8> %242 to <8 x i16>, !dbg !237
  %244 = shufflevector <16 x i8> %223, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %245 = sext <8 x i8> %244 to <8 x i16>, !dbg !237
  %246 = shufflevector <16 x i8> %241, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %247 = sext <8 x i8> %246 to <8 x i16>, !dbg !237
  %248 = shufflevector <16 x i8> %223, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %249 = sext <8 x i8> %248 to <8 x i16>, !dbg !237
  %250 = getelementptr inbounds i8, ptr %60, i64 192, !dbg !237
  %251 = load <16 x i8>, ptr %250, align 64, !dbg !237
  %252 = lshr <16 x i8> %251, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %253 = and <16 x i8> %251, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %254 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %44, <16 x i8> %253), !dbg !237
  %255 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %44, <16 x i8> %252), !dbg !237
  %256 = getelementptr inbounds i8, ptr %60, i64 208, !dbg !237
  %257 = load <16 x i8>, ptr %256, align 16, !dbg !237
  %258 = and <16 x i8> %257, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %259 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %46, <16 x i8> %258), !dbg !237
  %260 = shufflevector <16 x i8> %254, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %261 = shufflevector <16 x i8> %259, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %262 = sext <8 x i8> %260 to <8 x i16>, !dbg !237
  %263 = sext <8 x i8> %261 to <8 x i16>, !dbg !237
  %264 = shufflevector <16 x i8> %254, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %265 = sext <8 x i8> %264 to <8 x i16>, !dbg !237
  %266 = shufflevector <16 x i8> %259, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %267 = sext <8 x i8> %266 to <8 x i16>, !dbg !237
  %268 = add <8 x i16> %237, %262, !dbg !237
  %269 = add <8 x i16> %268, %263, !dbg !237
  %270 = add <8 x i16> %239, %265, !dbg !237
  %271 = add <8 x i16> %270, %267, !dbg !237
  %272 = lshr <16 x i8> %257, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %273 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %46, <16 x i8> %272), !dbg !237
  %274 = shufflevector <16 x i8> %273, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %275 = sext <8 x i8> %274 to <8 x i16>, !dbg !237
  %276 = shufflevector <16 x i8> %255, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %277 = sext <8 x i8> %276 to <8 x i16>, !dbg !237
  %278 = shufflevector <16 x i8> %273, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %279 = sext <8 x i8> %278 to <8 x i16>, !dbg !237
  %280 = shufflevector <16 x i8> %255, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %281 = sext <8 x i8> %280 to <8 x i16>, !dbg !237
  %282 = getelementptr inbounds i8, ptr %60, i64 224, !dbg !237
  %283 = load <16 x i8>, ptr %282, align 32, !dbg !237
  %284 = lshr <16 x i8> %283, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %285 = and <16 x i8> %283, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %286 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %48, <16 x i8> %285), !dbg !237
  %287 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %48, <16 x i8> %284), !dbg !237
  %288 = getelementptr inbounds i8, ptr %60, i64 240, !dbg !237
  %289 = load <16 x i8>, ptr %288, align 16, !dbg !237
  %290 = and <16 x i8> %289, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !237
  %291 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %50, <16 x i8> %290), !dbg !237
  %292 = shufflevector <16 x i8> %286, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %293 = shufflevector <16 x i8> %291, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %294 = sext <8 x i8> %292 to <8 x i16>, !dbg !237
  %295 = sext <8 x i8> %293 to <8 x i16>, !dbg !237
  %296 = shufflevector <16 x i8> %286, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %297 = sext <8 x i8> %296 to <8 x i16>, !dbg !237
  %298 = shufflevector <16 x i8> %291, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %299 = sext <8 x i8> %298 to <8 x i16>, !dbg !237
  %300 = add <8 x i16> %269, %294, !dbg !237
  %301 = add <8 x i16> %300, %295, !dbg !237
  %302 = add <8 x i16> %271, %297, !dbg !237
  %303 = add <8 x i16> %302, %299, !dbg !237
  %304 = lshr <16 x i8> %289, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !237
  %305 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %50, <16 x i8> %304), !dbg !237
  %306 = shufflevector <16 x i8> %305, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %307 = sext <8 x i8> %306 to <8 x i16>, !dbg !237
  %308 = shufflevector <16 x i8> %287, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !237
  %309 = sext <8 x i8> %308 to <8 x i16>, !dbg !237
  %310 = add nsw <8 x i16> %89, %87, !dbg !237
  %311 = add nsw <8 x i16> %310, %117, !dbg !237
  %312 = add nsw <8 x i16> %311, %115, !dbg !237
  %313 = add nsw <8 x i16> %312, %149, !dbg !237
  %314 = add nsw <8 x i16> %313, %147, !dbg !237
  %315 = add nsw <8 x i16> %314, %181, !dbg !237
  %316 = add <8 x i16> %315, %179, !dbg !237
  %317 = add <8 x i16> %316, %213, !dbg !237
  %318 = add <8 x i16> %317, %211, !dbg !237
  %319 = add <8 x i16> %318, %245, !dbg !237
  %320 = add <8 x i16> %319, %243, !dbg !237
  %321 = add <8 x i16> %320, %277, !dbg !237
  %322 = add <8 x i16> %321, %275, !dbg !237
  %323 = add <8 x i16> %322, %309, !dbg !237
  %324 = add <8 x i16> %323, %307, !dbg !237
  %325 = shufflevector <16 x i8> %305, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %326 = sext <8 x i8> %325 to <8 x i16>, !dbg !237
  %327 = shufflevector <16 x i8> %287, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !237
  %328 = sext <8 x i8> %327 to <8 x i16>, !dbg !237
  %329 = add nsw <8 x i16> %85, %84, !dbg !237
  %330 = add nsw <8 x i16> %329, %121, !dbg !237
  %331 = add nsw <8 x i16> %330, %119, !dbg !237
  %332 = add nsw <8 x i16> %331, %153, !dbg !237
  %333 = add nsw <8 x i16> %332, %151, !dbg !237
  %334 = add nsw <8 x i16> %333, %185, !dbg !237
  %335 = add <8 x i16> %334, %183, !dbg !237
  %336 = add <8 x i16> %335, %217, !dbg !237
  %337 = add <8 x i16> %336, %215, !dbg !237
  %338 = add <8 x i16> %337, %249, !dbg !237
  %339 = add <8 x i16> %338, %247, !dbg !237
  %340 = add <8 x i16> %339, %281, !dbg !237
  %341 = add <8 x i16> %340, %279, !dbg !237
  %342 = add <8 x i16> %341, %328, !dbg !237
  %343 = add <8 x i16> %342, %326, !dbg !237
  %344 = sitofp <8 x i16> %301 to <8 x half>, !dbg !237
  %345 = sitofp <8 x i16> %303 to <8 x half>, !dbg !237
  %346 = sitofp <8 x i16> %343 to <8 x half>, !dbg !237
  %347 = sitofp <8 x i16> %324 to <8 x half>, !dbg !237
  %348 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %344, <8 x half> %55, <8 x half> %56), !dbg !237
  %349 = fmul <8 x half> %55, %345, !dbg !237
  %350 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %346, <8 x half> %55, <8 x half> %56), !dbg !237
  %351 = fmul <8 x half> %55, %347, !dbg !237
  %352 = shl nuw nsw i64 %58, 1, !dbg !237
  %353 = getelementptr inbounds half, ptr %CBits6, i64 %352, !dbg !237
  %354 = load <8 x half>, ptr %353, align 16, !dbg !237
  %355 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %348, <8 x half> %2, <8 x half> %354), !dbg !237
  store <8 x half> %355, ptr %353, align 16, !dbg !237
  %356 = getelementptr inbounds half, ptr %353, i64 8, !dbg !237
  %357 = load <8 x half>, ptr %356, align 16, !dbg !237
  %358 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %349, <8 x half> %2, <8 x half> %357), !dbg !237
  store <8 x half> %358, ptr %356, align 16, !dbg !237
  %359 = getelementptr inbounds half, ptr %353, i64 16, !dbg !237
  %360 = load <8 x half>, ptr %359, align 16, !dbg !237
  %361 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %350, <8 x half> %2, <8 x half> %360), !dbg !237
  store <8 x half> %361, ptr %359, align 16, !dbg !237
  %362 = getelementptr inbounds half, ptr %353, i64 24, !dbg !237
  %363 = load <8 x half>, ptr %362, align 16, !dbg !237
  %364 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %351, <8 x half> %2, <8 x half> %363), !dbg !237
  store <8 x half> %364, ptr %362, align 16, !dbg !237
  %365 = add nuw nsw i64 %58, 16, !dbg !237
  %366 = icmp ult i64 %58, 64, !dbg !237
  br i1 %366, label %57, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !237, !llvm.loop !246

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %57
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !245, metadata !DIExpression()), !dbg !237
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50, !dbg !237
  br i1 %exitcond.not, label %for_body_m.c.inner.s, label %for_body_k.outer, !dbg !237, !prof !29

for_body_m.c.inner.s:                             ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, %if_end
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %if_end ], [ 0, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv14, metadata !248, metadata !DIExpression()), !dbg !237
  %367 = trunc i64 %indvars.iv14 to i32, !dbg !237
  %368 = icmp ult i32 %367, 80, !dbg !237
  br i1 %368, label %if_then, label %if_end, !dbg !237, !prof !25

for_body_m.c.inner.s.1:                           ; preds = %if_end, %if_end.1
  %indvars.iv14.1 = phi i64 [ %indvars.iv.next15.1, %if_end.1 ], [ 0, %if_end ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv14.1, metadata !248, metadata !DIExpression()), !dbg !237
  %369 = trunc i64 %indvars.iv14.1 to i32, !dbg !237
  %370 = icmp ult i32 %369, 48, !dbg !237
  br i1 %370, label %if_then.1, label %if_end.1, !dbg !237, !prof !25

if_then.1:                                        ; preds = %for_body_m.c.inner.s.1
  %indvars.iv14.1.tr = trunc i64 %indvars.iv14.1 to i32, !dbg !237
  %371 = shl i32 %indvars.iv14.1.tr, 1, !dbg !237
  %372 = and i32 %371, 2147483632, !dbg !237
  %373 = add nuw nsw i32 %372, 64, !dbg !237
  %374 = and i32 %369, 7, !dbg !237
  %cse_var_1.1 = or i32 %373, %374, !dbg !237
  call void @llvm.dbg.declare(metadata i32 %cse_var_1.1, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32 %cse_var_1.1, metadata !249, metadata !DIExpression()), !dbg !237
  %375 = zext i32 %cse_var_1.1 to i64, !dbg !237
  %376 = getelementptr inbounds half, ptr %CBits6, i64 %375, !dbg !237
  %377 = load half, ptr %376, align 2, !dbg !237, !tbaa !250
  %378 = or i32 %cse_var_1.1, 8, !dbg !237
  %379 = zext i32 %378 to i64, !dbg !237
  %380 = getelementptr inbounds half, ptr %CBits6, i64 %379, !dbg !237
  %381 = load half, ptr %380, align 2, !dbg !237, !tbaa !250
  %382 = tail call half @llvm.fmuladd.f16(half %377, half 0xH3800, half %381), !dbg !237
  %383 = add nuw nsw i64 %indvars.iv14.1, 32, !dbg !237
  %384 = getelementptr inbounds half, ptr %C.global5, i64 %383, !dbg !237
  store half %382, ptr %384, align 2, !dbg !237, !tbaa !252
  br label %if_end.1, !dbg !237

if_end.1:                                         ; preds = %if_then.1, %for_body_m.c.inner.s.1
  %indvars.iv.next15.1 = add nuw nsw i64 %indvars.iv14.1, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next15.1, metadata !248, metadata !DIExpression()), !dbg !237
  %exitcond17.1.not = icmp eq i64 %indvars.iv.next15.1, 32, !dbg !237
  br i1 %exitcond17.1.not, label %for_body_m.c.inner.s.2, label %for_body_m.c.inner.s.1, !dbg !237, !prof !29

for_body_m.c.inner.s.2:                           ; preds = %if_end.1, %if_end.2
  %indvars.iv14.2 = phi i64 [ %indvars.iv.next15.2, %if_end.2 ], [ 0, %if_end.1 ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv14.2, metadata !248, metadata !DIExpression()), !dbg !237
  %385 = trunc i64 %indvars.iv14.2 to i32, !dbg !237
  %386 = icmp ult i32 %385, 16, !dbg !237
  br i1 %386, label %if_then.2, label %if_end.2, !dbg !237, !prof !25

if_then.2:                                        ; preds = %for_body_m.c.inner.s.2
  %indvars.iv14.2.tr = trunc i64 %indvars.iv14.2 to i32, !dbg !237
  %387 = shl i32 %indvars.iv14.2.tr, 1, !dbg !237
  %388 = and i32 %387, 2147483632, !dbg !237
  %389 = add nuw nsw i32 %388, 128, !dbg !237
  %390 = and i32 %385, 7, !dbg !237
  %cse_var_1.2 = or i32 %389, %390, !dbg !237
  call void @llvm.dbg.declare(metadata i32 %cse_var_1.2, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32 %cse_var_1.2, metadata !249, metadata !DIExpression()), !dbg !237
  %391 = zext i32 %cse_var_1.2 to i64, !dbg !237
  %392 = getelementptr inbounds half, ptr %CBits6, i64 %391, !dbg !237
  %393 = load half, ptr %392, align 2, !dbg !237, !tbaa !250
  %394 = or i32 %cse_var_1.2, 8, !dbg !237
  %395 = zext i32 %394 to i64, !dbg !237
  %396 = getelementptr inbounds half, ptr %CBits6, i64 %395, !dbg !237
  %397 = load half, ptr %396, align 2, !dbg !237, !tbaa !250
  %398 = tail call half @llvm.fmuladd.f16(half %393, half 0xH3800, half %397), !dbg !237
  %399 = add nuw nsw i64 %indvars.iv14.2, 64, !dbg !237
  %400 = getelementptr inbounds half, ptr %C.global5, i64 %399, !dbg !237
  store half %398, ptr %400, align 2, !dbg !237, !tbaa !252
  br label %if_end.2, !dbg !237

if_end.2:                                         ; preds = %if_then.2, %for_body_m.c.inner.s.2
  %indvars.iv.next15.2 = add nuw nsw i64 %indvars.iv14.2, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next15.2, metadata !248, metadata !DIExpression()), !dbg !237
  %exitcond17.2.not = icmp eq i64 %indvars.iv.next15.2, 32, !dbg !237
  br i1 %exitcond17.2.not, label %for_end_m.c.inner.s.2, label %for_body_m.c.inner.s.2, !dbg !237, !prof !29

for_end_m.c.inner.s.2:                            ; preds = %if_end.2
  call void @llvm.dbg.declare(metadata i64 3, metadata !254, metadata !DIExpression()), !dbg !237
  %401 = mul nuw nsw i64 %indvars.iv31, 80
  call void @llvm.dbg.declare(metadata i32 0, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !237
  %402 = trunc i64 %indvars.iv31 to i32
  br label %for_body_m.inner.inner.s, !dbg !237

if_then:                                          ; preds = %for_body_m.c.inner.s
  %indvars.iv14.tr = trunc i64 %indvars.iv14 to i32, !dbg !237
  %403 = shl i32 %indvars.iv14.tr, 1, !dbg !237
  %404 = and i32 %403, 2147483632, !dbg !237
  %405 = and i32 %367, 7, !dbg !237
  %cse_var_1 = or i32 %404, %405, !dbg !237
  call void @llvm.dbg.declare(metadata i32 %cse_var_1, metadata !249, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32 %cse_var_1, metadata !249, metadata !DIExpression()), !dbg !237
  %406 = zext i32 %cse_var_1 to i64, !dbg !237
  %407 = getelementptr inbounds half, ptr %CBits6, i64 %406, !dbg !237
  %408 = load half, ptr %407, align 2, !dbg !237, !tbaa !250
  %409 = or i32 %cse_var_1, 8, !dbg !237
  %410 = zext i32 %409 to i64, !dbg !237
  %411 = getelementptr inbounds half, ptr %CBits6, i64 %410, !dbg !237
  %412 = load half, ptr %411, align 2, !dbg !237, !tbaa !250
  %413 = tail call half @llvm.fmuladd.f16(half %408, half 0xH3800, half %412), !dbg !237
  %414 = getelementptr inbounds half, ptr %C.global5, i64 %indvars.iv14, !dbg !237
  store half %413, ptr %414, align 2, !dbg !237, !tbaa !252
  br label %if_end, !dbg !237

if_end:                                           ; preds = %if_then, %for_body_m.c.inner.s
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next15, metadata !248, metadata !DIExpression()), !dbg !237
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 32, !dbg !237
  br i1 %exitcond17.not, label %for_body_m.c.inner.s.1, label %for_body_m.c.inner.s, !dbg !237, !prof !29

for_body_m.inner.inner.s:                         ; preds = %for_end_m.c.inner.s.2, %if_end2
  %indvars.iv22 = phi i64 [ 0, %for_end_m.c.inner.s.2 ], [ %indvars.iv.next23, %if_end2 ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv22, metadata !256, metadata !DIExpression()), !dbg !237
  %415 = trunc i64 %indvars.iv22 to i32, !dbg !237
  %416 = udiv i32 %415, 80, !dbg !237
  %417 = add nuw nsw i32 %416, %402, !dbg !237
  %418 = icmp ult i32 %417, 2, !dbg !237
  %419 = icmp ult i32 %415, 80, !dbg !237
  %or.cond = and i1 %419, %418, !dbg !237
  br i1 %or.cond, label %if_then3, label %if_end2, !dbg !237, !prof !257

for_end_m.inner.inner.s:                          ; preds = %if_end2
  call void @llvm.dbg.declare(metadata i64 1, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 1, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !237
  %420 = add nuw nsw i64 %401, 32
  %wide.load = load <4 x half>, ptr %3, align 16, !dbg !237, !tbaa !252
  %421 = getelementptr inbounds half, ptr %C, i64 %420, !dbg !237
  %422 = extractelement <4 x half> %wide.load, i64 0, !dbg !237
  store half %422, ptr %421, align 32, !dbg !237, !tbaa !258
  %423 = add nuw nsw i64 %401, 33, !dbg !237
  %424 = getelementptr inbounds half, ptr %C, i64 %423, !dbg !237
  %425 = extractelement <4 x half> %wide.load, i64 1, !dbg !237
  store half %425, ptr %424, align 2, !dbg !237, !tbaa !258
  %426 = add nuw nsw i64 %401, 34, !dbg !237
  %427 = getelementptr inbounds half, ptr %C, i64 %426, !dbg !237
  %428 = extractelement <4 x half> %wide.load, i64 2, !dbg !237
  store half %428, ptr %427, align 4, !dbg !237, !tbaa !258
  %429 = add nuw nsw i64 %401, 35, !dbg !237
  %430 = getelementptr inbounds half, ptr %C, i64 %429, !dbg !237
  %431 = extractelement <4 x half> %wide.load, i64 3, !dbg !237
  store half %431, ptr %430, align 2, !dbg !237, !tbaa !258
  %wide.load.1 = load <4 x half>, ptr %4, align 8, !dbg !237, !tbaa !252
  %432 = add nuw nsw i64 %401, 36, !dbg !237
  %433 = getelementptr inbounds half, ptr %C, i64 %432, !dbg !237
  %434 = extractelement <4 x half> %wide.load.1, i64 0, !dbg !237
  store half %434, ptr %433, align 8, !dbg !237, !tbaa !258
  %435 = add nuw nsw i64 %401, 37, !dbg !237
  %436 = getelementptr inbounds half, ptr %C, i64 %435, !dbg !237
  %437 = extractelement <4 x half> %wide.load.1, i64 1, !dbg !237
  store half %437, ptr %436, align 2, !dbg !237, !tbaa !258
  %438 = add nuw nsw i64 %401, 38, !dbg !237
  %439 = getelementptr inbounds half, ptr %C, i64 %438, !dbg !237
  %440 = extractelement <4 x half> %wide.load.1, i64 2, !dbg !237
  store half %440, ptr %439, align 4, !dbg !237, !tbaa !258
  %441 = add nuw nsw i64 %401, 39, !dbg !237
  %442 = getelementptr inbounds half, ptr %C, i64 %441, !dbg !237
  %443 = extractelement <4 x half> %wide.load.1, i64 3, !dbg !237
  store half %443, ptr %442, align 2, !dbg !237, !tbaa !258
  %wide.load.2 = load <4 x half>, ptr %5, align 16, !dbg !237, !tbaa !252
  %444 = add nuw nsw i64 %401, 40, !dbg !237
  %445 = getelementptr inbounds half, ptr %C, i64 %444, !dbg !237
  %446 = extractelement <4 x half> %wide.load.2, i64 0, !dbg !237
  store half %446, ptr %445, align 16, !dbg !237, !tbaa !258
  %447 = add nuw nsw i64 %401, 41, !dbg !237
  %448 = getelementptr inbounds half, ptr %C, i64 %447, !dbg !237
  %449 = extractelement <4 x half> %wide.load.2, i64 1, !dbg !237
  store half %449, ptr %448, align 2, !dbg !237, !tbaa !258
  %450 = add nuw nsw i64 %401, 42, !dbg !237
  %451 = getelementptr inbounds half, ptr %C, i64 %450, !dbg !237
  %452 = extractelement <4 x half> %wide.load.2, i64 2, !dbg !237
  store half %452, ptr %451, align 4, !dbg !237, !tbaa !258
  %453 = add nuw nsw i64 %401, 43, !dbg !237
  %454 = getelementptr inbounds half, ptr %C, i64 %453, !dbg !237
  %455 = extractelement <4 x half> %wide.load.2, i64 3, !dbg !237
  store half %455, ptr %454, align 2, !dbg !237, !tbaa !258
  %wide.load.3 = load <4 x half>, ptr %6, align 8, !dbg !237, !tbaa !252
  %456 = add nuw nsw i64 %401, 44, !dbg !237
  %457 = getelementptr inbounds half, ptr %C, i64 %456, !dbg !237
  %458 = extractelement <4 x half> %wide.load.3, i64 0, !dbg !237
  store half %458, ptr %457, align 8, !dbg !237, !tbaa !258
  %459 = add nuw nsw i64 %401, 45, !dbg !237
  %460 = getelementptr inbounds half, ptr %C, i64 %459, !dbg !237
  %461 = extractelement <4 x half> %wide.load.3, i64 1, !dbg !237
  store half %461, ptr %460, align 2, !dbg !237, !tbaa !258
  %462 = add nuw nsw i64 %401, 46, !dbg !237
  %463 = getelementptr inbounds half, ptr %C, i64 %462, !dbg !237
  %464 = extractelement <4 x half> %wide.load.3, i64 2, !dbg !237
  store half %464, ptr %463, align 4, !dbg !237, !tbaa !258
  %465 = add nuw nsw i64 %401, 47, !dbg !237
  %466 = getelementptr inbounds half, ptr %C, i64 %465, !dbg !237
  %467 = extractelement <4 x half> %wide.load.3, i64 3, !dbg !237
  store half %467, ptr %466, align 2, !dbg !237, !tbaa !258
  %wide.load.4 = load <4 x half>, ptr %7, align 16, !dbg !237, !tbaa !252
  %468 = add nuw nsw i64 %401, 48, !dbg !237
  %469 = getelementptr inbounds half, ptr %C, i64 %468, !dbg !237
  %470 = extractelement <4 x half> %wide.load.4, i64 0, !dbg !237
  store half %470, ptr %469, align 32, !dbg !237, !tbaa !258
  %471 = add nuw nsw i64 %401, 49, !dbg !237
  %472 = getelementptr inbounds half, ptr %C, i64 %471, !dbg !237
  %473 = extractelement <4 x half> %wide.load.4, i64 1, !dbg !237
  store half %473, ptr %472, align 2, !dbg !237, !tbaa !258
  %474 = add nuw nsw i64 %401, 50, !dbg !237
  %475 = getelementptr inbounds half, ptr %C, i64 %474, !dbg !237
  %476 = extractelement <4 x half> %wide.load.4, i64 2, !dbg !237
  store half %476, ptr %475, align 4, !dbg !237, !tbaa !258
  %477 = add nuw nsw i64 %401, 51, !dbg !237
  %478 = getelementptr inbounds half, ptr %C, i64 %477, !dbg !237
  %479 = extractelement <4 x half> %wide.load.4, i64 3, !dbg !237
  store half %479, ptr %478, align 2, !dbg !237, !tbaa !258
  %wide.load.5 = load <4 x half>, ptr %8, align 8, !dbg !237, !tbaa !252
  %480 = add nuw nsw i64 %401, 52, !dbg !237
  %481 = getelementptr inbounds half, ptr %C, i64 %480, !dbg !237
  %482 = extractelement <4 x half> %wide.load.5, i64 0, !dbg !237
  store half %482, ptr %481, align 8, !dbg !237, !tbaa !258
  %483 = add nuw nsw i64 %401, 53, !dbg !237
  %484 = getelementptr inbounds half, ptr %C, i64 %483, !dbg !237
  %485 = extractelement <4 x half> %wide.load.5, i64 1, !dbg !237
  store half %485, ptr %484, align 2, !dbg !237, !tbaa !258
  %486 = add nuw nsw i64 %401, 54, !dbg !237
  %487 = getelementptr inbounds half, ptr %C, i64 %486, !dbg !237
  %488 = extractelement <4 x half> %wide.load.5, i64 2, !dbg !237
  store half %488, ptr %487, align 4, !dbg !237, !tbaa !258
  %489 = add nuw nsw i64 %401, 55, !dbg !237
  %490 = getelementptr inbounds half, ptr %C, i64 %489, !dbg !237
  %491 = extractelement <4 x half> %wide.load.5, i64 3, !dbg !237
  store half %491, ptr %490, align 2, !dbg !237, !tbaa !258
  %wide.load.6 = load <4 x half>, ptr %9, align 16, !dbg !237, !tbaa !252
  %492 = add nuw nsw i64 %401, 56, !dbg !237
  %493 = getelementptr inbounds half, ptr %C, i64 %492, !dbg !237
  %494 = extractelement <4 x half> %wide.load.6, i64 0, !dbg !237
  store half %494, ptr %493, align 16, !dbg !237, !tbaa !258
  %495 = add nuw nsw i64 %401, 57, !dbg !237
  %496 = getelementptr inbounds half, ptr %C, i64 %495, !dbg !237
  %497 = extractelement <4 x half> %wide.load.6, i64 1, !dbg !237
  store half %497, ptr %496, align 2, !dbg !237, !tbaa !258
  %498 = add nuw nsw i64 %401, 58, !dbg !237
  %499 = getelementptr inbounds half, ptr %C, i64 %498, !dbg !237
  %500 = extractelement <4 x half> %wide.load.6, i64 2, !dbg !237
  store half %500, ptr %499, align 4, !dbg !237, !tbaa !258
  %501 = add nuw nsw i64 %401, 59, !dbg !237
  %502 = getelementptr inbounds half, ptr %C, i64 %501, !dbg !237
  %503 = extractelement <4 x half> %wide.load.6, i64 3, !dbg !237
  store half %503, ptr %502, align 2, !dbg !237, !tbaa !258
  %wide.load.7 = load <4 x half>, ptr %10, align 8, !dbg !237, !tbaa !252
  %504 = add nuw nsw i64 %401, 60, !dbg !237
  %505 = getelementptr inbounds half, ptr %C, i64 %504, !dbg !237
  %506 = extractelement <4 x half> %wide.load.7, i64 0, !dbg !237
  store half %506, ptr %505, align 8, !dbg !237, !tbaa !258
  %507 = add nuw nsw i64 %401, 61, !dbg !237
  %508 = getelementptr inbounds half, ptr %C, i64 %507, !dbg !237
  %509 = extractelement <4 x half> %wide.load.7, i64 1, !dbg !237
  store half %509, ptr %508, align 2, !dbg !237, !tbaa !258
  %510 = add nuw nsw i64 %401, 62, !dbg !237
  %511 = getelementptr inbounds half, ptr %C, i64 %510, !dbg !237
  %512 = extractelement <4 x half> %wide.load.7, i64 2, !dbg !237
  store half %512, ptr %511, align 4, !dbg !237, !tbaa !258
  %513 = add nuw nsw i64 %401, 63, !dbg !237
  %514 = getelementptr inbounds half, ptr %C, i64 %513, !dbg !237
  %515 = extractelement <4 x half> %wide.load.7, i64 3, !dbg !237
  store half %515, ptr %514, align 2, !dbg !237, !tbaa !258
  call void @llvm.dbg.declare(metadata i64 2, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 2, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i32 0, metadata !256, metadata !DIExpression()), !dbg !237
  %516 = add nuw nsw i64 %401, 64
  br label %for_body_m.inner.inner.s.2, !dbg !237

for_body_m.inner.inner.s.2:                       ; preds = %if_end2.2, %for_end_m.inner.inner.s
  %indvars.iv22.2 = phi i64 [ 0, %for_end_m.inner.inner.s ], [ %indvars.iv.next23.2, %if_end2.2 ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv22.2, metadata !256, metadata !DIExpression()), !dbg !237
  %517 = trunc i64 %indvars.iv22.2 to i32, !dbg !237
  %518 = lshr i32 %517, 4, !dbg !237
  %519 = add nuw nsw i32 %518, 4, !dbg !237
  %520 = udiv i32 %519, 5, !dbg !237
  %521 = add nuw nsw i32 %520, %402, !dbg !237
  %522 = icmp ult i32 %521, 2, !dbg !237
  %523 = icmp ult i32 %517, 16, !dbg !237
  %or.cond.2 = and i1 %523, %522, !dbg !237
  br i1 %or.cond.2, label %if_then3.2, label %if_end2.2, !dbg !237, !prof !257

if_then3.2:                                       ; preds = %for_body_m.inner.inner.s.2
  call void @llvm.dbg.declare(metadata i64 64, metadata !260, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 64, metadata !260, metadata !DIExpression()), !dbg !237
  %524 = add nuw nsw i64 %indvars.iv22.2, 64, !dbg !237
  %525 = getelementptr inbounds half, ptr %C.global5, i64 %524, !dbg !237
  %526 = load half, ptr %525, align 2, !dbg !237, !tbaa !252
  %527 = add nuw nsw i64 %516, %indvars.iv22.2, !dbg !237
  %528 = getelementptr inbounds half, ptr %C, i64 %527, !dbg !237
  store half %526, ptr %528, align 2, !dbg !237, !tbaa !258
  br label %if_end2.2, !dbg !237

if_end2.2:                                        ; preds = %if_then3.2, %for_body_m.inner.inner.s.2
  %indvars.iv.next23.2 = add nuw nsw i64 %indvars.iv22.2, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next23.2, metadata !256, metadata !DIExpression()), !dbg !237
  %exitcond25.2.not = icmp eq i64 %indvars.iv.next23.2, 32, !dbg !237
  br i1 %exitcond25.2.not, label %for_end_m.inner.inner.s.2, label %for_body_m.inner.inner.s.2, !dbg !237, !prof !29

for_end_m.inner.inner.s.2:                        ; preds = %if_end2.2
  call void @llvm.dbg.declare(metadata i64 3, metadata !255, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv31, metadata !244, metadata !DIExpression(DW_OP_plus_uconst, 1)), !dbg !237
  br i1 %11, label %for_body_m.outer, label %for_end_m.outer, !dbg !237, !prof !25

if_end2:                                          ; preds = %if_then3, %for_body_m.inner.inner.s
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1, !dbg !237
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next23, metadata !256, metadata !DIExpression()), !dbg !237
  %exitcond25.not = icmp eq i64 %indvars.iv.next23, 32, !dbg !237
  br i1 %exitcond25.not, label %for_end_m.inner.inner.s, label %for_body_m.inner.inner.s, !dbg !237, !prof !29

if_then3:                                         ; preds = %for_body_m.inner.inner.s
  call void @llvm.dbg.declare(metadata i64 0, metadata !260, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata i64 0, metadata !260, metadata !DIExpression()), !dbg !237
  %529 = getelementptr inbounds half, ptr %C.global5, i64 %indvars.iv22, !dbg !237
  %530 = load half, ptr %529, align 2, !dbg !237, !tbaa !252
  %531 = add nuw nsw i64 %401, %indvars.iv22, !dbg !237
  %532 = getelementptr inbounds half, ptr %C, i64 %531, !dbg !237
  store half %530, ptr %532, align 2, !dbg !237, !tbaa !258
  br label %if_end2, !dbg !237
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare half @llvm.fmuladd.f16(half, half, half) #1

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

attributes #0 = { "target-cpu"="apple-m2" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #3 = { nofree noinline nosync nounwind memory(argmem: readwrite) "probe-stack"="__chkstk_darwin" "target-cpu"="apple-m2" }
attributes #4 = { nofree nosync nounwind memory(none) "target-cpu"="apple-m2" "target-features" }
attributes #5 = { alwaysinline mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { alwaysinline mustprogress nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { alwaysinline mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!11 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x600002873090.w4.b0", !32, i64 0}
!32 = !{!"0x600002873090.w8.b0", !33, i64 0}
!33 = !{!"0x600002873090.w16.b0", !34, i64 0}
!34 = !{!"0x600002873090.w32.b0", !35, i64 0}
!35 = !{!"0x600002873090.w64.b0", !36, i64 0}
!36 = !{!"0x600002873090.w128.b0", !37, i64 0}
!37 = !{!"0x600002873090.w256.b0", !38, i64 0}
!38 = !{!"0x600002873090.w512.b0", !39, i64 0}
!39 = !{!"0x600002873090.w1024.b0", !40, i64 0}
!40 = !{!"0x600002873090", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x600002873090.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x600002873090.w4.b8", !47, i64 0}
!47 = !{!"0x600002873090.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x600002873090.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x600002873090.w4.b16", !54, i64 0}
!54 = !{!"0x600002873090.w8.b16", !55, i64 0}
!55 = !{!"0x600002873090.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x600002873090.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x60000288f720.w8.b0", !95, i64 0}
!95 = !{!"0x60000288f720.w16.b0", !96, i64 0}
!96 = !{!"0x60000288f720.w32.b0", !97, i64 0}
!97 = !{!"0x60000288f720.w64.b0", !98, i64 0}
!98 = !{!"0x60000288f720.w128.b0", !99, i64 0}
!99 = !{!"0x60000288f720.w256.b0", !100, i64 0}
!100 = !{!"0x60000288f720.w512.b0", !101, i64 0}
!101 = !{!"0x60000288f720.w1024.b0", !102, i64 0}
!102 = !{!"0x60000288f720", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x60000288f720.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x60000288f720.w8.b16", !107, i64 0}
!107 = !{!"0x60000288f720.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x60000288ee20.w8.b16", !110, i64 0}
!110 = !{!"0x60000288ee20.w16.b16", !111, i64 0}
!111 = !{!"0x60000288ee20.w32.b0", !112, i64 0}
!112 = !{!"0x60000288ee20.w64.b0", !113, i64 0}
!113 = !{!"0x60000288ee20.w128.b0", !114, i64 0}
!114 = !{!"0x60000288ee20.w256.b0", !115, i64 0}
!115 = !{!"0x60000288ee20.w512.b0", !116, i64 0}
!116 = !{!"0x60000288ee20.w1024.b0", !117, i64 0}
!117 = !{!"0x60000288ee20", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x60000288ee20.w8.b8", !120, i64 0}
!120 = !{!"0x60000288ee20.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x60000288ee20.w8.b0", !120, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x60000288def0.w8.b0", !125, i64 0}
!125 = !{!"0x60000288def0.w16.b0", !126, i64 0}
!126 = !{!"0x60000288def0.w32.b0", !127, i64 0}
!127 = !{!"0x60000288def0.w64.b0", !128, i64 0}
!128 = !{!"0x60000288def0.w128.b0", !129, i64 0}
!129 = !{!"0x60000288def0.w256.b0", !130, i64 0}
!130 = !{!"0x60000288def0.w512.b0", !131, i64 0}
!131 = !{!"0x60000288def0.w1024.b0", !132, i64 0}
!132 = !{!"0x60000288def0", !28, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x60000288def0.w8.b8", !125, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x60000288def0.w8.b16", !137, i64 0}
!137 = !{!"0x60000288def0.w16.b16", !126, i64 0}
!138 = !{!139, !139, i64 0}
!139 = !{!"0x6000028882d0.w8.b16", !140, i64 0}
!140 = !{!"0x6000028882d0.w16.b16", !141, i64 0}
!141 = !{!"0x6000028882d0.w32.b0", !142, i64 0}
!142 = !{!"0x6000028882d0.w64.b0", !143, i64 0}
!143 = !{!"0x6000028882d0.w128.b0", !144, i64 0}
!144 = !{!"0x6000028882d0.w256.b0", !145, i64 0}
!145 = !{!"0x6000028882d0.w512.b0", !146, i64 0}
!146 = !{!"0x6000028882d0.w1024.b0", !147, i64 0}
!147 = !{!"0x6000028882d0", !28, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x6000028882d0.w8.b8", !150, i64 0}
!150 = !{!"0x6000028882d0.w16.b0", !141, i64 0}
!151 = !{!152, !152, i64 0}
!152 = !{!"0x600002881440.w8.b0", !153, i64 0}
!153 = !{!"0x600002881440.w16.b0", !154, i64 0}
!154 = !{!"0x600002881440.w32.b0", !155, i64 0}
!155 = !{!"0x600002881440.w64.b0", !156, i64 0}
!156 = !{!"0x600002881440.w128.b0", !157, i64 0}
!157 = !{!"0x600002881440.w256.b0", !158, i64 0}
!158 = !{!"0x600002881440.w512.b0", !159, i64 0}
!159 = !{!"0x600002881440.w1024.b0", !160, i64 0}
!160 = !{!"0x600002881440", !28, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x60000287e910.w8.b0", !163, i64 0}
!163 = !{!"0x60000287e910.w16.b0", !164, i64 0}
!164 = !{!"0x60000287e910.w32.b0", !165, i64 0}
!165 = !{!"0x60000287e910.w64.b0", !166, i64 0}
!166 = !{!"0x60000287e910.w128.b0", !167, i64 0}
!167 = !{!"0x60000287e910.w256.b0", !168, i64 0}
!168 = !{!"0x60000287e910.w512.b0", !169, i64 0}
!169 = !{!"0x60000287e910.w1024.b0", !170, i64 0}
!170 = !{!"0x60000287e910", !28, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x60000287e910.w8.b8", !163, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x600002879050.w8.b8", !175, i64 0}
!175 = !{!"0x600002879050.w16.b0", !176, i64 0}
!176 = !{!"0x600002879050.w32.b0", !177, i64 0}
!177 = !{!"0x600002879050.w64.b0", !178, i64 0}
!178 = !{!"0x600002879050.w128.b0", !179, i64 0}
!179 = !{!"0x600002879050.w256.b0", !180, i64 0}
!180 = !{!"0x600002879050.w512.b0", !181, i64 0}
!181 = !{!"0x600002879050.w1024.b0", !182, i64 0}
!182 = !{!"0x600002879050", !28, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x600002894d20.w8.b0", !185, i64 0}
!185 = !{!"0x600002894d20.w16.b0", !186, i64 0}
!186 = !{!"0x600002894d20.w32.b0", !187, i64 0}
!187 = !{!"0x600002894d20.w64.b0", !188, i64 0}
!188 = !{!"0x600002894d20.w128.b0", !189, i64 0}
!189 = !{!"0x600002894d20.w256.b0", !190, i64 0}
!190 = !{!"0x600002894d20.w512.b0", !191, i64 0}
!191 = !{!"0x600002894d20.w1024.b0", !192, i64 0}
!192 = !{!"0x600002894d20", !28, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x600002894d20.w8.b8", !185, i64 0}
!195 = !{!196, !196, i64 0}
!196 = !{!"0x600002864720.w8.b8", !197, i64 0}
!197 = !{!"0x600002864720.w16.b0", !198, i64 0}
!198 = !{!"0x600002864720.w32.b0", !199, i64 0}
!199 = !{!"0x600002864720.w64.b0", !200, i64 0}
!200 = !{!"0x600002864720.w128.b0", !201, i64 0}
!201 = !{!"0x600002864720.w256.b0", !202, i64 0}
!202 = !{!"0x600002864720.w512.b0", !203, i64 0}
!203 = !{!"0x600002864720.w1024.b0", !204, i64 0}
!204 = !{!"0x600002864720", !28, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x600002865350.w8.b0", !207, i64 0}
!207 = !{!"0x600002865350.w16.b0", !208, i64 0}
!208 = !{!"0x600002865350.w32.b0", !209, i64 0}
!209 = !{!"0x600002865350.w64.b0", !210, i64 0}
!210 = !{!"0x600002865350.w128.b0", !211, i64 0}
!211 = !{!"0x600002865350.w256.b0", !212, i64 0}
!212 = !{!"0x600002865350.w512.b0", !213, i64 0}
!213 = !{!"0x600002865350.w1024.b0", !214, i64 0}
!214 = !{!"0x600002865350", !28, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600002865350.w8.b8", !207, i64 0}
!217 = !{!218, !218, i64 0}
!218 = !{!"0x600002865d10.w8.b8", !219, i64 0}
!219 = !{!"0x600002865d10.w16.b0", !220, i64 0}
!220 = !{!"0x600002865d10.w32.b0", !221, i64 0}
!221 = !{!"0x600002865d10.w64.b0", !222, i64 0}
!222 = !{!"0x600002865d10.w128.b0", !223, i64 0}
!223 = !{!"0x600002865d10.w256.b0", !224, i64 0}
!224 = !{!"0x600002865d10.w512.b0", !225, i64 0}
!225 = !{!"0x600002865d10.w1024.b0", !226, i64 0}
!226 = !{!"0x600002865d10", !28, i64 0}
!227 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m320_k3200_n1_b2_compute_", scope: !1, file: !1, type: !228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !230)
!228 = !DISubroutineType(cc: DW_CC_nocall, types: !229)
!229 = !{!14, !77, !72, !82, !82, !82, !82}
!230 = !{!231, !232, !233, !234, !235, !236}
!231 = !DILocalVariable(name: "LUT", arg: 1, scope: !227, file: !1, type: !77)
!232 = !DILocalVariable(name: "A", arg: 2, scope: !227, file: !1, type: !72)
!233 = !DILocalVariable(name: "Scales", arg: 3, scope: !227, file: !1, type: !82)
!234 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !227, file: !1, type: !82)
!235 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !227, file: !1, type: !82)
!236 = !DILocalVariable(name: "C", arg: 6, scope: !227, file: !1, type: !82)
!237 = !DILocation(line: 0, scope: !227)
!238 = !DILocalVariable(name: "CBits", scope: !227, file: !1, type: !82)
!239 = !DILocalVariable(name: "C.global", scope: !227, file: !1, type: !82)
!240 = !{!241, !241, i64 0}
!241 = !{!"__fp16", !242, i64 0}
!242 = !{!"omnipotent char", !243, i64 0}
!243 = !{!"Simple C++ TBAA"}
!244 = !DILocalVariable(name: "m.outer", scope: !227, file: !1, type: !14)
!245 = !DILocalVariable(name: "k.outer", scope: !227, file: !1, type: !14)
!246 = distinct !{!246, !247}
!247 = !{!"llvm.loop.mustprogress"}
!248 = !DILocalVariable(name: "m.c.inner.s", scope: !227, file: !1, type: !14)
!249 = !DILocalVariable(name: "cse_var_1", scope: !227, file: !1, type: !14)
!250 = !{!251, !251, i64 0}
!251 = !{!"0x600002888bd0", !28, i64 0}
!252 = !{!253, !253, i64 0}
!253 = !{!"0x60000288f4b0", !28, i64 0}
!254 = !DILocalVariable(name: "m.c.outer", scope: !227, file: !1, type: !14)
!255 = !DILocalVariable(name: "m.inner.outer", scope: !227, file: !1, type: !14)
!256 = !DILocalVariable(name: "m.inner.inner.s", scope: !227, file: !1, type: !14)
!257 = !{!"branch_weights", i32 -2147483648, i32 4096}
!258 = !{!259, !259, i64 0}
!259 = !{!"0x60000288c3f0", !28, i64 0}
!260 = !DILocalVariable(name: "cse_var_2", scope: !227, file: !1, type: !14)
