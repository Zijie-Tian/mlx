import os
import csv
from volcenginesdkarkruntime import Ark
import json
import configparser
import subprocess
import argparse
from datetime import datetime
from typing import List, Dict, Any

# 配置常量
PROJECT_ROOT = os.getcwd()
BUILD_DIR = os.path.join(PROJECT_ROOT, "build")
LOGS_DIR = os.path.join(PROJECT_ROOT, "logs")
CONFIG_DIR = os.path.join(PROJECT_ROOT, "tools")  # Just save here.
KERNEL_CONFIG_PATH = os.path.join(CONFIG_DIR, "preset_kernels.ini")

import sys
sys.path.append(os.path.join(PROJECT_ROOT, "mlx", "backend", "cpu"))
from t_mac.model_utils import get_preset_models, get_preset_kernel_shapes, get_quantization_config

APPS = ["bench_tmac", "bench_decode", "bench_prefill"]
MODES = [
    # ("benchmark", ["-a", "64", "-g", "128", "-n", "8"]),
    # ("benchmark", ["-a", "64", "-g", "128", "-n", "8", "-t"]),
    # ("llama-2-7b-2bit", ["-a", "64", "-g", "128", "-n", "8"]),
    ("llama-2-7b-2bit", ["-a", "64", "-g", "128", "-n", "8" "-t"]),
    # ("llama-2-13b-2bit", ["-a", "64", "-g", "128", "-n", "8"]),
    # ("llama-2-13b-2bit", ["-a", "64", "-g", "128", "-n", "8", "-t"]),
    # ("llama-3-8b-2bit", ["-a", "64", "-g", "128", "-n", "8"]),
]

VOLCANO_CONFIG = {
    "model_id": "ep-20250217172556-85jxm",
    "system_prompt": """你是一个高性能计算专家，请从以下日志中提取出M、N、K参数和执行时间，
    输出格式示例（必须严格使用纯JSON格式，不要任何格式标记）：
    [
        {"M":4096,"N":1,"K":4096,"nbits":2,"time_ms":12.3},
        ...
    ]"""
}

# 初始化客户端
client = Ark(api_key=os.environ.get("ARK_API_KEY"))

def call_volcano_llm(content: str) -> List[Dict]:
    """调用火山引擎大模型处理日志（增强解析）"""
    try:
        completion = client.chat.completions.create(
            model=VOLCANO_CONFIG["model_id"],
            messages=[
                {"role": "system", "content": VOLCANO_CONFIG["system_prompt"]},
                {"role": "user", "content": content}
            ]
        )
        
        # 处理响应格式
        response_text = completion.choices[0].message.content
        
        # 去除可能的Markdown格式
        if response_text.startswith('```json'):
            response_text = response_text[response_text.find('['):response_text.rfind(']')+1]
        
        return json.loads(response_text)
    
    except json.JSONDecodeError as e:
        # 调试输出
        print("原始响应内容:", response_text)
        raise ValueError(f"JSON解析失败: {str(e)}")
    except Exception as e:
        raise RuntimeError(f"API调用失败: {str(e)}")

def process_log_with_llm(log_path: str):
    """使用火山引擎大模型处理日志文件"""
    # 读取日志内容（限制长度）
    with open(log_path, 'r') as f:
        content = f.read(4096)  # 限制输入长度
        
    try:
        # 调用模型
        data = call_volcano_llm(content)
        
        # 生成CSV
        csv_path = os.path.splitext(log_path)[0] + ".csv"
        with open(csv_path, 'w', newline='') as f:
            writer = csv.writer(f)
            writer.writerow(["M", "N", "K", "nbits", "time_ms"])  # 添加表头
            for item in data:
                writer.writerow([
                    item["M"],
                    item["N"],
                    item["K"],
                    item.get("nbits", 2),  # 默认值
                    item["time_ms"]
                ])
        print(f"✅ 生成CSV文件: {csv_path}")
        
    except Exception as e:
        print(f"⚠️ 处理失败: {str(e)}")
        if os.path.exists(csv_path):
            os.remove(csv_path)  # 清理无效文件

def generate_kernel_config(mode: str) -> Dict[str, Any]:
    """生成符合要求的INI格式内核配置"""
    preset_models = get_preset_models()
    if mode not in preset_models:
        raise ValueError(f"Unsupported mode: {mode}")

    kernel_shapes = get_preset_kernel_shapes(mode)
    
    config = configparser.ConfigParser()
    
    # 为每个kernel创建独立section
    for idx, shape in enumerate(kernel_shapes, 1):
        section_name = f"kernel_{idx}"
        config[section_name] = {
            "M": str(shape[1]),  # 第二个元素对应M
            "K": str(shape[2]),  # 第三个元素对应K
            "N": str(shape[3])   # 第四个元素对应N
        }
    
    # 写入文件
    with open(KERNEL_CONFIG_PATH, "w") as f:
        config.write(f)
    
    print(f"✅ 内核配置文件已生成: {KERNEL_CONFIG_PATH}")
    return {
        "mode": mode,
        "shapes": kernel_shapes,
        "file_path": KERNEL_CONFIG_PATH
    }

