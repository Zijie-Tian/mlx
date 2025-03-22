// Copyright © 2024 Apple Inc.

#include <optional>

#include "mlx/primitives.h"
#include "mlx/backend/metal/hermes_op.h"

namespace mlx::core::fast {

// Custom primitive accepts a fallback function which it uses for
// transformations. Transformations are virtual so that derived classes may
// override the default behavior.
class Custom : public Primitive {
 public:
  explicit Custom(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback)
      : Primitive(stream), fallback_(fallback) {}

  virtual std::pair<std::vector<array>, std::vector<int>> vmap(
      const std::vector<array>& inputs,
      const std::vector<int>& axes) override;

  virtual std::vector<array> jvp(
      const std::vector<array>& primals,
      const std::vector<array>& tangents,
      const std::vector<int>& argnums) override;

  virtual std::vector<array> vjp(
      const std::vector<array>& primals,
      const std::vector<array>& cotangents,
      const std::vector<int>& argnums,
      const std::vector<array>& outputs) override;

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
};

class RMSNorm : public Custom {
 public:
  RMSNorm(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      float eps)
      : Custom(stream, fallback), eps_(eps) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("NYI");
  }
  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  std::vector<array> vjp(
      const std::vector<array>& primals,
      const std::vector<array>& cotangents,
      const std::vector<int>& argnums,
      const std::vector<array>& outputs) override;

  DEFINE_PRINT(RMSNorm)
  bool is_equivalent(const Primitive& other) const override;
  DEFINE_INPUT_OUTPUT_SHAPE()

