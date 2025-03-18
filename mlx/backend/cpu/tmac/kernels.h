#include "stdint.h"
#ifdef __cplusplus
extern "C" 
#endif
 int32_t qgemm_lut_t12_int8_m4096_k4096_n256_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t qgemm_lut_t12_int8_m4096_k4096_n512_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t qgemm_lut_t12_int8_m8192_k4096_n256_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t qgemm_lut_t12_int8_m8192_k4096_n512_b2(void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t preprocessor_t12_int8_m4096_k4096_n512_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t preprocessor_t12_int8_m4096_k4096_n256_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t preprocessor_t12_int8_m8192_k4096_n512_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
#ifdef __cplusplus
extern "C" 
#endif
 int32_t preprocessor_t12_int8_m8192_k4096_n256_b2(void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT);
inline int qgemm_lut_int8(int m, int k, int n, int b, void* A, void* LUT, void* Scales, void* LUT_Scales, void* LUT_Biases, void* C) {

    if (m == 8192 && k == 4096 && n == 256 && b == 2) return qgemm_lut_t12_int8_m8192_k4096_n256_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 4096 && k == 4096 && n == 256 && b == 2) return qgemm_lut_t12_int8_m4096_k4096_n256_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 8192 && k == 4096 && n == 512 && b == 2) return qgemm_lut_t12_int8_m8192_k4096_n512_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    if (m == 4096 && k == 4096 && n == 512 && b == 2) return qgemm_lut_t12_int8_m4096_k4096_n512_b2(A, LUT, Scales, LUT_Scales, LUT_Biases, C);

    return -1;
}
inline int preprocessor_int8(int m, int k, int n, int b, void* B, void* LUT_Scales, void* LUT_Biases, void* QLUT) {

    if (m == 8192 && k == 4096 && n == 256 && b == 2) return preprocessor_t12_int8_m8192_k4096_n256_b2(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 4096 && k == 4096 && n == 256 && b == 2) return preprocessor_t12_int8_m4096_k4096_n256_b2(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 8192 && k == 4096 && n == 512 && b == 2) return preprocessor_t12_int8_m8192_k4096_n512_b2(B, LUT_Scales, LUT_Biases, QLUT);

    if (m == 4096 && k == 4096 && n == 512 && b == 2) return preprocessor_t12_int8_m4096_k4096_n512_b2(B, LUT_Scales, LUT_Biases, QLUT);

    return -1;
}