def run_command(cmd, cwd=None, log_file=None):
    """执行命令并处理错误，支持日志重定向"""
    print(f"▶ Running: {' '.join(cmd)}")
    try:
        if log_file:
            # 确保日志目录存在
            os.makedirs(os.path.dirname(log_file), exist_ok=True)
            with open(log_file, "a") as f:  # 使用追加模式
                result = subprocess.run(
                    cmd,
                    cwd=cwd,
                    check=True,
                    stdout=f,
                    stderr=subprocess.STDOUT,  # 合并错误输出
                    text=True,
                    encoding="utf-8"
                )
        else:
            subprocess.run(cmd, cwd=cwd, check=True)
    except subprocess.CalledProcessError as e:
        print(f"❌ Command failed: {e}")
        if log_file:
            print(f"详细日志请查看: {log_file}")
        exit(1)

def build_project(mode, params):
    """构建项目"""
    # 创建模式专属日志目录
    mode_log_dir = os.path.join(LOGS_DIR, mode)
    os.makedirs(mode_log_dir, exist_ok=True)
    build_log = os.path.join(mode_log_dir, "cmake.log")
    
    # 创建构建目录
    os.makedirs(BUILD_DIR, exist_ok=True)
    
    # 配置CMake参数
    cmake_args = ["cmake", ".."]
    if "-t" in params:
        print("▷ Detected -t flag, disabling TMAC TVM build")
        cmake_args.append("-DMLX_BUILD_TMAC_TVM=OFF")
    else:
        cmake_args.append("-DMLX_BUILD_TMAC_TVM=ON")

    # 执行CMake配置
    print(f"▷ 构建日志保存至: {build_log}")
    run_command(cmake_args, cwd=BUILD_DIR, log_file=build_log)
    
    # 执行编译
    run_command(["make", "-j8"], cwd=BUILD_DIR, log_file=build_log)

def generate_operators(mode, params):
    """生成操作符代码（备份由脚本内部处理）"""
    cmd = [PROJECT_ROOT + "/mlx/backend/cpu/op_batch_gen.sh", "-m", mode] + params
    run_command(cmd)

def run_benchmarks(mode):
    """运行性能测试"""
    log_dir = os.path.join(LOGS_DIR, mode)
    os.makedirs(log_dir, exist_ok=True)

    for app in APPS:
        app_path = os.path.join(BUILD_DIR, "benchmarks", "cpp", app)
        log_file = os.path.join(log_dir, f"{app}.log")
        
        print(f"▹ Running {app}...")
        with open(log_file, "w") as f:
            subprocess.run([app_path], stdout=f, stderr=f)
        
        print(f"✅ {app} completed ➞ Log saved to: {log_file}")
        
        process_log_with_llm(log_file)

def print_summary():
    """打印结果摘要"""
    print("\nTest results:")
    for mode, _ in MODES:
        mode_dir = os.path.join(LOGS_DIR, mode)
        if os.path.exists(mode_dir):
            print(f"\n{mode}:")
            for f in os.listdir(mode_dir):
                if f.endswith(".log"):
                    print(f"  ├─ {f}")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("-G", action="store_true", help="仅生成操作符模式")
    args = parser.parse_args()

    os.makedirs(LOGS_DIR, exist_ok=True)

    for mode, params in MODES:
        print(f"\n{'='*96}")
        print(f"🚀 Processing mode: {mode}")
        print(f"🔧 Parameters: {' '.join(params)}")

        # 1. 生成操作符
        print("\n[1/3] Generating operators...")
        generate_operators(mode, params)
        generate_kernel_config(mode)  # 预生成内核配置，供后续使用
        

        if args.G:
            print("⏭️  Skipping build and benchmark")
            continue

        # 2. 构建项目
        print("\n[2/3] Building project...")
        build_project(mode, params)

        # 3. 运行测试
        print("\n[3/3] Running benchmarks...")
        run_benchmarks(mode)

    print(f"\n{'='*40}")
    if args.G:
        print("🎉 操作符生成完成!")
    else:
        print("🎉 所有测试已完成!")
        print_summary()

if __name__ == "__main__":    
    main()
    
    