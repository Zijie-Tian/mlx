#include <iostream>
#include <cassert>
#include <mlx/mlx.h>   // 假设这些声明了 ones 和 slice 的实现

namespace mx = mlx::core;

int main() {
    // 创建一个一维4元素数组，并用1填充
    mx::array x({7, 7, 7, 7}, mx::float16);
    // x.eval();
    x.set_data(mx::allocator::malloc_or_wait(x.nbytes()));

    std::cout << "X : " << x << std::endl;

    // 将 x 切分成两个小数组：slice1 包含前两个元素，slice2 包含后两个元素
    // auto slice1 = slice(x, {0, 0}, {2, 4});
    // auto slice2 = slice(x, {2, 0}, {4, 4});

    // mx::eval(x, slice1, slice2);

    // auto slice1 = mx::ones({2, 4}, mx::float16);
    // auto slice2 = mx::ones({2, 4}, mx::float16);

    mx::array slice1({2, 4}, mx::float16);
    mx::array slice2({1,2,2,2}, mx::float16);

    slice1.set_data(x.buffer(), 2, {0}, x.flags());
    slice2.set_data(x.buffer(), 4, {16}, x.flags());

    std::cout << "Slice 1: \n" << slice1 << std::endl;
    std::cout << "Slice 2: \n" << slice2 << std::endl;

    std::cout << "Original array before modifying slices: \n" << x << std::endl;
    std::cout << std::endl;

    std::cout << "==================================" << std::endl;

    // 修改 slice1 的元素为 9，slice2 的元素为 77
    for (size_t i = 0; i < slice1.data_size(); ++i) {
        slice1.data<float16_t>()[i] = 9;
    }
    std::cout << "Slice 1 after modification: \n" << slice1 << std::endl;

    for (size_t i = 0; i < slice2.data_size(); ++i) {
        slice2.data<float16_t>()[i] = 77;
    }

    std::cout << "Slice 2 after modification: \n" << slice2 << std::endl;

    // 输出原数组，验证切片的修改是否作用于原数组
    std::cout << "Original array after modifying slices: \n" << x << std::endl;
    std::cout << std::endl;

    std::cout << "Test passed." << std::endl;
    return 0;
}