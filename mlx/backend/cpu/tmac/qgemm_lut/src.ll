; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-darwin23.1.0"

%0 = type { double }
%1 = type { ptr, %2, i32, %3, ptr, ptr, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global ptr null, align 8
@.str = private constant [85 x i8] c"Assert fail: num_args == 6, qgemm_lut_t1_int8_m160_k3200_n1_b2: num_args should be 6\00", align 1
@.str.1 = private constant [103 x i8] c"Assert fail: not T.isnullptr(args), qgemm_lut_t1_int8_m160_k3200_n1_b2: TVMValue* arg pointer was NULL\00", align 1
@.str.2 = private constant [105 x i8] c"Assert fail: not T.isnullptr(arg_type_ids), qgemm_lut_t1_int8_m160_k3200_n1_b2: int* type_codes was NULL\00", align 1
@.str.3 = private constant [136 x i8] c"Assert fail: A_code == 3 or A_code == 13 or A_code == 7 or A_code == 4, qgemm_lut_t1_int8_m160_k3200_n1_b2: Expect arg[0] to be pointer\00", align 1
@.str.4 = private constant [144 x i8] c"Assert fail: LUT_code == 3 or LUT_code == 13 or LUT_code == 7 or LUT_code == 4, qgemm_lut_t1_int8_m160_k3200_n1_b2: Expect arg[1] to be pointer\00", align 1
@.str.5 = private constant [156 x i8] c"Assert fail: Scales_code == 3 or Scales_code == 13 or Scales_code == 7 or Scales_code == 4, qgemm_lut_t1_int8_m160_k3200_n1_b2: Expect arg[2] to be pointer\00", align 1
@.str.6 = private constant [172 x i8] c"Assert fail: LUT_Scales_code == 3 or LUT_Scales_code == 13 or LUT_Scales_code == 7 or LUT_Scales_code == 4, qgemm_lut_t1_int8_m160_k3200_n1_b2: Expect arg[3] to be pointer\00", align 1
@.str.7 = private constant [172 x i8] c"Assert fail: LUT_Biases_code == 3 or LUT_Biases_code == 13 or LUT_Biases_code == 7 or LUT_Biases_code == 4, qgemm_lut_t1_int8_m160_k3200_n1_b2: Expect arg[4] to be pointer\00", align 1
@.str.8 = private constant [136 x i8] c"Assert fail: C_code == 3 or C_code == 13 or C_code == 7 or C_code == 4, qgemm_lut_t1_int8_m160_k3200_n1_b2: Expect arg[5] to be pointer\00", align 1
@.str.9 = private constant [117 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m160_k3200_n1_b2.A is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.10 = private constant [119 x i8] c"Assert fail: 3 == T.tvm_struct_get(A, 0, 4, \22int32\22), qgemm_lut_t1_int8_m160_k3200_n1_b2.A.ndim is expected to equal 3\00", align 1
@.str.11 = private constant [121 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.12 = private constant [123 x i8] c"Assert fail: 3 == T.tvm_struct_get(LUT, 0, 4, \22int32\22), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.ndim is expected to equal 3\00", align 1
@.str.13 = private constant [127 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.14 = private constant [129 x i8] c"Assert fail: 1 == T.tvm_struct_get(Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.ndim is expected to equal 1\00", align 1
@.str.15 = private constant [135 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.16 = private constant [137 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Scales, 0, 4, \22int32\22), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.ndim is expected to equal 2\00", align 1
@.str.17 = private constant [135 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.18 = private constant [137 x i8] c"Assert fail: 2 == T.tvm_struct_get(LUT_Biases, 0, 4, \22int32\22), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [117 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m160_k3200_n1_b2.C is expected to have non-NULL DLTensor* pointer\00", align 1
@.str.20 = private constant [119 x i8] c"Assert fail: 2 == T.tvm_struct_get(C, 0, 4, \22int32\22), qgemm_lut_t1_int8_m160_k3200_n1_b2.C.ndim is expected to equal 2\00", align 1
@.str.21 = private constant [238 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 5, \22uint8\22) == T.uint8(1) and T.tvm_struct_get(A, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(A, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m160_k3200_n1_b2.A.dtype is expected to be uint8\00", align 1
@.str.22 = private constant [236 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_shape[0]) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_shape[0])\00", align 1
@.str.23 = private constant [240 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_shape[1]) == 800, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_shape[1])\00", align 1
@.str.24 = private constant [238 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_shape[2]) == 80, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape[2] has an unsatisfied constraint: 80 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_shape[2])\00", align 1
@.str.25 = private constant [234 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_strides[2]) and 80 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_A_strides[1]), qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides: expected to be compact array\00", align 1
@.str.26 = private constant [205 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.A.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(A, 0, 8, \22uint64\22)\00", align 1
@.str.27 = private constant [185 x i8] c"Assert fail: T.tvm_struct_get(A, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.A.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(A, 0, 10, \22int32\22)\00", align 1
@.str.28 = private constant [112 x i8] c"Assert fail: not T.isnullptr(A), qgemm_lut_t1_int8_m160_k3200_n1_b2.A is expected to have non-NULL data pointer\00", align 1
@.str.29 = private constant [245 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 5, \22uint8\22) == T.uint8(0) and T.tvm_struct_get(LUT, 0, 6, \22uint8\22) == T.uint8(8) and T.tvm_struct_get(LUT, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.dtype is expected to be int8\00", align 1
@.str.30 = private constant [242 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_shape[0]) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_shape[0])\00", align 1
@.str.31 = private constant [246 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_shape[1]) == 800, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape[1] has an unsatisfied constraint: 800 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_shape[1])\00", align 1
@.str.32 = private constant [244 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_shape[2]) == 16, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape[2] has an unsatisfied constraint: 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_shape[2])\00", align 1
@.str.33 = private constant [240 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_strides[2]) and 16 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_strides[1]), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides: expected to be compact array\00", align 1
@.str.34 = private constant [211 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT, 0, 8, \22uint64\22)\00", align 1
@.str.35 = private constant [191 x i8] c"Assert fail: T.tvm_struct_get(LUT, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT, 0, 10, \22int32\22)\00", align 1
@.str.36 = private constant [197 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT, 0, 9, \22int32\22)\00", align 1
@.str.37 = private constant [116 x i8] c"Assert fail: not T.isnullptr(LUT), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT is expected to have non-NULL data pointer\00", align 1
@.str.38 = private constant [261 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.dtype is expected to be float16\00", align 1
@.str.39 = private constant [251 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_Scales_shape[0])\00", align 1
@.str.41 = private constant [220 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(Scales, 0, 8, \22uint64\22)\00", align 1
@.str.42 = private constant [200 x i8] c"Assert fail: T.tvm_struct_get(Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(Scales, 0, 10, \22int32\22)\00", align 1
@.str.43 = private constant [206 x i8] c"Assert fail: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(Scales, 0, 9, \22int32\22)\00", align 1
@.str.44 = private constant [122 x i8] c"Assert fail: not T.isnullptr(Scales), qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales is expected to have non-NULL data pointer\00", align 1
@.str.45 = private constant [277 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Scales, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Scales, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.dtype is expected to be float16\00", align 1
@.str.46 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Scales_shape[0]) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Scales_shape[0])\00", align 1
@.str.47 = private constant [265 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Scales_shape[1]) == 50, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Scales_shape[1])\00", align 1
@.str.48 = private constant [177 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Scales_strides[1]), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides: expected to be compact array\00", align 1
@.str.49 = private constant [232 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Scales, 0, 8, \22uint64\22)\00", align 1
@.str.50 = private constant [212 x i8] c"Assert fail: T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Scales, 0, 10, \22int32\22)\00", align 1
@.str.51 = private constant [218 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Scales, 0, 9, \22int32\22)\00", align 1
@.str.52 = private constant [130 x i8] c"Assert fail: not T.isnullptr(LUT_Scales), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales is expected to have non-NULL data pointer\00", align 1
@.str.53 = private constant [277 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(LUT_Biases, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(LUT_Biases, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.dtype is expected to be float16\00", align 1
@.str.54 = private constant [263 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Biases_shape[0]) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Biases_shape[0])\00", align 1
@.str.55 = private constant [265 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Biases_shape[1]) == 50, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape[1] has an unsatisfied constraint: 50 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Biases_shape[1])\00", align 1
@.str.56 = private constant [177 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_LUT_Biases_strides[1]), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides: expected to be compact array\00", align 1
@.str.57 = private constant [232 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(LUT_Biases, 0, 8, \22uint64\22)\00", align 1
@.str.58 = private constant [212 x i8] c"Assert fail: T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(LUT_Biases, 0, 10, \22int32\22)\00", align 1
@.str.59 = private constant [218 x i8] c"Assert fail: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(LUT_Biases, 0, 9, \22int32\22)\00", align 1
@.str.60 = private constant [130 x i8] c"Assert fail: not T.isnullptr(LUT_Biases), qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases is expected to have non-NULL data pointer\00", align 1
@.str.61 = private constant [241 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 5, \22uint8\22) == T.uint8(2) and T.tvm_struct_get(C, 0, 6, \22uint8\22) == T.uint8(16) and T.tvm_struct_get(C, 0, 7, \22uint16\22) == T.uint16(1), qgemm_lut_t1_int8_m160_k3200_n1_b2.C.dtype is expected to be float16\00", align 1
@.str.62 = private constant [236 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_C_shape[0]) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape[0] has an unsatisfied constraint: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_C_shape[0])\00", align 1
@.str.63 = private constant [238 x i8] c"Assert fail: T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_C_shape[1]) == 80, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape[1] has an unsatisfied constraint: 80 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_C_shape[1])\00", align 1
@.str.64 = private constant [159 x i8] c"Assert fail: 1 == T.Cast(\22int32\22, qgemm_lut_t1_int8_m160_k3200_n1_b2_C_strides[1]), qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides: expected to be compact array\00", align 1
@.str.65 = private constant [205 x i8] c"Assert fail: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.C.byte_offset has an unsatisfied constraint: T.uint64(0) == T.tvm_struct_get(C, 0, 8, \22uint64\22)\00", align 1
@.str.66 = private constant [185 x i8] c"Assert fail: T.tvm_struct_get(C, 0, 10, \22int32\22) == 1, Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.C.device_type has an unsatisfied constraint: 1 == T.tvm_struct_get(C, 0, 10, \22int32\22)\00", align 1
@.str.67 = private constant [191 x i8] c"Assert fail: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22), Argument qgemm_lut_t1_int8_m160_k3200_n1_b2.C.device_id has an unsatisfied constraint: dev_id == T.tvm_struct_get(C, 0, 9, \22int32\22)\00", align 1
@.str.68 = private constant [112 x i8] c"Assert fail: not T.isnullptr(C), qgemm_lut_t1_int8_m160_k3200_n1_b2.C is expected to have non-NULL data pointer\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [35 x i8] c"qgemm_lut_t1_int8_m160_k3200_n1_b2\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

define dllexport i32 @qgemm_lut_t1_int8_m160_k3200_n1_b2(ptr noalias readonly %args, ptr noalias readonly %arg_type_ids, i32 %num_args, ptr noalias nocapture readnone %out_ret_value, ptr noalias nocapture readnone %out_ret_tcode, ptr noalias nocapture readnone %resource_handle) local_unnamed_addr #0 !dbg !11 {
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
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape = load ptr, ptr %25, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape, metadata !66, metadata !DIExpression()), !dbg !24
  %26 = getelementptr inbounds %1, ptr %A, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides = load ptr, ptr %26, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides, metadata !69, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape = load ptr, ptr %33, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape, metadata !74, metadata !DIExpression()), !dbg !24
  %34 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides = load ptr, ptr %34, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides, metadata !75, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.shape = load ptr, ptr %40, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.shape, metadata !79, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape = load ptr, ptr %46, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape, metadata !84, metadata !DIExpression()), !dbg !24
  %47 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides = load ptr, ptr %47, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides, metadata !85, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape = load ptr, ptr %53, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape, metadata !87, metadata !DIExpression()), !dbg !24
  %54 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides = load ptr, ptr %54, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides, metadata !88, metadata !DIExpression()), !dbg !24
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
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape = load ptr, ptr %60, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape, metadata !90, metadata !DIExpression()), !dbg !24
  %61 = getelementptr inbounds %1, ptr %C, i64 0, i32 5, !dbg !24
  %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides = load ptr, ptr %61, align 8, !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides, metadata !91, metadata !DIExpression()), !dbg !24
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
  %74 = load i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape, align 8, !dbg !24, !tbaa !93
  %75 = and i64 %74, 4294967295, !dbg !24
  %76 = icmp eq i64 %75, 1, !dbg !24
  br i1 %76, label %assert_end56, label %assert_fail55, !dbg !24, !prof !25

