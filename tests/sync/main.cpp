#define NS_PRIVATE_IMPLEMENTATION
#define CA_PRIVATE_IMPLEMENTATION
#define MTL_PRIVATE_IMPLEMENTATION
#include <Foundation/Foundation.hpp>
#include <Metal/Metal.hpp>
#include <QuartzCore/QuartzCore.hpp>
#include <chrono>
#include <iostream>

static const uint32_t DATA_SIZE = 1 << 24; // 16MB 数据

struct GPUTimer {
    MTL::SharedEvent* event;
    uint64_t start, end;
    std::atomic<uint64_t> completed; // 使用C++原子类型
    
    GPUTimer(MTL::Device* device) : 
        event(device->newSharedEvent()), start(0), end(0) {}
    
    void record(MTL::CommandBuffer* cb, bool isStart) {
        if (isStart) {
            cb->encodeSignalEvent(event, ++start);
        } else {
            cb->encodeSignalEvent(event, ++end);
        }
    }
    
    double getDelta() {
        dispatch_semaphore_t sema = dispatch_semaphore_create(0);
        completed.store(0, std::memory_order_relaxed);
        
        auto notificationBlock = ^(MTL::SharedEvent* event, uint64_t value) {
            // 使用C++原子操作替代废弃的OSAtomic
            if (completed.fetch_add(1, std::memory_order_relaxed) + 1 == 2) {
                dispatch_semaphore_signal(sema);
            }
        };
        
        event->notifyListener(nullptr, start, notificationBlock);
        event->notifyListener(nullptr, end, notificationBlock);
        
        dispatch_semaphore_wait(sema, DISPATCH_TIME_FOREVER);
        dispatch_release(sema);
        
        return (end - start) * 1e-6;
    }
};

MTL::ComputePipelineState* createComputePipeline(MTL::Device* device) {
    const char* kernelSource = R"(
        #include <metal_stdlib>
        using namespace metal;
        
        kernel void kernelMain(
            device const float* input [[buffer(0)]],
            device float* output [[buffer(1)]],
            uint tid [[thread_position_in_grid]]
        ) {
            output[tid] = input[tid] + 1.0f;
        }
    )";
    
    NS::Error* error = nullptr;
    MTL::Library* library = device->newLibrary(NS::String::string(kernelSource, NS::UTF8StringEncoding), 
                                              nullptr, &error);
    
    if (!library) {
        std::cerr << "Shader error: " << error->localizedDescription()->utf8String() << std::endl;
        exit(EXIT_FAILURE);
    }
    
    MTL::Function* function = library->newFunction(NS::String::string("kernelMain", NS::UTF8StringEncoding));
    MTL::ComputePipelineState* pso = device->newComputePipelineState(function, &error);
    
    library->release();
    function->release();
    return pso;
}

void testSingleEncoder(MTL::Device* device) {
    MTL::CommandQueue* queue = device->newCommandQueue();
    MTL::ComputePipelineState* kernel = createComputePipeline(device);
    
    MTL::Buffer* buffers[2] = {
        device->newBuffer(DATA_SIZE, MTL::ResourceStorageModeShared),
        device->newBuffer(DATA_SIZE, MTL::ResourceStorageModeShared)
    };
    
    GPUTimer timer(device);
    double total = 0;
    
    for (int i = 0; i < 10; ++i) {
        MTL::CommandBuffer* cb = queue->commandBuffer();
        timer.record(cb, true);
        
        MTL::ComputeCommandEncoder* enc = cb->computeCommandEncoder();
        for (int j = 0; j < 10; ++j) {
            enc->setComputePipelineState(kernel);
            enc->setBuffer(buffers[j%2], 0, 0);
            enc->setBuffer(buffers[(j+1)%2], 0, 1);
            enc->dispatchThreads(MTL::Size(DATA_SIZE/sizeof(float),1,1), 
                                MTL::Size(256,1,1));
            enc->memoryBarrier(MTL::BarrierScopeBuffers);
        }
        enc->endEncoding();
        timer.record(cb, false);
        
        cb->commit();
        cb->waitUntilCompleted();
        
        total += timer.getDelta();
    }
    
    std::cout << "SingleEncoder avg: " << total/10 << "ms\n";
    
    buffers[0]->release();
    buffers[1]->release();
    kernel->release();
    queue->release();
}

void testMultiEncoders(MTL::Device* device) {
    MTL::CommandQueue* queue = device->newCommandQueue();
    MTL::SharedEvent* syncEvent = device->newSharedEvent();
    MTL::ComputePipelineState* kernel = createComputePipeline(device);
    
    MTL::Buffer* buffers[2] = {
        device->newBuffer(DATA_SIZE, MTL::ResourceStorageModeShared),
        device->newBuffer(DATA_SIZE, MTL::ResourceStorageModeShared)
    };
    
    GPUTimer timer(device);
    double total = 0;
    
    for (int i = 0; i < 10; ++i) {
        MTL::CommandBuffer* cbs[10];
        uint64_t signalValue = 0;
        
        timer.record(cbs[0] = queue->commandBuffer(), true);
        
        for (int j = 0; j < 10; ++j) {
            cbs[j] = queue->commandBuffer();
            if (j > 0) cbs[j]->encodeWait(syncEvent, signalValue);
            
            MTL::ComputeCommandEncoder* enc = cbs[j]->computeCommandEncoder();
            enc->setComputePipelineState(kernel);
            enc->setBuffer(buffers[j%2], 0, 0);
            enc->setBuffer(buffers[(j+1)%2], 0, 1);
            enc->dispatchThreads(MTL::Size(DATA_SIZE/sizeof(float),1,1), 
                               MTL::Size(256,1,1));
            enc->endEncoding();
            
            signalValue++;
            cbs[j]->encodeSignalEvent(syncEvent, signalValue);
            cbs[j]->commit();
        }
        
        timer.record(cbs[9], false);
        cbs[9]->waitUntilCompleted();
        total += timer.getDelta();
    }
    
    std::cout << "MultiEncoders avg: " << total/10 << "ms\n";
    
    buffers[0]->release();
    buffers[1]->release();
    kernel->release();
    syncEvent->release();
    queue->release();
}

int main() {
    MTL::Device* device = MTL::CreateSystemDefaultDevice();
    std::cout << "Using device: " << device->name()->utf8String() << std::endl;
    
    testSingleEncoder(device);
    testMultiEncoders(device);
    
    device->release();
    return 0;
}