  auto state() const {
    return std::make_pair(nullptr, eps_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  float eps_;
};

class RMSNormVJP : public Custom {
 public:
  RMSNormVJP(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      float eps)
      : Custom(stream, fallback), eps_(eps) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("NYI");
  }
  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  DEFINE_PRINT(RMSNormVJP)
  bool is_equivalent(const Primitive& other) const override;
  auto state() const {
    return std::make_pair(nullptr, eps_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  float eps_;
};

class LayerNorm : public Custom {
 public:
  LayerNorm(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      float eps)
      : Custom(stream, fallback), eps_(eps) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("NYI");
  }
  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  std::vector<array> vjp(
      const std::vector<array>& primals,
      const std::vector<array>& cotangents,
      const std::vector<int>& argnums,
      const std::vector<array>& outputs) override;

  DEFINE_PRINT(LayerNorm)
  bool is_equivalent(const Primitive& other) const override;
  DEFINE_INPUT_OUTPUT_SHAPE()
  auto state() const {
    return std::make_pair(nullptr, eps_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  float eps_;
};

class LayerNormVJP : public Custom {
 public:
  LayerNormVJP(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      float eps)
      : Custom(stream, fallback), eps_(eps) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("NYI");
  }
  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  DEFINE_PRINT(LayerNormVJP)
  bool is_equivalent(const Primitive& other) const override;
  auto state() const {
    return std::make_pair(nullptr, eps_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  float eps_;
};

class RoPE : public Custom {
 public:
  RoPE(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      int dims,
      bool traditional,
      float base,
      float scale,
      bool forward)
      : Custom(stream, fallback),
        dims_(dims),
        traditional_(traditional),
        base_(base),
        scale_(scale),
        forward_(forward) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("NYI");
  }
  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  std::vector<array> vjp(
      const std::vector<array>& primals,
      const std::vector<array>& cotangents,
      const std::vector<int>& argnums,
      const std::vector<array>& outputs) override;

  DEFINE_PRINT(RoPE)
  bool is_equivalent(const Primitive& other) const override;
  DEFINE_INPUT_OUTPUT_SHAPE()
  auto state() const {
    return std::make_tuple(
        nullptr, dims_, traditional_, base_, scale_, forward_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  int dims_;
  bool traditional_;
  float base_;
  float scale_;
  bool forward_;
};

class ScaledDotProductAttention : public Custom {
 public:
  explicit ScaledDotProductAttention(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      const float scale)
      : Custom(stream, fallback), scale_(scale) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("NYI");
  }

  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    eval_gpu(inputs, outputs[0]);
  }

  void eval_gpu(const std::vector<array>& inputs, array& out);
  bool is_equivalent(const Primitive& other) const override;

  DEFINE_PRINT(ScaledDotProductAttention);
  DEFINE_INPUT_OUTPUT_SHAPE()
  auto state() const {
    return std::make_pair(nullptr, scale_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  float scale_;
};

class AffineQuantize : public Custom {
 public:
  explicit AffineQuantize(
      Stream stream,
      std::function<std::vector<array>(std::vector<array>)> fallback,
      int group_size,
      int bits,
      bool dequantize)
      : Custom(stream, fallback),
        group_size_(group_size),
        bits_(bits),
        dequantize_(dequantize) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  DEFINE_PRINT(AffineQuantize);

  bool is_equivalent(const Primitive& other) const override;
  std::vector<Shape> output_shapes(const std::vector<array>& inputs) override;
  auto state() const {
    return std::make_tuple(nullptr, group_size_, bits_, dequantize_);
  }

 private:
  std::function<std::vector<array>(std::vector<array>)> fallback_;
  int group_size_;
  int bits_;
  bool dequantize_;
};

struct CustomKernelShapeInfo {
  bool shape = false;
  bool strides = false;
  bool ndim = false;
};

class CustomKernel : public Primitive {
 public:
  CustomKernel(
      Stream stream,
      std::string name,
      std::string source,
      std::tuple<int, int, int> grid,
      std::tuple<int, int, int> threadgroup,
      std::vector<CustomKernelShapeInfo> shape_infos,
      bool ensure_row_contiguous,
      std::optional<float> init_value)
      : Primitive(stream),
        source_(std::move(source)),
        name_(std::move(name)),
        grid_(grid),
        threadgroup_(threadgroup),
        shape_infos_(std::move(shape_infos)),
        ensure_row_contiguous_(ensure_row_contiguous),
        init_value_(init_value) {}

  void eval_cpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override {
    throw std::runtime_error("Custom Metal kernels only run on GPU.");
  }

  void eval_gpu(const std::vector<array>& inputs, std::vector<array>& outputs)
      override;

  DEFINE_PRINT(CustomKernel);

 private:
  std::string source_;
  std::string name_;
  std::tuple<int, int, int> grid_;
  std::tuple<int, int, int> threadgroup_;
  std::vector<CustomKernelShapeInfo> shape_infos_;
  bool ensure_row_contiguous_;
  std::optional<float> init_value_;
};

class Hermes : public UnaryPrimitive {
  public:
   explicit Hermes(
       Stream stream,
       const std::string& kcfg_file,
       const std::string& library_file,
       int M_high, int M_low, int K, int N,
       bool transpose_high,
       int group_size_high,
       int nbits_high,
       int nbits_low
     );
 
   ~Hermes();
 
   void eval_cpu(const std::vector<array>& inputs, array& out) override {}
   void eval_gpu(const std::vector<array>& inputs, array& out) override;
 
   DEFINE_GRADS()
   DEFINE_VMAP()
   DEFINE_PRINT(Hermes)
   DEFINE_DEFAULT_IS_EQUIVALENT()
   std::vector<Shape> output_shapes(const std::vector<array>& inputs) override;
   auto state() const {
     return std::make_tuple(group_size_, bm_, nbits_low);  //! Just impl.
   }
 
  public:
   static ThreadPool cpu_thread_pool;
   static ThreadPool gpu_thread_pool;
   static INIReader* _reader;
   static TVMRuntime* _tvm_internals;
 
   void set_num_threads(int n_threads);
   void set_workspace(int maxM, int maxK, int maxN);
   HermesConfig get_kcfg(int M, int K, int N, int bits);
   std::string get_template_name(_fkey key);
 
   // workspace ptrs
   void* _qlut;
   void* _lut_scales;
   void* _lut_biases;
 
   bool _allocated;
   std::mutex _m;
 
   int M_high;
   bool transpose_high;
   int group_size_high;
   int nbits_high;
   
   int M_low;
   int K_;
   int N_;
   int N_low_kernel;  //! Only available for Hermes low-bit parts.
   int bm_;
   int g_;
   int kfactor_;
   int group_size_;
   int act_group_size_;
   int nbits_low;
   
   int _n_threads;
 };

} // namespace mlx::core::fast