assert_fail55:                                    ; preds = %assert_end54
  %77 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %77(ptr nonnull @.str.22), !dbg !24
  br label %common.ret

assert_end56:                                     ; preds = %assert_end54
  %78 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape, i64 1, !dbg !24
  %79 = load i64, ptr %78, align 8, !dbg !24, !tbaa !103
  %80 = and i64 %79, 4294967295, !dbg !24
  %81 = icmp eq i64 %80, 800, !dbg !24
  br i1 %81, label %assert_end58, label %assert_fail57, !dbg !24, !prof !25

assert_fail57:                                    ; preds = %assert_end56
  %82 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %82(ptr nonnull @.str.23), !dbg !24
  br label %common.ret

assert_end58:                                     ; preds = %assert_end56
  %83 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape, i64 2, !dbg !24
  %84 = load i64, ptr %83, align 8, !dbg !24, !tbaa !105
  %85 = and i64 %84, 4294967295, !dbg !24
  %86 = icmp eq i64 %85, 80, !dbg !24
  br i1 %86, label %assert_end60, label %assert_fail59, !dbg !24, !prof !25

assert_fail59:                                    ; preds = %assert_end58
  %87 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %87(ptr nonnull @.str.24), !dbg !24
  br label %common.ret

assert_end60:                                     ; preds = %assert_end58
  %.not172 = icmp eq ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides, null, !dbg !24
  br i1 %.not172, label %if_end, label %if_then, !dbg !24, !prof !29

if_then:                                          ; preds = %assert_end60
  %88 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides, i64 2, !dbg !24
  %89 = load i64, ptr %88, align 8, !dbg !24, !tbaa !108
  %90 = and i64 %89, 4294967295, !dbg !24
  %91 = icmp eq i64 %90, 1, !dbg !24
  %92 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides, i64 1, !dbg !24
  %93 = load i64, ptr %92, align 8, !dbg !24, !tbaa !118
  %94 = and i64 %93, 4294967295, !dbg !24
  %95 = icmp eq i64 %94, 80, !dbg !24
  %96 = and i1 %91, %95, !dbg !24
  br i1 %96, label %if_end, label %assert_fail61, !dbg !24, !prof !25

if_end:                                           ; preds = %if_then, %assert_end60
  %97 = getelementptr inbounds %1, ptr %A, i64 0, i32 6, !dbg !24
  %98 = load i64, ptr %97, align 8, !dbg !24
  %99 = icmp eq i64 %98, 0, !dbg !24
  br i1 %99, label %assert_end64, label %assert_fail63, !dbg !24, !prof !25

assert_fail61:                                    ; preds = %if_then
  %100 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %100(ptr nonnull @.str.25), !dbg !24
  br label %common.ret

assert_fail63:                                    ; preds = %if_end
  %101 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %101(ptr nonnull @.str.26), !dbg !24
  br label %common.ret

assert_end64:                                     ; preds = %if_end
  %102 = getelementptr inbounds %1, ptr %A, i64 0, i32 1, i32 0, !dbg !24
  %103 = load i32, ptr %102, align 4, !dbg !24
  %104 = icmp eq i32 %103, 1, !dbg !24
  br i1 %104, label %assert_end66, label %assert_fail65, !dbg !24, !prof !25

assert_fail65:                                    ; preds = %assert_end64
  %105 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %105(ptr nonnull @.str.27), !dbg !24
  br label %common.ret

assert_end66:                                     ; preds = %assert_end64
  %.not173 = icmp eq ptr %A160, null, !dbg !24
  br i1 %.not173, label %assert_fail67, label %assert_end68, !dbg !24, !prof !29

assert_fail67:                                    ; preds = %assert_end66
  %106 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %106(ptr nonnull @.str.28), !dbg !24
  br label %common.ret

assert_end68:                                     ; preds = %assert_end66
  %107 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 0, !dbg !24
  %108 = load i8, ptr %107, align 1, !dbg !24
  %109 = icmp eq i8 %108, 0, !dbg !24
  %110 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 1, !dbg !24
  %111 = load i8, ptr %110, align 1, !dbg !24
  %112 = icmp eq i8 %111, 8, !dbg !24
  %113 = and i1 %109, %112, !dbg !24
  %114 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 3, i32 2, !dbg !24
  %115 = load i16, ptr %114, align 2, !dbg !24
  %116 = icmp eq i16 %115, 1, !dbg !24
  %117 = and i1 %113, %116, !dbg !24
  br i1 %117, label %assert_end70, label %assert_fail69, !dbg !24, !prof !25

assert_fail69:                                    ; preds = %assert_end68
  %118 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %118(ptr nonnull @.str.29), !dbg !24
  br label %common.ret

assert_end70:                                     ; preds = %assert_end68
  %119 = load i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape, align 8, !dbg !24, !tbaa !121
  %120 = and i64 %119, 4294967295, !dbg !24
  %121 = icmp eq i64 %120, 1, !dbg !24
  br i1 %121, label %assert_end72, label %assert_fail71, !dbg !24, !prof !25

assert_fail71:                                    ; preds = %assert_end70
  %122 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %122(ptr nonnull @.str.30), !dbg !24
  br label %common.ret

assert_end72:                                     ; preds = %assert_end70
  %123 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape, i64 1, !dbg !24
  %124 = load i64, ptr %123, align 8, !dbg !24, !tbaa !131
  %125 = and i64 %124, 4294967295, !dbg !24
  %126 = icmp eq i64 %125, 800, !dbg !24
  br i1 %126, label %assert_end74, label %assert_fail73, !dbg !24, !prof !25

assert_fail73:                                    ; preds = %assert_end72
  %127 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %127(ptr nonnull @.str.31), !dbg !24
  br label %common.ret

assert_end74:                                     ; preds = %assert_end72
  %128 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape, i64 2, !dbg !24
  %129 = load i64, ptr %128, align 8, !dbg !24, !tbaa !133
  %130 = and i64 %129, 4294967295, !dbg !24
  %131 = icmp eq i64 %130, 16, !dbg !24
  br i1 %131, label %assert_end76, label %assert_fail75, !dbg !24, !prof !25

assert_fail75:                                    ; preds = %assert_end74
  %132 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %132(ptr nonnull @.str.32), !dbg !24
  br label %common.ret

assert_end76:                                     ; preds = %assert_end74
  %.not174 = icmp eq ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides, null, !dbg !24
  br i1 %.not174, label %if_end78, label %if_then77, !dbg !24, !prof !29

if_then77:                                        ; preds = %assert_end76
  %133 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides, i64 2, !dbg !24
  %134 = load i64, ptr %133, align 8, !dbg !24, !tbaa !136
  %135 = and i64 %134, 4294967295, !dbg !24
  %136 = icmp eq i64 %135, 1, !dbg !24
  %137 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides, i64 1, !dbg !24
  %138 = load i64, ptr %137, align 8, !dbg !24, !tbaa !146
  %139 = and i64 %138, 4294967295, !dbg !24
  %140 = icmp eq i64 %139, 16, !dbg !24
  %141 = and i1 %136, %140, !dbg !24
  br i1 %141, label %if_end78, label %assert_fail79, !dbg !24, !prof !25

if_end78:                                         ; preds = %if_then77, %assert_end76
  %142 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 6, !dbg !24
  %143 = load i64, ptr %142, align 8, !dbg !24
  %144 = icmp eq i64 %143, 0, !dbg !24
  br i1 %144, label %assert_end82, label %assert_fail81, !dbg !24, !prof !25

assert_fail79:                                    ; preds = %if_then77
  %145 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %145(ptr nonnull @.str.33), !dbg !24
  br label %common.ret

assert_fail81:                                    ; preds = %if_end78
  %146 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %146(ptr nonnull @.str.34), !dbg !24
  br label %common.ret

assert_end82:                                     ; preds = %if_end78
  %147 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 0, !dbg !24
  %148 = load i32, ptr %147, align 4, !dbg !24
  %149 = icmp eq i32 %148, 1, !dbg !24
  br i1 %149, label %assert_end84, label %assert_fail83, !dbg !24, !prof !25

assert_fail83:                                    ; preds = %assert_end82
  %150 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %150(ptr nonnull @.str.35), !dbg !24
  br label %common.ret

assert_end84:                                     ; preds = %assert_end82
  %151 = getelementptr inbounds %1, ptr %LUT, i64 0, i32 1, i32 1, !dbg !24
  %152 = load i32, ptr %151, align 4, !dbg !24
  %153 = icmp eq i32 %dev_id, %152, !dbg !24
  br i1 %153, label %assert_end86, label %assert_fail85, !dbg !24, !prof !25

assert_fail85:                                    ; preds = %assert_end84
  %154 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %154(ptr nonnull @.str.36), !dbg !24
  br label %common.ret

assert_end86:                                     ; preds = %assert_end84
  %.not175 = icmp eq ptr %LUT159, null, !dbg !24
  br i1 %.not175, label %assert_fail87, label %assert_end88, !dbg !24, !prof !29

assert_fail87:                                    ; preds = %assert_end86
  %155 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %155(ptr nonnull @.str.37), !dbg !24
  br label %common.ret

assert_end88:                                     ; preds = %assert_end86
  %156 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 0, !dbg !24
  %157 = load i8, ptr %156, align 1, !dbg !24
  %158 = icmp eq i8 %157, 2, !dbg !24
  %159 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 1, !dbg !24
  %160 = load i8, ptr %159, align 1, !dbg !24
  %161 = icmp eq i8 %160, 16, !dbg !24
  %162 = and i1 %158, %161, !dbg !24
  %163 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 3, i32 2, !dbg !24
  %164 = load i16, ptr %163, align 2, !dbg !24
  %165 = icmp eq i16 %164, 1, !dbg !24
  %166 = and i1 %162, %165, !dbg !24
  br i1 %166, label %assert_end90, label %assert_fail89, !dbg !24, !prof !25

assert_fail89:                                    ; preds = %assert_end88
  %167 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %167(ptr nonnull @.str.38), !dbg !24
  br label %common.ret

assert_end90:                                     ; preds = %assert_end88
  %168 = load i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.shape, align 8, !dbg !24, !tbaa !149
  %169 = and i64 %168, 4294967295, !dbg !24
  %170 = icmp eq i64 %169, 1, !dbg !24
  br i1 %170, label %if_end94, label %assert_fail91, !dbg !24, !prof !25

assert_fail91:                                    ; preds = %assert_end90
  %171 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %171(ptr nonnull @.str.39), !dbg !24
  br label %common.ret

if_end94:                                         ; preds = %assert_end90
  %172 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 6, !dbg !24
  %173 = load i64, ptr %172, align 8, !dbg !24
  %174 = icmp eq i64 %173, 0, !dbg !24
  br i1 %174, label %assert_end98, label %assert_fail97, !dbg !24, !prof !25

assert_fail97:                                    ; preds = %if_end94
  %175 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %175(ptr nonnull @.str.41), !dbg !24
  br label %common.ret

assert_end98:                                     ; preds = %if_end94
  %176 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 0, !dbg !24
  %177 = load i32, ptr %176, align 4, !dbg !24
  %178 = icmp eq i32 %177, 1, !dbg !24
  br i1 %178, label %assert_end100, label %assert_fail99, !dbg !24, !prof !25

