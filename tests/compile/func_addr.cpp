#include <iostream>
#include <functional>
#include <cstdint>

// 获取函数地址
template <typename T, typename... U>
std::uintptr_t get_function_address(const std::function<T(U...)>& fun) {
    using FunType = T (*)(U...);
    const FunType* fun_ptr = fun.template target<FunType>();
    if (fun_ptr == nullptr) {
        return 0;
    }
    return reinterpret_cast<std::uintptr_t>(*fun_ptr);
}

// 示例函数
int add(int a, int b) {
    return a + b;
}

int main() {
    // 将函数包装到 std::function 中
    std::function<int(int, int)> fun = add;

    // 获取函数地址
    std::uintptr_t address = get_function_address(fun);
    std::cout << "Function address: " << std::hex << address << std::endl;

    // 将地址转换回函数指针
    using FunType = int(*)(int, int);
    FunType func_ptr = reinterpret_cast<FunType>(address);

    // 调用函数
    int result = func_ptr(3, 4);
    std::cout << "Result of function call: " << result << std::endl;

    return 0;
}