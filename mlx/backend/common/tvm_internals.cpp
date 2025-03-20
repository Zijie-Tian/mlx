#include <tvm/runtime/module.h>
#include <tvm/runtime/packed_func.h>
#include <tvm/runtime/registry.h>
#include <dlpack/dlpack.h>

#include "mlx/backend/common/tvm_internals.h"

namespace mlx::core {

#if defined(USE_TVM_THREADPOOL) || defined(USE_TVM_LIB)
struct TVMInternals {
    tvm::runtime::Module _mod_lib;
    std::map<_fkey, tvm::runtime::PackedFunc> _fcache;
    const tvm::runtime::PackedFunc* _config_threadpool;
    tvm::runtime::PackedFunc pf;
    tvm::runtime::PackedFunc qf;
};
#endif



}