assert_fail99:                                    ; preds = %assert_end98
  %179 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %179(ptr nonnull @.str.42), !dbg !24
  br label %common.ret

assert_end100:                                    ; preds = %assert_end98
  %180 = getelementptr inbounds %1, ptr %Scales, i64 0, i32 1, i32 1, !dbg !24
  %181 = load i32, ptr %180, align 4, !dbg !24
  %182 = icmp eq i32 %dev_id, %181, !dbg !24
  br i1 %182, label %assert_end102, label %assert_fail101, !dbg !24, !prof !25

assert_fail101:                                   ; preds = %assert_end100
  %183 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %183(ptr nonnull @.str.43), !dbg !24
  br label %common.ret

assert_end102:                                    ; preds = %assert_end100
  %.not176 = icmp eq ptr %Scales161, null, !dbg !24
  br i1 %.not176, label %assert_fail103, label %assert_end104, !dbg !24, !prof !29

assert_fail103:                                   ; preds = %assert_end102
  %184 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %184(ptr nonnull @.str.44), !dbg !24
  br label %common.ret

assert_end104:                                    ; preds = %assert_end102
  %185 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 0, !dbg !24
  %186 = load i8, ptr %185, align 1, !dbg !24
  %187 = icmp eq i8 %186, 2, !dbg !24
  %188 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 1, !dbg !24
  %189 = load i8, ptr %188, align 1, !dbg !24
  %190 = icmp eq i8 %189, 16, !dbg !24
  %191 = and i1 %187, %190, !dbg !24
  %192 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 3, i32 2, !dbg !24
  %193 = load i16, ptr %192, align 2, !dbg !24
  %194 = icmp eq i16 %193, 1, !dbg !24
  %195 = and i1 %191, %194, !dbg !24
  br i1 %195, label %assert_end106, label %assert_fail105, !dbg !24, !prof !25

assert_fail105:                                   ; preds = %assert_end104
  %196 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %196(ptr nonnull @.str.45), !dbg !24
  br label %common.ret

assert_end106:                                    ; preds = %assert_end104
  %197 = load i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape, align 8, !dbg !24, !tbaa !159
  %198 = and i64 %197, 4294967295, !dbg !24
  %199 = icmp eq i64 %198, 1, !dbg !24
  br i1 %199, label %assert_end108, label %assert_fail107, !dbg !24, !prof !25

assert_fail107:                                   ; preds = %assert_end106
  %200 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %200(ptr nonnull @.str.46), !dbg !24
  br label %common.ret

assert_end108:                                    ; preds = %assert_end106
  %201 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape, i64 1, !dbg !24
  %202 = load i64, ptr %201, align 8, !dbg !24, !tbaa !169
  %203 = and i64 %202, 4294967295, !dbg !24
  %204 = icmp eq i64 %203, 50, !dbg !24
  br i1 %204, label %assert_end110, label %assert_fail109, !dbg !24, !prof !25

assert_fail109:                                   ; preds = %assert_end108
  %205 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %205(ptr nonnull @.str.47), !dbg !24
  br label %common.ret

assert_end110:                                    ; preds = %assert_end108
  %.not177 = icmp eq ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides, null, !dbg !24
  br i1 %.not177, label %if_end112, label %if_then111, !dbg !24, !prof !29

if_then111:                                       ; preds = %assert_end110
  %206 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides, i64 1, !dbg !24
  %207 = load i64, ptr %206, align 8, !dbg !24, !tbaa !171
  %208 = and i64 %207, 4294967295, !dbg !24
  %209 = icmp eq i64 %208, 1, !dbg !24
  br i1 %209, label %if_end112, label %assert_fail113, !dbg !24, !prof !25

if_end112:                                        ; preds = %if_then111, %assert_end110
  %210 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 6, !dbg !24
  %211 = load i64, ptr %210, align 8, !dbg !24
  %212 = icmp eq i64 %211, 0, !dbg !24
  br i1 %212, label %assert_end116, label %assert_fail115, !dbg !24, !prof !25

assert_fail113:                                   ; preds = %if_then111
  %213 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %213(ptr nonnull @.str.48), !dbg !24
  br label %common.ret

assert_fail115:                                   ; preds = %if_end112
  %214 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %214(ptr nonnull @.str.49), !dbg !24
  br label %common.ret

assert_end116:                                    ; preds = %if_end112
  %215 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 0, !dbg !24
  %216 = load i32, ptr %215, align 4, !dbg !24
  %217 = icmp eq i32 %216, 1, !dbg !24
  br i1 %217, label %assert_end118, label %assert_fail117, !dbg !24, !prof !25

assert_fail117:                                   ; preds = %assert_end116
  %218 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %218(ptr nonnull @.str.50), !dbg !24
  br label %common.ret

assert_end118:                                    ; preds = %assert_end116
  %219 = getelementptr inbounds %1, ptr %LUT_Scales, i64 0, i32 1, i32 1, !dbg !24
  %220 = load i32, ptr %219, align 4, !dbg !24
  %221 = icmp eq i32 %dev_id, %220, !dbg !24
  br i1 %221, label %assert_end120, label %assert_fail119, !dbg !24, !prof !25

assert_fail119:                                   ; preds = %assert_end118
  %222 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %222(ptr nonnull @.str.51), !dbg !24
  br label %common.ret

assert_end120:                                    ; preds = %assert_end118
  %.not178 = icmp eq ptr %LUT_Scales162, null, !dbg !24
  br i1 %.not178, label %assert_fail121, label %assert_end122, !dbg !24, !prof !29

assert_fail121:                                   ; preds = %assert_end120
  %223 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %223(ptr nonnull @.str.52), !dbg !24
  br label %common.ret

assert_end122:                                    ; preds = %assert_end120
  %224 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 0, !dbg !24
  %225 = load i8, ptr %224, align 1, !dbg !24
  %226 = icmp eq i8 %225, 2, !dbg !24
  %227 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 1, !dbg !24
  %228 = load i8, ptr %227, align 1, !dbg !24
  %229 = icmp eq i8 %228, 16, !dbg !24
  %230 = and i1 %226, %229, !dbg !24
  %231 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 3, i32 2, !dbg !24
  %232 = load i16, ptr %231, align 2, !dbg !24
  %233 = icmp eq i16 %232, 1, !dbg !24
  %234 = and i1 %230, %233, !dbg !24
  br i1 %234, label %assert_end124, label %assert_fail123, !dbg !24, !prof !25

assert_fail123:                                   ; preds = %assert_end122
  %235 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %235(ptr nonnull @.str.53), !dbg !24
  br label %common.ret

assert_end124:                                    ; preds = %assert_end122
  %236 = load i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape, align 8, !dbg !24, !tbaa !181
  %237 = and i64 %236, 4294967295, !dbg !24
  %238 = icmp eq i64 %237, 1, !dbg !24
  br i1 %238, label %assert_end126, label %assert_fail125, !dbg !24, !prof !25

assert_fail125:                                   ; preds = %assert_end124
  %239 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %239(ptr nonnull @.str.54), !dbg !24
  br label %common.ret

assert_end126:                                    ; preds = %assert_end124
  %240 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape, i64 1, !dbg !24
  %241 = load i64, ptr %240, align 8, !dbg !24, !tbaa !191
  %242 = and i64 %241, 4294967295, !dbg !24
  %243 = icmp eq i64 %242, 50, !dbg !24
  br i1 %243, label %assert_end128, label %assert_fail127, !dbg !24, !prof !25

assert_fail127:                                   ; preds = %assert_end126
  %244 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %244(ptr nonnull @.str.55), !dbg !24
  br label %common.ret

assert_end128:                                    ; preds = %assert_end126
  %.not179 = icmp eq ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides, null, !dbg !24
  br i1 %.not179, label %if_end130, label %if_then129, !dbg !24, !prof !29

if_then129:                                       ; preds = %assert_end128
  %245 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides, i64 1, !dbg !24
  %246 = load i64, ptr %245, align 8, !dbg !24, !tbaa !193
  %247 = and i64 %246, 4294967295, !dbg !24
  %248 = icmp eq i64 %247, 1, !dbg !24
  br i1 %248, label %if_end130, label %assert_fail131, !dbg !24, !prof !25

if_end130:                                        ; preds = %if_then129, %assert_end128
  %249 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 6, !dbg !24
  %250 = load i64, ptr %249, align 8, !dbg !24
  %251 = icmp eq i64 %250, 0, !dbg !24
  br i1 %251, label %assert_end134, label %assert_fail133, !dbg !24, !prof !25

assert_fail131:                                   ; preds = %if_then129
  %252 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %252(ptr nonnull @.str.56), !dbg !24
  br label %common.ret

assert_fail133:                                   ; preds = %if_end130
  %253 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %253(ptr nonnull @.str.57), !dbg !24
  br label %common.ret

assert_end134:                                    ; preds = %if_end130
  %254 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 0, !dbg !24
  %255 = load i32, ptr %254, align 4, !dbg !24
  %256 = icmp eq i32 %255, 1, !dbg !24
  br i1 %256, label %assert_end136, label %assert_fail135, !dbg !24, !prof !25

assert_fail135:                                   ; preds = %assert_end134
  %257 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %257(ptr nonnull @.str.58), !dbg !24
  br label %common.ret

assert_end136:                                    ; preds = %assert_end134
  %258 = getelementptr inbounds %1, ptr %LUT_Biases, i64 0, i32 1, i32 1, !dbg !24
  %259 = load i32, ptr %258, align 4, !dbg !24
  %260 = icmp eq i32 %dev_id, %259, !dbg !24
  br i1 %260, label %assert_end138, label %assert_fail137, !dbg !24, !prof !25

assert_fail137:                                   ; preds = %assert_end136
  %261 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %261(ptr nonnull @.str.59), !dbg !24
  br label %common.ret

assert_end138:                                    ; preds = %assert_end136
  %.not180 = icmp eq ptr %LUT_Biases163, null, !dbg !24
  br i1 %.not180, label %assert_fail139, label %assert_end140, !dbg !24, !prof !29

assert_fail139:                                   ; preds = %assert_end138
  %262 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %262(ptr nonnull @.str.60), !dbg !24
  br label %common.ret

assert_end140:                                    ; preds = %assert_end138
  %263 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 0, !dbg !24
  %264 = load i8, ptr %263, align 1, !dbg !24
  %265 = icmp eq i8 %264, 2, !dbg !24
  %266 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 1, !dbg !24
  %267 = load i8, ptr %266, align 1, !dbg !24
  %268 = icmp eq i8 %267, 16, !dbg !24
  %269 = and i1 %265, %268, !dbg !24
  %270 = getelementptr inbounds %1, ptr %C, i64 0, i32 3, i32 2, !dbg !24
  %271 = load i16, ptr %270, align 2, !dbg !24
  %272 = icmp eq i16 %271, 1, !dbg !24
  %273 = and i1 %269, %272, !dbg !24
  br i1 %273, label %assert_end142, label %assert_fail141, !dbg !24, !prof !25

assert_fail141:                                   ; preds = %assert_end140
  %274 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %274(ptr nonnull @.str.61), !dbg !24
  br label %common.ret

assert_end142:                                    ; preds = %assert_end140
  %275 = load i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape, align 8, !dbg !24, !tbaa !203
  %276 = and i64 %275, 4294967295, !dbg !24
  %277 = icmp eq i64 %276, 1, !dbg !24
  br i1 %277, label %assert_end144, label %assert_fail143, !dbg !24, !prof !25

assert_fail143:                                   ; preds = %assert_end142
  %278 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %278(ptr nonnull @.str.62), !dbg !24
  br label %common.ret

assert_end144:                                    ; preds = %assert_end142
  %279 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape, i64 1, !dbg !24
  %280 = load i64, ptr %279, align 8, !dbg !24, !tbaa !213
  %281 = and i64 %280, 4294967295, !dbg !24
  %282 = icmp eq i64 %281, 80, !dbg !24
  br i1 %282, label %assert_end146, label %assert_fail145, !dbg !24, !prof !25

assert_fail145:                                   ; preds = %assert_end144
  %283 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %283(ptr nonnull @.str.63), !dbg !24
  br label %common.ret

