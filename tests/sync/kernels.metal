// Shaders/Metal/Kernels.metal
kernel void compute_kernel1(
    device float *in [[buffer(0)]],
    uint tid [[thread_position_in_grid]]
){
    in[tid] = tid * 0.01f;
}

kernel void compute_kernel2(
    device float *in [[buffer(0)]],
    device float *out [[buffer(1)]],
    uint tid [[thread_position_in_grid]]
){
    out[tid] = simd::sin(in[tid]) + simd::cos(in[tid]);
}
