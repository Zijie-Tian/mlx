#!/bin/bash -eu
# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.

# 自动切换到脚本所在目录
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR" || { echo "Error: 无法切换到脚本目录 $SCRIPT_DIR"; exit 1; }

# 加载外部配置（如果存在）
CONFIG_FILE="config.sh"
[ -f "$CONFIG_FILE" ] && source "$CONFIG_FILE"

# 默认参数配置
export TVM_LOG_LEVEL=${TVM_LOG_LEVEL:-ERROR}
export DEVICE_TYPE=${DEVICE_TYPE:-auto}
export ENABLE_TB=${ENABLE_TB:-false}
export AGS=${AGS:-64}
export GS=${GS:-128}
export NUM_THREADS=${NUM_THREADS:-12}
export TUNE_MODE=${TUNE_MODE:-true}
export VERBOSE=${VERBOSE:-false}
export MODES=${MODES:-"benchmark"}

# 解析命令行参数
while getopts "d:tva:g:n:m:h" opt; do
  case $opt in
    d) DEVICE_TYPE=$OPTARG ;;
    t) ENABLE_TB=true ;;
    a) AGS=$OPTARG ;;
    g) GS=$OPTARG ;;
    n) NUM_THREADS=$OPTARG ;;
    m) MODES=$OPTARG ;;
    v) VERBOSE=true ;;
    h) 
      echo "Usage: $0 [-d device] [-t] [-a ags] [-g gs] [-n threads] [-m mode1,mode2] [-v]"
      exit 0
      ;;
    \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
  esac
done

detect_architecture() {
  case $(uname -m) in
    aarch64) echo "jetson" ;;
    arm64)   echo "m2" ;;
    *)       echo "unknown" ;;
  esac
}

[ "$DEVICE_TYPE" = "auto" ] && DEVICE_TYPE=$(detect_architecture)

case $DEVICE_TYPE in
  jetson|m2) ;;
  *) echo "Unsupported device: $DEVICE_TYPE"; exit 1 ;;
esac

build_for_mode() {
  local mode=$1
  local tmac_dir="tmac"
  
  # 构建备份目录名称
  local backup_suffix=""
  $ENABLE_TB && backup_suffix="_tb"
  local backup_dir="tuned/${mode}${backup_suffix}"

  # 清理旧目录
  rm -rf "$tmac_dir"
  mkdir -p "$tmac_dir"

  # 尝试恢复备份
  if [ -d "$backup_dir" ]; then
    echo "▹ 恢复备份: $backup_dir ➞ $tmac_dir"
    cp -r "$backup_dir"/* "$tmac_dir/"
    return  # 如果找到备份则跳过编译
  fi

  # 生成新算子
  local args=(-da -nt "$NUM_THREADS" -d "$DEVICE_TYPE")
  $ENABLE_TB && args+=(-tb)
  $TUNE_MODE && args+=(--tune)
  $VERBOSE && args+=(--verbose)
  args+=(-ags "$AGS" -gs "$GS" -m "$mode")

  echo "=== 编译模式: $mode ==="
  python compile.py -o "$tmac_dir" "${args[@]}"

  # 保存备份
  echo "▹ 保存备份: $tmac_dir ➞ $backup_dir"
  mkdir -p "$backup_dir"
  cp -r "$tmac_dir"/* "$backup_dir/"
}

# 创建备份根目录
mkdir -p tuned

IFS=',' read -ra MODE_LIST <<< "$MODES"
for mode in "${MODE_LIST[@]}"; do
  build_for_mode "$mode"
done