assert_end146:                                    ; preds = %assert_end144
  %.not181 = icmp eq ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides, null, !dbg !24
  br i1 %.not181, label %if_end148, label %if_then147, !dbg !24, !prof !29

if_then147:                                       ; preds = %assert_end146
  %284 = getelementptr inbounds i64, ptr %qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides, i64 1, !dbg !24
  %285 = load i64, ptr %284, align 8, !dbg !24, !tbaa !215
  %286 = and i64 %285, 4294967295, !dbg !24
  %287 = icmp eq i64 %286, 1, !dbg !24
  br i1 %287, label %if_end148, label %assert_fail149, !dbg !24, !prof !25

if_end148:                                        ; preds = %if_then147, %assert_end146
  %288 = getelementptr inbounds %1, ptr %C, i64 0, i32 6, !dbg !24
  %289 = load i64, ptr %288, align 8, !dbg !24
  %290 = icmp eq i64 %289, 0, !dbg !24
  br i1 %290, label %assert_end152, label %assert_fail151, !dbg !24, !prof !25

assert_fail149:                                   ; preds = %if_then147
  %291 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %291(ptr nonnull @.str.64), !dbg !24
  br label %common.ret

assert_fail151:                                   ; preds = %if_end148
  %292 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %292(ptr nonnull @.str.65), !dbg !24
  br label %common.ret

assert_end152:                                    ; preds = %if_end148
  %293 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 0, !dbg !24
  %294 = load i32, ptr %293, align 4, !dbg !24
  %295 = icmp eq i32 %294, 1, !dbg !24
  br i1 %295, label %assert_end154, label %assert_fail153, !dbg !24, !prof !25

assert_fail153:                                   ; preds = %assert_end152
  %296 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %296(ptr nonnull @.str.66), !dbg !24
  br label %common.ret

assert_end154:                                    ; preds = %assert_end152
  %297 = getelementptr inbounds %1, ptr %C, i64 0, i32 1, i32 1, !dbg !24
  %298 = load i32, ptr %297, align 4, !dbg !24
  %299 = icmp eq i32 %dev_id, %298, !dbg !24
  br i1 %299, label %assert_end156, label %assert_fail155, !dbg !24, !prof !25

assert_fail155:                                   ; preds = %assert_end154
  %300 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %300(ptr nonnull @.str.67), !dbg !24
  br label %common.ret

assert_end156:                                    ; preds = %assert_end154
  %.not182 = icmp eq ptr %C164, null, !dbg !24
  br i1 %.not182, label %assert_fail157, label %assert_end158, !dbg !24, !prof !29

assert_fail157:                                   ; preds = %assert_end156
  %301 = load ptr, ptr @__TVMAPISetLastError, align 8, !dbg !24, !tbaa !26
  tail call void %301(ptr nonnull @.str.68), !dbg !24
  br label %common.ret

assert_end158:                                    ; preds = %assert_end156
  tail call fastcc void @qgemm_lut_t1_int8_m160_k3200_n1_b2_compute_(ptr nonnull %LUT159, ptr nonnull %A160, ptr nonnull %Scales161, ptr nonnull %LUT_Scales162, ptr nonnull %LUT_Biases163, ptr nonnull %C164), !dbg !24
  br label %common.ret
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #2

; Function Attrs: nofree noinline nosync nounwind memory(argmem: readwrite)
define internal fastcc void @qgemm_lut_t1_int8_m160_k3200_n1_b2_compute_(ptr noalias nocapture readonly align 64 %LUT, ptr noalias nocapture readonly align 64 %A, ptr noalias nocapture readonly align 64 %Scales, ptr noalias nocapture readonly align 64 %LUT_Scales, ptr noalias nocapture readonly align 64 %LUT_Biases, ptr noalias writeonly align 64 %C) unnamed_addr #3 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata ptr %LUT, metadata !229, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr %A, metadata !230, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr %Scales, metadata !231, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr %LUT_Scales, metadata !232, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr %LUT_Biases, metadata !233, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.value(metadata ptr %C, metadata !234, metadata !DIExpression()), !dbg !235
  %CBits64 = alloca [160 x half], align 16, !dbg !235
  call void @llvm.dbg.declare(metadata ptr %CBits64, metadata !236, metadata !DIExpression()), !dbg !235
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(320) %CBits64, i8 0, i64 320, i1 false), !dbg !235
  %0 = load half, ptr %Scales, align 64, !tbaa !237
  %1 = insertelement <8 x half> poison, half %0, i64 0
  %2 = shufflevector <8 x half> %1, <8 x half> poison, <8 x i32> zeroinitializer
  call void @llvm.dbg.declare(metadata i32 0, metadata !241, metadata !DIExpression()), !dbg !235
  br label %for_body_k.outer, !dbg !235

for_body_k.outer:                                 ; preds = %entry, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit ]
  call void @llvm.dbg.declare(metadata i64 %indvars.iv, metadata !241, metadata !DIExpression()), !dbg !235
  %3 = shl nuw nsw i64 %indvars.iv, 8, !dbg !235
  %4 = getelementptr inbounds i8, ptr %LUT, i64 %3, !dbg !235
  %5 = mul nuw nsw i64 %indvars.iv, 1280, !dbg !235
  %6 = getelementptr inbounds i8, ptr %A, i64 %5, !dbg !235
  %7 = getelementptr inbounds half, ptr %LUT_Scales, i64 %indvars.iv, !dbg !235
  %8 = getelementptr inbounds half, ptr %LUT_Biases, i64 %indvars.iv, !dbg !235
  %9 = load <16 x i8>, ptr %4, align 64, !dbg !235
  %10 = getelementptr inbounds i8, ptr %4, i64 16, !dbg !235
  %11 = load <16 x i8>, ptr %10, align 16, !dbg !235
  %12 = getelementptr inbounds i8, ptr %4, i64 32, !dbg !235
  %13 = load <16 x i8>, ptr %12, align 32, !dbg !235
  %14 = getelementptr inbounds i8, ptr %4, i64 48, !dbg !235
  %15 = load <16 x i8>, ptr %14, align 16, !dbg !235
  %16 = getelementptr inbounds i8, ptr %4, i64 64, !dbg !235
  %17 = load <16 x i8>, ptr %16, align 64, !dbg !235
  %18 = getelementptr inbounds i8, ptr %4, i64 80, !dbg !235
  %19 = load <16 x i8>, ptr %18, align 16, !dbg !235
  %20 = getelementptr inbounds i8, ptr %4, i64 96, !dbg !235
  %21 = load <16 x i8>, ptr %20, align 32, !dbg !235
  %22 = getelementptr inbounds i8, ptr %4, i64 112, !dbg !235
  %23 = load <16 x i8>, ptr %22, align 16, !dbg !235
  %24 = getelementptr inbounds i8, ptr %4, i64 128, !dbg !235
  %25 = load <16 x i8>, ptr %24, align 64, !dbg !235
  %26 = getelementptr inbounds i8, ptr %4, i64 144, !dbg !235
  %27 = load <16 x i8>, ptr %26, align 16, !dbg !235
  %28 = getelementptr inbounds i8, ptr %4, i64 160, !dbg !235
  %29 = load <16 x i8>, ptr %28, align 32, !dbg !235
  %30 = getelementptr inbounds i8, ptr %4, i64 176, !dbg !235
  %31 = load <16 x i8>, ptr %30, align 16, !dbg !235
  %32 = getelementptr inbounds i8, ptr %4, i64 192, !dbg !235
  %33 = load <16 x i8>, ptr %32, align 64, !dbg !235
  %34 = getelementptr inbounds i8, ptr %4, i64 208, !dbg !235
  %35 = load <16 x i8>, ptr %34, align 16, !dbg !235
  %36 = getelementptr inbounds i8, ptr %4, i64 224, !dbg !235
  %37 = load <16 x i8>, ptr %36, align 32, !dbg !235
  %38 = getelementptr inbounds i8, ptr %4, i64 240, !dbg !235
  %39 = load <16 x i8>, ptr %38, align 16, !dbg !235
  %40 = load half, ptr %7, align 2, !tbaa !237
  %41 = load half, ptr %8, align 2, !tbaa !237
  %42 = insertelement <8 x half> poison, half %40, i64 0
  %43 = insertelement <8 x half> poison, half %41, i64 0
  %44 = shufflevector <8 x half> %42, <8 x half> poison, <8 x i32> zeroinitializer
  %45 = shufflevector <8 x half> %43, <8 x half> poison, <8 x i32> zeroinitializer
  br label %46, !dbg !235

46:                                               ; preds = %46, %for_body_k.outer
  %47 = phi i64 [ 0, %for_body_k.outer ], [ %354, %46 ], !dbg !235
  %48 = shl nuw nsw i64 %47, 4, !dbg !235
  %49 = getelementptr inbounds i8, ptr %6, i64 %48, !dbg !235
  %50 = load <16 x i8>, ptr %49, align 64, !dbg !235
  %51 = lshr <16 x i8> %50, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %52 = and <16 x i8> %50, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %53 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %9, <16 x i8> %52), !dbg !235
  %54 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %9, <16 x i8> %51), !dbg !235
  %55 = getelementptr inbounds i8, ptr %49, i64 16, !dbg !235
  %56 = load <16 x i8>, ptr %55, align 16, !dbg !235
  %57 = lshr <16 x i8> %56, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %58 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %11, <16 x i8> %57), !dbg !235
  %59 = and <16 x i8> %56, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %60 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %11, <16 x i8> %59), !dbg !235
  %61 = shufflevector <16 x i8> %53, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %62 = shufflevector <16 x i8> %60, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %63 = sext <8 x i8> %61 to <8 x i16>, !dbg !235
  %64 = sext <8 x i8> %62 to <8 x i16>, !dbg !235
  %65 = shufflevector <16 x i8> %53, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %66 = sext <8 x i8> %65 to <8 x i16>, !dbg !235
  %67 = shufflevector <16 x i8> %60, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %68 = sext <8 x i8> %67 to <8 x i16>, !dbg !235
  %69 = add nsw <8 x i16> %64, %63, !dbg !235
  %70 = add nsw <8 x i16> %68, %66, !dbg !235
  %71 = shufflevector <16 x i8> %54, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %72 = shufflevector <16 x i8> %58, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %73 = sext <8 x i8> %71 to <8 x i16>, !dbg !235
  %74 = sext <8 x i8> %72 to <8 x i16>, !dbg !235
  %75 = shufflevector <16 x i8> %54, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %76 = sext <8 x i8> %75 to <8 x i16>, !dbg !235
  %77 = shufflevector <16 x i8> %58, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %78 = sext <8 x i8> %77 to <8 x i16>, !dbg !235
  %79 = getelementptr inbounds i8, ptr %49, i64 32, !dbg !235
  %80 = load <16 x i8>, ptr %79, align 32, !dbg !235
  %81 = lshr <16 x i8> %80, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %82 = and <16 x i8> %80, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %83 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %13, <16 x i8> %82), !dbg !235
  %84 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %13, <16 x i8> %81), !dbg !235
  %85 = getelementptr inbounds i8, ptr %49, i64 48, !dbg !235
  %86 = load <16 x i8>, ptr %85, align 16, !dbg !235
  %87 = and <16 x i8> %86, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %88 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %15, <16 x i8> %87), !dbg !235
  %89 = shufflevector <16 x i8> %83, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %90 = shufflevector <16 x i8> %88, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %91 = sext <8 x i8> %89 to <8 x i16>, !dbg !235
  %92 = sext <8 x i8> %90 to <8 x i16>, !dbg !235
  %93 = shufflevector <16 x i8> %83, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %94 = sext <8 x i8> %93 to <8 x i16>, !dbg !235
  %95 = shufflevector <16 x i8> %88, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %96 = sext <8 x i8> %95 to <8 x i16>, !dbg !235
  %97 = add nsw <8 x i16> %69, %91, !dbg !235
  %98 = add nsw <8 x i16> %97, %92, !dbg !235
  %99 = add nsw <8 x i16> %70, %94, !dbg !235
  %100 = add nsw <8 x i16> %99, %96, !dbg !235
  %101 = lshr <16 x i8> %86, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %102 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %15, <16 x i8> %101), !dbg !235
  %103 = shufflevector <16 x i8> %102, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %104 = sext <8 x i8> %103 to <8 x i16>, !dbg !235
  %105 = shufflevector <16 x i8> %84, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %106 = sext <8 x i8> %105 to <8 x i16>, !dbg !235
  %107 = shufflevector <16 x i8> %102, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %108 = sext <8 x i8> %107 to <8 x i16>, !dbg !235
  %109 = shufflevector <16 x i8> %84, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %110 = sext <8 x i8> %109 to <8 x i16>, !dbg !235
  %111 = getelementptr inbounds i8, ptr %49, i64 64, !dbg !235
  %112 = load <16 x i8>, ptr %111, align 64, !dbg !235
  %113 = lshr <16 x i8> %112, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %114 = and <16 x i8> %112, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %115 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %17, <16 x i8> %114), !dbg !235
  %116 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %17, <16 x i8> %113), !dbg !235
  %117 = getelementptr inbounds i8, ptr %49, i64 80, !dbg !235
  %118 = load <16 x i8>, ptr %117, align 16, !dbg !235
  %119 = and <16 x i8> %118, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %120 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %19, <16 x i8> %119), !dbg !235
  %121 = shufflevector <16 x i8> %115, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %122 = shufflevector <16 x i8> %120, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %123 = sext <8 x i8> %121 to <8 x i16>, !dbg !235
  %124 = sext <8 x i8> %122 to <8 x i16>, !dbg !235
  %125 = shufflevector <16 x i8> %115, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %126 = sext <8 x i8> %125 to <8 x i16>, !dbg !235
  %127 = shufflevector <16 x i8> %120, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %128 = sext <8 x i8> %127 to <8 x i16>, !dbg !235
  %129 = add nsw <8 x i16> %98, %123, !dbg !235
  %130 = add nsw <8 x i16> %129, %124, !dbg !235
  %131 = add nsw <8 x i16> %100, %126, !dbg !235
  %132 = add nsw <8 x i16> %131, %128, !dbg !235
  %133 = lshr <16 x i8> %118, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %134 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %19, <16 x i8> %133), !dbg !235
  %135 = shufflevector <16 x i8> %134, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %136 = sext <8 x i8> %135 to <8 x i16>, !dbg !235
  %137 = shufflevector <16 x i8> %116, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %138 = sext <8 x i8> %137 to <8 x i16>, !dbg !235
  %139 = shufflevector <16 x i8> %134, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %140 = sext <8 x i8> %139 to <8 x i16>, !dbg !235
  %141 = shufflevector <16 x i8> %116, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %142 = sext <8 x i8> %141 to <8 x i16>, !dbg !235
  %143 = getelementptr inbounds i8, ptr %49, i64 96, !dbg !235
  %144 = load <16 x i8>, ptr %143, align 32, !dbg !235
  %145 = lshr <16 x i8> %144, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %146 = and <16 x i8> %144, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %147 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %21, <16 x i8> %146), !dbg !235
  %148 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %21, <16 x i8> %145), !dbg !235
  %149 = getelementptr inbounds i8, ptr %49, i64 112, !dbg !235
  %150 = load <16 x i8>, ptr %149, align 16, !dbg !235
  %151 = and <16 x i8> %150, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %152 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %23, <16 x i8> %151), !dbg !235
  %153 = shufflevector <16 x i8> %147, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %154 = shufflevector <16 x i8> %152, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %155 = sext <8 x i8> %153 to <8 x i16>, !dbg !235
  %156 = sext <8 x i8> %154 to <8 x i16>, !dbg !235
  %157 = shufflevector <16 x i8> %147, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %158 = sext <8 x i8> %157 to <8 x i16>, !dbg !235
  %159 = shufflevector <16 x i8> %152, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %160 = sext <8 x i8> %159 to <8 x i16>, !dbg !235
  %161 = add nsw <8 x i16> %130, %155, !dbg !235
  %162 = add <8 x i16> %161, %156, !dbg !235
  %163 = add nsw <8 x i16> %132, %158, !dbg !235
  %164 = add <8 x i16> %163, %160, !dbg !235
  %165 = lshr <16 x i8> %150, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %166 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %23, <16 x i8> %165), !dbg !235
  %167 = shufflevector <16 x i8> %166, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %168 = sext <8 x i8> %167 to <8 x i16>, !dbg !235
  %169 = shufflevector <16 x i8> %148, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %170 = sext <8 x i8> %169 to <8 x i16>, !dbg !235
  %171 = shufflevector <16 x i8> %166, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %172 = sext <8 x i8> %171 to <8 x i16>, !dbg !235
  %173 = shufflevector <16 x i8> %148, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %174 = sext <8 x i8> %173 to <8 x i16>, !dbg !235
  %175 = getelementptr inbounds i8, ptr %49, i64 128, !dbg !235
  %176 = load <16 x i8>, ptr %175, align 64, !dbg !235
  %177 = lshr <16 x i8> %176, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %178 = and <16 x i8> %176, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %179 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %25, <16 x i8> %178), !dbg !235
  %180 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %25, <16 x i8> %177), !dbg !235
  %181 = getelementptr inbounds i8, ptr %49, i64 144, !dbg !235
  %182 = load <16 x i8>, ptr %181, align 16, !dbg !235
  %183 = and <16 x i8> %182, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %184 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %27, <16 x i8> %183), !dbg !235
  %185 = shufflevector <16 x i8> %179, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %186 = shufflevector <16 x i8> %184, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %187 = sext <8 x i8> %185 to <8 x i16>, !dbg !235
  %188 = sext <8 x i8> %186 to <8 x i16>, !dbg !235
  %189 = shufflevector <16 x i8> %179, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %190 = sext <8 x i8> %189 to <8 x i16>, !dbg !235
  %191 = shufflevector <16 x i8> %184, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %192 = sext <8 x i8> %191 to <8 x i16>, !dbg !235
  %193 = add <8 x i16> %162, %187, !dbg !235
  %194 = add <8 x i16> %193, %188, !dbg !235
  %195 = add <8 x i16> %164, %190, !dbg !235
  %196 = add <8 x i16> %195, %192, !dbg !235
  %197 = lshr <16 x i8> %182, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %198 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %27, <16 x i8> %197), !dbg !235
  %199 = shufflevector <16 x i8> %198, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %200 = sext <8 x i8> %199 to <8 x i16>, !dbg !235
  %201 = shufflevector <16 x i8> %180, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %202 = sext <8 x i8> %201 to <8 x i16>, !dbg !235
  %203 = shufflevector <16 x i8> %198, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %204 = sext <8 x i8> %203 to <8 x i16>, !dbg !235
  %205 = shufflevector <16 x i8> %180, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %206 = sext <8 x i8> %205 to <8 x i16>, !dbg !235
  %207 = getelementptr inbounds i8, ptr %49, i64 160, !dbg !235
  %208 = load <16 x i8>, ptr %207, align 32, !dbg !235
  %209 = lshr <16 x i8> %208, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %210 = and <16 x i8> %208, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %211 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %29, <16 x i8> %210), !dbg !235
  %212 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %29, <16 x i8> %209), !dbg !235
  %213 = getelementptr inbounds i8, ptr %49, i64 176, !dbg !235
  %214 = load <16 x i8>, ptr %213, align 16, !dbg !235
  %215 = and <16 x i8> %214, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %216 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %31, <16 x i8> %215), !dbg !235
  %217 = shufflevector <16 x i8> %211, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %218 = shufflevector <16 x i8> %216, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %219 = sext <8 x i8> %217 to <8 x i16>, !dbg !235
  %220 = sext <8 x i8> %218 to <8 x i16>, !dbg !235
  %221 = shufflevector <16 x i8> %211, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %222 = sext <8 x i8> %221 to <8 x i16>, !dbg !235
  %223 = shufflevector <16 x i8> %216, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %224 = sext <8 x i8> %223 to <8 x i16>, !dbg !235
  %225 = add <8 x i16> %194, %219, !dbg !235
  %226 = add <8 x i16> %225, %220, !dbg !235
  %227 = add <8 x i16> %196, %222, !dbg !235
  %228 = add <8 x i16> %227, %224, !dbg !235
  %229 = lshr <16 x i8> %214, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %230 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %31, <16 x i8> %229), !dbg !235
  %231 = shufflevector <16 x i8> %230, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %232 = sext <8 x i8> %231 to <8 x i16>, !dbg !235
  %233 = shufflevector <16 x i8> %212, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %234 = sext <8 x i8> %233 to <8 x i16>, !dbg !235
  %235 = shufflevector <16 x i8> %230, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %236 = sext <8 x i8> %235 to <8 x i16>, !dbg !235
  %237 = shufflevector <16 x i8> %212, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %238 = sext <8 x i8> %237 to <8 x i16>, !dbg !235
  %239 = getelementptr inbounds i8, ptr %49, i64 192, !dbg !235
  %240 = load <16 x i8>, ptr %239, align 64, !dbg !235
  %241 = lshr <16 x i8> %240, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %242 = and <16 x i8> %240, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %243 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %242), !dbg !235
  %244 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %33, <16 x i8> %241), !dbg !235
  %245 = getelementptr inbounds i8, ptr %49, i64 208, !dbg !235
  %246 = load <16 x i8>, ptr %245, align 16, !dbg !235
  %247 = and <16 x i8> %246, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %248 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %247), !dbg !235
  %249 = shufflevector <16 x i8> %243, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %250 = shufflevector <16 x i8> %248, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %251 = sext <8 x i8> %249 to <8 x i16>, !dbg !235
  %252 = sext <8 x i8> %250 to <8 x i16>, !dbg !235
  %253 = shufflevector <16 x i8> %243, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %254 = sext <8 x i8> %253 to <8 x i16>, !dbg !235
  %255 = shufflevector <16 x i8> %248, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %256 = sext <8 x i8> %255 to <8 x i16>, !dbg !235
  %257 = add <8 x i16> %226, %251, !dbg !235
  %258 = add <8 x i16> %257, %252, !dbg !235
  %259 = add <8 x i16> %228, %254, !dbg !235
  %260 = add <8 x i16> %259, %256, !dbg !235
  %261 = lshr <16 x i8> %246, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %262 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %35, <16 x i8> %261), !dbg !235
  %263 = shufflevector <16 x i8> %262, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %264 = sext <8 x i8> %263 to <8 x i16>, !dbg !235
  %265 = shufflevector <16 x i8> %244, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %266 = sext <8 x i8> %265 to <8 x i16>, !dbg !235
  %267 = shufflevector <16 x i8> %262, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %268 = sext <8 x i8> %267 to <8 x i16>, !dbg !235
  %269 = shufflevector <16 x i8> %244, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %270 = sext <8 x i8> %269 to <8 x i16>, !dbg !235
  %271 = getelementptr inbounds i8, ptr %49, i64 224, !dbg !235
  %272 = load <16 x i8>, ptr %271, align 32, !dbg !235
  %273 = lshr <16 x i8> %272, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %274 = and <16 x i8> %272, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %275 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %274), !dbg !235
  %276 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %37, <16 x i8> %273), !dbg !235
  %277 = getelementptr inbounds i8, ptr %49, i64 240, !dbg !235
  %278 = load <16 x i8>, ptr %277, align 16, !dbg !235
  %279 = and <16 x i8> %278, <i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15, i8 15>, !dbg !235
  %280 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %279), !dbg !235
  %281 = shufflevector <16 x i8> %275, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %282 = shufflevector <16 x i8> %280, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %283 = sext <8 x i8> %281 to <8 x i16>, !dbg !235
  %284 = sext <8 x i8> %282 to <8 x i16>, !dbg !235
  %285 = shufflevector <16 x i8> %275, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %286 = sext <8 x i8> %285 to <8 x i16>, !dbg !235
  %287 = shufflevector <16 x i8> %280, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %288 = sext <8 x i8> %287 to <8 x i16>, !dbg !235
  %289 = add <8 x i16> %258, %283, !dbg !235
  %290 = add <8 x i16> %289, %284, !dbg !235
  %291 = add <8 x i16> %260, %286, !dbg !235
  %292 = add <8 x i16> %291, %288, !dbg !235
  %293 = lshr <16 x i8> %278, <i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4, i8 4>, !dbg !235
  %294 = tail call <16 x i8> @llvm.aarch64.neon.tbl1.v16i8(<16 x i8> %39, <16 x i8> %293), !dbg !235
  %295 = shufflevector <16 x i8> %294, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %296 = sext <8 x i8> %295 to <8 x i16>, !dbg !235
  %297 = shufflevector <16 x i8> %276, <16 x i8> poison, <8 x i32> <i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, !dbg !235
  %298 = sext <8 x i8> %297 to <8 x i16>, !dbg !235
  %299 = add nsw <8 x i16> %78, %76, !dbg !235
  %300 = add nsw <8 x i16> %299, %106, !dbg !235
  %301 = add nsw <8 x i16> %300, %104, !dbg !235
  %302 = add nsw <8 x i16> %301, %138, !dbg !235
  %303 = add nsw <8 x i16> %302, %136, !dbg !235
  %304 = add nsw <8 x i16> %303, %170, !dbg !235
  %305 = add <8 x i16> %304, %168, !dbg !235
  %306 = add <8 x i16> %305, %202, !dbg !235
  %307 = add <8 x i16> %306, %200, !dbg !235
  %308 = add <8 x i16> %307, %234, !dbg !235
  %309 = add <8 x i16> %308, %232, !dbg !235
  %310 = add <8 x i16> %309, %266, !dbg !235
  %311 = add <8 x i16> %310, %264, !dbg !235
  %312 = add <8 x i16> %311, %298, !dbg !235
  %313 = add <8 x i16> %312, %296, !dbg !235
  %314 = shufflevector <16 x i8> %294, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %315 = sext <8 x i8> %314 to <8 x i16>, !dbg !235
  %316 = shufflevector <16 x i8> %276, <16 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, !dbg !235
  %317 = sext <8 x i8> %316 to <8 x i16>, !dbg !235
  %318 = add nsw <8 x i16> %74, %73, !dbg !235
  %319 = add nsw <8 x i16> %318, %110, !dbg !235
  %320 = add nsw <8 x i16> %319, %108, !dbg !235
  %321 = add nsw <8 x i16> %320, %142, !dbg !235
  %322 = add nsw <8 x i16> %321, %140, !dbg !235
  %323 = add nsw <8 x i16> %322, %174, !dbg !235
  %324 = add <8 x i16> %323, %172, !dbg !235
  %325 = add <8 x i16> %324, %206, !dbg !235
  %326 = add <8 x i16> %325, %204, !dbg !235
  %327 = add <8 x i16> %326, %238, !dbg !235
  %328 = add <8 x i16> %327, %236, !dbg !235
  %329 = add <8 x i16> %328, %270, !dbg !235
  %330 = add <8 x i16> %329, %268, !dbg !235
  %331 = add <8 x i16> %330, %317, !dbg !235
  %332 = add <8 x i16> %331, %315, !dbg !235
  %333 = sitofp <8 x i16> %290 to <8 x half>, !dbg !235
  %334 = sitofp <8 x i16> %292 to <8 x half>, !dbg !235
  %335 = sitofp <8 x i16> %332 to <8 x half>, !dbg !235
  %336 = sitofp <8 x i16> %313 to <8 x half>, !dbg !235
  %337 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %333, <8 x half> %44, <8 x half> %45), !dbg !235
  %338 = fmul <8 x half> %44, %334, !dbg !235
  %339 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %335, <8 x half> %44, <8 x half> %45), !dbg !235
  %340 = fmul <8 x half> %44, %336, !dbg !235
  %341 = shl nuw nsw i64 %47, 1, !dbg !235
  %342 = getelementptr inbounds half, ptr %CBits64, i64 %341, !dbg !235
  %343 = load <8 x half>, ptr %342, align 16, !dbg !235
  %344 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %337, <8 x half> %2, <8 x half> %343), !dbg !235
  store <8 x half> %344, ptr %342, align 16, !dbg !235
  %345 = getelementptr inbounds half, ptr %342, i64 8, !dbg !235
  %346 = load <8 x half>, ptr %345, align 16, !dbg !235
  %347 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %338, <8 x half> %2, <8 x half> %346), !dbg !235
  store <8 x half> %347, ptr %345, align 16, !dbg !235
  %348 = getelementptr inbounds half, ptr %342, i64 16, !dbg !235
  %349 = load <8 x half>, ptr %348, align 16, !dbg !235
  %350 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %339, <8 x half> %2, <8 x half> %349), !dbg !235
  store <8 x half> %350, ptr %348, align 16, !dbg !235
  %351 = getelementptr inbounds half, ptr %342, i64 24, !dbg !235
  %352 = load <8 x half>, ptr %351, align 16, !dbg !235
  %353 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %340, <8 x half> %2, <8 x half> %352), !dbg !235
  store <8 x half> %353, ptr %351, align 16, !dbg !235
  %354 = add nuw nsw i64 %47, 16, !dbg !235
  %355 = icmp ult i64 %47, 64, !dbg !235
  br i1 %355, label %46, label %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit, !dbg !235, !llvm.loop !242

tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit: ; preds = %46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !235
  call void @llvm.dbg.declare(metadata i64 %indvars.iv.next, metadata !241, metadata !DIExpression()), !dbg !235
  %exitcond.not = icmp eq i64 %indvars.iv.next, 50, !dbg !235
  br i1 %exitcond.not, label %if_end62.2, label %for_body_k.outer, !dbg !235, !prof !29

if_end62.2:                                       ; preds = %tbl_g4_int8_float_update_strue_k16_b2_ak16_fafalse_zfalse_ostrue.exit
  call void @llvm.dbg.declare(metadata i64 0, metadata !244, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !245, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !246, metadata !DIExpression()), !dbg !235
  %356 = getelementptr inbounds half, ptr %CBits64, i64 8, !dbg !235
  call void @llvm.dbg.value(metadata half undef, metadata !247, metadata !DIExpression()), !dbg !235
  %357 = getelementptr inbounds half, ptr %CBits64, i64 16, !dbg !235
  %358 = getelementptr inbounds half, ptr %CBits64, i64 24, !dbg !235
  %359 = getelementptr inbounds half, ptr %CBits64, i64 32, !dbg !235
  %360 = getelementptr inbounds half, ptr %CBits64, i64 40, !dbg !235
  %361 = getelementptr inbounds half, ptr %CBits64, i64 48, !dbg !235
  %362 = getelementptr inbounds half, ptr %CBits64, i64 56, !dbg !235
  call void @llvm.dbg.declare(metadata i64 1, metadata !244, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 1, metadata !244, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 64, metadata !245, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 64, metadata !245, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 32, metadata !246, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 32, metadata !246, metadata !DIExpression()), !dbg !235
  %363 = getelementptr inbounds half, ptr %CBits64, i64 64, !dbg !235
  %364 = getelementptr inbounds half, ptr %CBits64, i64 72, !dbg !235
  %365 = getelementptr inbounds half, ptr %CBits64, i64 80, !dbg !235
  %366 = getelementptr inbounds half, ptr %CBits64, i64 88, !dbg !235
  %367 = getelementptr inbounds half, ptr %CBits64, i64 96, !dbg !235
  %368 = getelementptr inbounds half, ptr %CBits64, i64 104, !dbg !235
  %369 = getelementptr inbounds half, ptr %CBits64, i64 112, !dbg !235
  %370 = getelementptr inbounds half, ptr %CBits64, i64 120, !dbg !235
  call void @llvm.dbg.declare(metadata i64 2, metadata !244, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 2, metadata !244, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 128, metadata !245, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 128, metadata !245, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 64, metadata !246, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 64, metadata !246, metadata !DIExpression()), !dbg !235
  %371 = getelementptr inbounds half, ptr %CBits64, i64 128, !dbg !235
  %372 = getelementptr inbounds half, ptr %CBits64, i64 136, !dbg !235
  %373 = getelementptr inbounds half, ptr %CBits64, i64 144, !dbg !235
  %374 = getelementptr inbounds half, ptr %CBits64, i64 152, !dbg !235
  call void @llvm.dbg.declare(metadata i64 3, metadata !244, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !248, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 0, metadata !249, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 9, metadata !250, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 9, metadata !250, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 8, metadata !251, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 8, metadata !251, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 7, metadata !252, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 7, metadata !252, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 6, metadata !253, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 6, metadata !253, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 5, metadata !254, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 5, metadata !254, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 4, metadata !255, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 4, metadata !255, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 3, metadata !256, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 3, metadata !256, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 2, metadata !257, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 2, metadata !257, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 15, metadata !258, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 15, metadata !258, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 14, metadata !259, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 14, metadata !259, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 13, metadata !260, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 13, metadata !260, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 12, metadata !261, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 12, metadata !261, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 11, metadata !262, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 11, metadata !262, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 10, metadata !263, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 10, metadata !263, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 1, metadata !264, metadata !DIExpression()), !dbg !235
  %375 = load <8 x half>, ptr %CBits64, align 16, !dbg !235, !tbaa !265
  %376 = load <8 x half>, ptr %356, align 16, !dbg !235, !tbaa !265
  %377 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %375, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %376), !dbg !235
  %378 = getelementptr inbounds half, ptr %C, i64 8, !dbg !235
  %379 = load <8 x half>, ptr %357, align 16, !dbg !235, !tbaa !265
  %380 = load <8 x half>, ptr %358, align 16, !dbg !235, !tbaa !265
  %381 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %379, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %380), !dbg !235
  call void @llvm.dbg.declare(metadata i64 16, metadata !267, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 16, metadata !267, metadata !DIExpression()), !dbg !235
  %382 = getelementptr inbounds half, ptr %C, i64 16, !dbg !235
  call void @llvm.dbg.declare(metadata i64 17, metadata !268, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 17, metadata !268, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 18, metadata !269, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 18, metadata !269, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 19, metadata !270, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 19, metadata !270, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 20, metadata !271, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 20, metadata !271, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 21, metadata !272, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 21, metadata !272, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 22, metadata !273, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 22, metadata !273, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 23, metadata !274, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 23, metadata !274, metadata !DIExpression()), !dbg !235
  %383 = load <8 x half>, ptr %359, align 16, !dbg !235, !tbaa !265
  %384 = load <8 x half>, ptr %360, align 16, !dbg !235, !tbaa !265
  %385 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %383, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %384), !dbg !235
  call void @llvm.dbg.declare(metadata i64 24, metadata !275, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 24, metadata !275, metadata !DIExpression()), !dbg !235
  %386 = getelementptr inbounds half, ptr %C, i64 24, !dbg !235
  call void @llvm.dbg.declare(metadata i64 25, metadata !276, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 25, metadata !276, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 26, metadata !277, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 26, metadata !277, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 27, metadata !278, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 27, metadata !278, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 28, metadata !279, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 28, metadata !279, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 29, metadata !280, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 29, metadata !280, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 30, metadata !281, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 30, metadata !281, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 31, metadata !282, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 31, metadata !282, metadata !DIExpression()), !dbg !235
  %387 = load <8 x half>, ptr %361, align 16, !dbg !235, !tbaa !265
  %388 = load <8 x half>, ptr %362, align 16, !dbg !235, !tbaa !265
  %389 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %387, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %388), !dbg !235
  call void @llvm.dbg.declare(metadata i64 1, metadata !248, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 1, metadata !248, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 32, metadata !249, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 32, metadata !249, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 41, metadata !250, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 41, metadata !250, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 40, metadata !251, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 40, metadata !251, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 39, metadata !252, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 39, metadata !252, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 38, metadata !253, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 38, metadata !253, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 37, metadata !254, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 37, metadata !254, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 36, metadata !255, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 36, metadata !255, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 35, metadata !256, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 35, metadata !256, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 34, metadata !257, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 34, metadata !257, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 47, metadata !258, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 47, metadata !258, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 46, metadata !259, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 46, metadata !259, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 45, metadata !260, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 45, metadata !260, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 44, metadata !261, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 44, metadata !261, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 43, metadata !262, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 43, metadata !262, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 42, metadata !263, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 42, metadata !263, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 33, metadata !264, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 33, metadata !264, metadata !DIExpression()), !dbg !235
  %390 = getelementptr inbounds half, ptr %C, i64 32, !dbg !235
  %391 = load <8 x half>, ptr %363, align 16, !dbg !235, !tbaa !265
  %392 = load <8 x half>, ptr %364, align 16, !dbg !235, !tbaa !265
  %393 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %391, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %392), !dbg !235
  %394 = getelementptr inbounds half, ptr %C, i64 40, !dbg !235
  %395 = load <8 x half>, ptr %365, align 16, !dbg !235, !tbaa !265
  %396 = load <8 x half>, ptr %366, align 16, !dbg !235, !tbaa !265
  %397 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %395, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %396), !dbg !235
  call void @llvm.dbg.declare(metadata i64 48, metadata !267, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 48, metadata !267, metadata !DIExpression()), !dbg !235
  %398 = getelementptr inbounds half, ptr %C, i64 48, !dbg !235
  call void @llvm.dbg.declare(metadata i64 49, metadata !268, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 49, metadata !268, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 50, metadata !269, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 50, metadata !269, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 51, metadata !270, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 51, metadata !270, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 52, metadata !271, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 52, metadata !271, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 53, metadata !272, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 53, metadata !272, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 54, metadata !273, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 54, metadata !273, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 55, metadata !274, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 55, metadata !274, metadata !DIExpression()), !dbg !235
  %399 = load <8 x half>, ptr %367, align 16, !dbg !235, !tbaa !265
  %400 = load <8 x half>, ptr %368, align 16, !dbg !235, !tbaa !265
  %401 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %399, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %400), !dbg !235
  call void @llvm.dbg.declare(metadata i64 56, metadata !275, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 56, metadata !275, metadata !DIExpression()), !dbg !235
  %402 = getelementptr inbounds half, ptr %C, i64 56, !dbg !235
  call void @llvm.dbg.declare(metadata i64 57, metadata !276, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 57, metadata !276, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 58, metadata !277, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 58, metadata !277, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 59, metadata !278, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 59, metadata !278, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 60, metadata !279, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 60, metadata !279, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 61, metadata !280, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 61, metadata !280, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 62, metadata !281, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 62, metadata !281, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 63, metadata !282, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 63, metadata !282, metadata !DIExpression()), !dbg !235
  %403 = load <8 x half>, ptr %369, align 16, !dbg !235, !tbaa !265
  %404 = load <8 x half>, ptr %370, align 16, !dbg !235, !tbaa !265
  %405 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %403, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %404), !dbg !235
  call void @llvm.dbg.declare(metadata i64 2, metadata !248, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 2, metadata !248, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 64, metadata !249, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 64, metadata !249, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 73, metadata !250, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 73, metadata !250, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 72, metadata !251, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 72, metadata !251, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 71, metadata !252, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 71, metadata !252, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 70, metadata !253, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 70, metadata !253, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 69, metadata !254, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 69, metadata !254, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 68, metadata !255, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 68, metadata !255, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 67, metadata !256, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 67, metadata !256, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 66, metadata !257, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 66, metadata !257, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 79, metadata !258, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 79, metadata !258, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 78, metadata !259, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 78, metadata !259, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 77, metadata !260, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 77, metadata !260, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 76, metadata !261, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 76, metadata !261, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 75, metadata !262, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 75, metadata !262, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 74, metadata !263, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 74, metadata !263, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 65, metadata !264, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i64 65, metadata !264, metadata !DIExpression()), !dbg !235
  %406 = getelementptr inbounds half, ptr %C, i64 64, !dbg !235
  %407 = load <8 x half>, ptr %371, align 16, !dbg !235, !tbaa !265
  %408 = load <8 x half>, ptr %372, align 16, !dbg !235, !tbaa !265
  %409 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %407, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %408), !dbg !235
  %410 = getelementptr inbounds half, ptr %C, i64 72, !dbg !235
  %411 = load <8 x half>, ptr %373, align 16, !dbg !235, !tbaa !265
  %412 = load <8 x half>, ptr %374, align 16, !dbg !235, !tbaa !265
  %413 = tail call <8 x half> @llvm.fmuladd.v8f16(<8 x half> %411, <8 x half> <half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800, half 0xH3800>, <8 x half> %412), !dbg !235
  store <8 x half> %377, ptr %C, align 64, !dbg !235, !tbaa !283
  store <8 x half> %381, ptr %378, align 16, !dbg !235, !tbaa !283
  store <8 x half> %385, ptr %382, align 32, !dbg !235, !tbaa !283
  store <8 x half> %389, ptr %386, align 16, !dbg !235, !tbaa !283
  store <8 x half> %393, ptr %390, align 64, !dbg !235, !tbaa !283
  store <8 x half> %397, ptr %394, align 16, !dbg !235, !tbaa !283
  store <8 x half> %401, ptr %398, align 32, !dbg !235, !tbaa !283
  store <8 x half> %405, ptr %402, align 16, !dbg !235, !tbaa !283
  store <8 x half> %409, ptr %406, align 64, !dbg !235, !tbaa !283
  store <8 x half> %413, ptr %410, align 16, !dbg !235, !tbaa !283
  call void @llvm.dbg.declare(metadata i64 3, metadata !248, metadata !DIExpression()), !dbg !235
  ret void, !dbg !235
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
!11 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2", scope: !1, file: !1, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
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
!31 = !{!"0x600003f7d530.w4.b0", !32, i64 0}
!32 = !{!"0x600003f7d530.w8.b0", !33, i64 0}
!33 = !{!"0x600003f7d530.w16.b0", !34, i64 0}
!34 = !{!"0x600003f7d530.w32.b0", !35, i64 0}
!35 = !{!"0x600003f7d530.w64.b0", !36, i64 0}
!36 = !{!"0x600003f7d530.w128.b0", !37, i64 0}
!37 = !{!"0x600003f7d530.w256.b0", !38, i64 0}
!38 = !{!"0x600003f7d530.w512.b0", !39, i64 0}
!39 = !{!"0x600003f7d530.w1024.b0", !40, i64 0}
!40 = !{!"0x600003f7d530", !28, i64 0}
!41 = !DILocalVariable(name: "A.code", scope: !11, file: !1, type: !14)
!42 = !{!43, !43, i64 0}
!43 = !{!"0x600003f7d530.w4.b4", !32, i64 0}
!44 = !DILocalVariable(name: "LUT.code", scope: !11, file: !1, type: !14)
!45 = !{!46, !46, i64 0}
!46 = !{!"0x600003f7d530.w4.b8", !47, i64 0}
!47 = !{!"0x600003f7d530.w8.b8", !33, i64 0}
!48 = !DILocalVariable(name: "Scales.code", scope: !11, file: !1, type: !14)
!49 = !{!50, !50, i64 0}
!50 = !{!"0x600003f7d530.w4.b12", !47, i64 0}
!51 = !DILocalVariable(name: "LUT_Scales.code", scope: !11, file: !1, type: !14)
!52 = !{!53, !53, i64 0}
!53 = !{!"0x600003f7d530.w4.b16", !54, i64 0}
!54 = !{!"0x600003f7d530.w8.b16", !55, i64 0}
!55 = !{!"0x600003f7d530.w16.b16", !34, i64 0}
!56 = !DILocalVariable(name: "LUT_Biases.code", scope: !11, file: !1, type: !14)
!57 = !{!58, !58, i64 0}
!58 = !{!"0x600003f7d530.w4.b20", !54, i64 0}
!59 = !DILocalVariable(name: "C.code", scope: !11, file: !1, type: !14)
!60 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !15)
!61 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !15)
!62 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !15)
!63 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !15)
!64 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !15)
!65 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !15)
!66 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.A.shape", scope: !11, file: !1, type: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68)
!68 = !DIBasicType(name: "int64", size: 64, encoding: DW_ATE_signed)
!69 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.A.strides", scope: !11, file: !1, type: !67)
!70 = !DILocalVariable(name: "dev_id", scope: !11, file: !1, type: !14)
!71 = !DILocalVariable(name: "A", scope: !11, file: !1, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73)
!73 = !DIBasicType(name: "uint8", size: 8, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.shape", scope: !11, file: !1, type: !67)
!75 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT.strides", scope: !11, file: !1, type: !67)
!76 = !DILocalVariable(name: "LUT", scope: !11, file: !1, type: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78)
!78 = !DIBasicType(name: "int8", size: 8, encoding: DW_ATE_signed)
!79 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.shape", scope: !11, file: !1, type: !67)
!80 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.Scales.strides", scope: !11, file: !1, type: !67)
!81 = !DILocalVariable(name: "Scales", scope: !11, file: !1, type: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83)
!83 = !DIBasicType(name: "float16", size: 16, encoding: DW_ATE_float)
!84 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.shape", scope: !11, file: !1, type: !67)
!85 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Scales.strides", scope: !11, file: !1, type: !67)
!86 = !DILocalVariable(name: "LUT_Scales", scope: !11, file: !1, type: !82)
!87 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.shape", scope: !11, file: !1, type: !67)
!88 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.LUT_Biases.strides", scope: !11, file: !1, type: !67)
!89 = !DILocalVariable(name: "LUT_Biases", scope: !11, file: !1, type: !82)
!90 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.C.shape", scope: !11, file: !1, type: !67)
!91 = !DILocalVariable(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2.C.strides", scope: !11, file: !1, type: !67)
!92 = !DILocalVariable(name: "C", scope: !11, file: !1, type: !82)
!93 = !{!94, !94, i64 0}
!94 = !{!"0x600003f85ce0.w8.b0", !95, i64 0}
!95 = !{!"0x600003f85ce0.w16.b0", !96, i64 0}
!96 = !{!"0x600003f85ce0.w32.b0", !97, i64 0}
!97 = !{!"0x600003f85ce0.w64.b0", !98, i64 0}
!98 = !{!"0x600003f85ce0.w128.b0", !99, i64 0}
!99 = !{!"0x600003f85ce0.w256.b0", !100, i64 0}
!100 = !{!"0x600003f85ce0.w512.b0", !101, i64 0}
!101 = !{!"0x600003f85ce0.w1024.b0", !102, i64 0}
!102 = !{!"0x600003f85ce0", !28, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x600003f85ce0.w8.b8", !95, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x600003f85ce0.w8.b16", !107, i64 0}
!107 = !{!"0x600003f85ce0.w16.b16", !96, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x600003f87c30.w8.b16", !110, i64 0}
!110 = !{!"0x600003f87c30.w16.b16", !111, i64 0}
!111 = !{!"0x600003f87c30.w32.b0", !112, i64 0}
!112 = !{!"0x600003f87c30.w64.b0", !113, i64 0}
!113 = !{!"0x600003f87c30.w128.b0", !114, i64 0}
!114 = !{!"0x600003f87c30.w256.b0", !115, i64 0}
!115 = !{!"0x600003f87c30.w512.b0", !116, i64 0}
!116 = !{!"0x600003f87c30.w1024.b0", !117, i64 0}
!117 = !{!"0x600003f87c30", !28, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x600003f87c30.w8.b8", !120, i64 0}
!120 = !{!"0x600003f87c30.w16.b0", !111, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x600003cd9770.w8.b0", !123, i64 0}
!123 = !{!"0x600003cd9770.w16.b0", !124, i64 0}
!124 = !{!"0x600003cd9770.w32.b0", !125, i64 0}
!125 = !{!"0x600003cd9770.w64.b0", !126, i64 0}
!126 = !{!"0x600003cd9770.w128.b0", !127, i64 0}
!127 = !{!"0x600003cd9770.w256.b0", !128, i64 0}
!128 = !{!"0x600003cd9770.w512.b0", !129, i64 0}
!129 = !{!"0x600003cd9770.w1024.b0", !130, i64 0}
!130 = !{!"0x600003cd9770", !28, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"0x600003cd9770.w8.b8", !123, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x600003cd9770.w8.b16", !135, i64 0}
!135 = !{!"0x600003cd9770.w16.b16", !124, i64 0}
!136 = !{!137, !137, i64 0}
!137 = !{!"0x600003cdb3c0.w8.b16", !138, i64 0}
!138 = !{!"0x600003cdb3c0.w16.b16", !139, i64 0}
!139 = !{!"0x600003cdb3c0.w32.b0", !140, i64 0}
!140 = !{!"0x600003cdb3c0.w64.b0", !141, i64 0}
!141 = !{!"0x600003cdb3c0.w128.b0", !142, i64 0}
!142 = !{!"0x600003cdb3c0.w256.b0", !143, i64 0}
!143 = !{!"0x600003cdb3c0.w512.b0", !144, i64 0}
!144 = !{!"0x600003cdb3c0.w1024.b0", !145, i64 0}
!145 = !{!"0x600003cdb3c0", !28, i64 0}
!146 = !{!147, !147, i64 0}
!147 = !{!"0x600003cdb3c0.w8.b8", !148, i64 0}
!148 = !{!"0x600003cdb3c0.w16.b0", !139, i64 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"0x600003cdacd0.w8.b0", !151, i64 0}
!151 = !{!"0x600003cdacd0.w16.b0", !152, i64 0}
!152 = !{!"0x600003cdacd0.w32.b0", !153, i64 0}
!153 = !{!"0x600003cdacd0.w64.b0", !154, i64 0}
!154 = !{!"0x600003cdacd0.w128.b0", !155, i64 0}
!155 = !{!"0x600003cdacd0.w256.b0", !156, i64 0}
!156 = !{!"0x600003cdacd0.w512.b0", !157, i64 0}
!157 = !{!"0x600003cdacd0.w1024.b0", !158, i64 0}
!158 = !{!"0x600003cdacd0", !28, i64 0}
!159 = !{!160, !160, i64 0}
!160 = !{!"0x600003d2f7e0.w8.b0", !161, i64 0}
!161 = !{!"0x600003d2f7e0.w16.b0", !162, i64 0}
!162 = !{!"0x600003d2f7e0.w32.b0", !163, i64 0}
!163 = !{!"0x600003d2f7e0.w64.b0", !164, i64 0}
!164 = !{!"0x600003d2f7e0.w128.b0", !165, i64 0}
!165 = !{!"0x600003d2f7e0.w256.b0", !166, i64 0}
!166 = !{!"0x600003d2f7e0.w512.b0", !167, i64 0}
!167 = !{!"0x600003d2f7e0.w1024.b0", !168, i64 0}
!168 = !{!"0x600003d2f7e0", !28, i64 0}
!169 = !{!170, !170, i64 0}
!170 = !{!"0x600003d2f7e0.w8.b8", !161, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x600003d46d30.w8.b8", !173, i64 0}
!173 = !{!"0x600003d46d30.w16.b0", !174, i64 0}
!174 = !{!"0x600003d46d30.w32.b0", !175, i64 0}
!175 = !{!"0x600003d46d30.w64.b0", !176, i64 0}
!176 = !{!"0x600003d46d30.w128.b0", !177, i64 0}
!177 = !{!"0x600003d46d30.w256.b0", !178, i64 0}
!178 = !{!"0x600003d46d30.w512.b0", !179, i64 0}
!179 = !{!"0x600003d46d30.w1024.b0", !180, i64 0}
!180 = !{!"0x600003d46d30", !28, i64 0}
!181 = !{!182, !182, i64 0}
!182 = !{!"0x600003d47e40.w8.b0", !183, i64 0}
!183 = !{!"0x600003d47e40.w16.b0", !184, i64 0}
!184 = !{!"0x600003d47e40.w32.b0", !185, i64 0}
!185 = !{!"0x600003d47e40.w64.b0", !186, i64 0}
!186 = !{!"0x600003d47e40.w128.b0", !187, i64 0}
!187 = !{!"0x600003d47e40.w256.b0", !188, i64 0}
!188 = !{!"0x600003d47e40.w512.b0", !189, i64 0}
!189 = !{!"0x600003d47e40.w1024.b0", !190, i64 0}
!190 = !{!"0x600003d47e40", !28, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"0x600003d47e40.w8.b8", !183, i64 0}
!193 = !{!194, !194, i64 0}
!194 = !{!"0x600003d6fb40.w8.b8", !195, i64 0}
!195 = !{!"0x600003d6fb40.w16.b0", !196, i64 0}
!196 = !{!"0x600003d6fb40.w32.b0", !197, i64 0}
!197 = !{!"0x600003d6fb40.w64.b0", !198, i64 0}
!198 = !{!"0x600003d6fb40.w128.b0", !199, i64 0}
!199 = !{!"0x600003d6fb40.w256.b0", !200, i64 0}
!200 = !{!"0x600003d6fb40.w512.b0", !201, i64 0}
!201 = !{!"0x600003d6fb40.w1024.b0", !202, i64 0}
!202 = !{!"0x600003d6fb40", !28, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"0x600003d6ca20.w8.b0", !205, i64 0}
!205 = !{!"0x600003d6ca20.w16.b0", !206, i64 0}
!206 = !{!"0x600003d6ca20.w32.b0", !207, i64 0}
!207 = !{!"0x600003d6ca20.w64.b0", !208, i64 0}
!208 = !{!"0x600003d6ca20.w128.b0", !209, i64 0}
!209 = !{!"0x600003d6ca20.w256.b0", !210, i64 0}
!210 = !{!"0x600003d6ca20.w512.b0", !211, i64 0}
!211 = !{!"0x600003d6ca20.w1024.b0", !212, i64 0}
!212 = !{!"0x600003d6ca20", !28, i64 0}
!213 = !{!214, !214, i64 0}
!214 = !{!"0x600003d6ca20.w8.b8", !205, i64 0}
!215 = !{!216, !216, i64 0}
!216 = !{!"0x600003d6f1e0.w8.b8", !217, i64 0}
!217 = !{!"0x600003d6f1e0.w16.b0", !218, i64 0}
!218 = !{!"0x600003d6f1e0.w32.b0", !219, i64 0}
!219 = !{!"0x600003d6f1e0.w64.b0", !220, i64 0}
!220 = !{!"0x600003d6f1e0.w128.b0", !221, i64 0}
!221 = !{!"0x600003d6f1e0.w256.b0", !222, i64 0}
!222 = !{!"0x600003d6f1e0.w512.b0", !223, i64 0}
!223 = !{!"0x600003d6f1e0.w1024.b0", !224, i64 0}
!224 = !{!"0x600003d6f1e0", !28, i64 0}
!225 = distinct !DISubprogram(name: "qgemm_lut_t1_int8_m160_k3200_n1_b2_compute_", scope: !1, file: !1, type: !226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !228)
!226 = !DISubroutineType(cc: DW_CC_nocall, types: !227)
!227 = !{!14, !77, !72, !82, !82, !82, !82}
!228 = !{!229, !230, !231, !232, !233, !234}
!229 = !DILocalVariable(name: "LUT", arg: 1, scope: !225, file: !1, type: !77)
!230 = !DILocalVariable(name: "A", arg: 2, scope: !225, file: !1, type: !72)
!231 = !DILocalVariable(name: "Scales", arg: 3, scope: !225, file: !1, type: !82)
!232 = !DILocalVariable(name: "LUT_Scales", arg: 4, scope: !225, file: !1, type: !82)
!233 = !DILocalVariable(name: "LUT_Biases", arg: 5, scope: !225, file: !1, type: !82)
!234 = !DILocalVariable(name: "C", arg: 6, scope: !225, file: !1, type: !82)
!235 = !DILocation(line: 0, scope: !225)
!236 = !DILocalVariable(name: "CBits", scope: !225, file: !1, type: !82)
!237 = !{!238, !238, i64 0}
!238 = !{!"__fp16", !239, i64 0}
!239 = !{!"omnipotent char", !240, i64 0}
!240 = !{!"Simple C++ TBAA"}
!241 = !DILocalVariable(name: "k.outer", scope: !225, file: !1, type: !14)
!242 = distinct !{!242, !243}
!243 = !{!"llvm.loop.mustprogress"}
!244 = !DILocalVariable(name: "m.c.outer", scope: !225, file: !1, type: !14)
!245 = !DILocalVariable(name: "cse_var_2", scope: !225, file: !1, type: !14)
!246 = !DILocalVariable(name: "cse_var_1", scope: !225, file: !1, type: !14)
!247 = !DILocalVariable(name: "C.global", scope: !225, file: !1, type: !82)
!248 = !DILocalVariable(name: "m.inner.outer", scope: !225, file: !1, type: !14)
!249 = !DILocalVariable(name: "cse_var_18", scope: !225, file: !1, type: !14)
!250 = !DILocalVariable(name: "cse_var_17", scope: !225, file: !1, type: !14)
!251 = !DILocalVariable(name: "cse_var_16", scope: !225, file: !1, type: !14)
!252 = !DILocalVariable(name: "cse_var_15", scope: !225, file: !1, type: !14)
!253 = !DILocalVariable(name: "cse_var_14", scope: !225, file: !1, type: !14)
!254 = !DILocalVariable(name: "cse_var_13", scope: !225, file: !1, type: !14)
!255 = !DILocalVariable(name: "cse_var_12", scope: !225, file: !1, type: !14)
!256 = !DILocalVariable(name: "cse_var_11", scope: !225, file: !1, type: !14)
!257 = !DILocalVariable(name: "cse_var_10", scope: !225, file: !1, type: !14)
!258 = !DILocalVariable(name: "cse_var_9", scope: !225, file: !1, type: !14)
!259 = !DILocalVariable(name: "cse_var_8", scope: !225, file: !1, type: !14)
!260 = !DILocalVariable(name: "cse_var_7", scope: !225, file: !1, type: !14)
!261 = !DILocalVariable(name: "cse_var_6", scope: !225, file: !1, type: !14)
!262 = !DILocalVariable(name: "cse_var_5", scope: !225, file: !1, type: !14)
!263 = !DILocalVariable(name: "cse_var_4", scope: !225, file: !1, type: !14)
!264 = !DILocalVariable(name: "cse_var_3", scope: !225, file: !1, type: !14)
!265 = !{!266, !266, i64 0}
!266 = !{!"0x600003d2f0f0", !28, i64 0}
!267 = !DILocalVariable(name: "cse_var_19", scope: !225, file: !1, type: !14)
!268 = !DILocalVariable(name: "cse_var_20", scope: !225, file: !1, type: !14)
!269 = !DILocalVariable(name: "cse_var_21", scope: !225, file: !1, type: !14)
!270 = !DILocalVariable(name: "cse_var_22", scope: !225, file: !1, type: !14)
!271 = !DILocalVariable(name: "cse_var_23", scope: !225, file: !1, type: !14)
!272 = !DILocalVariable(name: "cse_var_24", scope: !225, file: !1, type: !14)
!273 = !DILocalVariable(name: "cse_var_25", scope: !225, file: !1, type: !14)
!274 = !DILocalVariable(name: "cse_var_26", scope: !225, file: !1, type: !14)
!275 = !DILocalVariable(name: "cse_var_27", scope: !225, file: !1, type: !14)
!276 = !DILocalVariable(name: "cse_var_28", scope: !225, file: !1, type: !14)
!277 = !DILocalVariable(name: "cse_var_29", scope: !225, file: !1, type: !14)
!278 = !DILocalVariable(name: "cse_var_30", scope: !225, file: !1, type: !14)
!279 = !DILocalVariable(name: "cse_var_31", scope: !225, file: !1, type: !14)
!280 = !DILocalVariable(name: "cse_var_32", scope: !225, file: !1, type: !14)
!281 = !DILocalVariable(name: "cse_var_33", scope: !225, file: !1, type: !14)
!282 = !DILocalVariable(name: "cse_var_34", scope: !225, file: !1, type: !14)
!283 = !{!284, !284, i64 0}
!284 = !{!"0x600003ca3ed0", !28, i64 0}
