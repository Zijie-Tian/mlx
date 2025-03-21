#!/bin/bash
# Batch compilation controller (Compatible with older Bash versions)

# Get absolute path to project root
PROJECT_ROOT="$(pwd)"
BUILD_DIR="$PROJECT_ROOT/build"
LOGS_DIR="$PROJECT_ROOT/logs"
BACKUP_DIR="$PROJECT_ROOT/tuned"

# Application configuration
APPS=("bench_tmac" "bench_decode" "bench_prefill")  # List of applications to test

# Mode configurations (Normal array + parameter list)
MODES=(
  "benchmark:-a 64 -g 128 -n 8"
  "llama-2-7b-2bit:-a 64 -g 128 -n 8"
  "llama-2-13b-2bit:-a 64 -g 128 -n 8"
  "llama-3-8b-2bit:-a 64 -g 128 -n 8"
)

# 解析命令行参数
GEN_ONLY=false
while getopts "d:tva:g:n:m:hG" opt; do
  case $opt in
    G) GEN_ONLY=true ;;
    h)
      echo "Usage: $0 [-g]"
      echo "Options:"
      echo "  -g     Generator-only mode (skip build and benchmark)"
      exit 0
      ;;
    \?) echo "Invalid option -$OPTARG" >&2; exit 1 ;;
  esac
done

# Create base directories
mkdir -p "$LOGS_DIR" "$BACKUP_DIR"

# Process all modes
for entry in "${MODES[@]}"; do
  IFS=':' read -r mode params <<< "$entry"

  echo "======================================"
  echo "🚀 Starting processing mode: $mode"
  echo "🔧 Parameters: $params"

  # ---------- 1. Generate operators ----------
  echo "[1/3] Generating operator code..."

  # Backup management
  backup_suffix=""
  [[ "$params" == *"-t"* ]] && backup_suffix="_tb"
  backup_path="$BACKUP_DIR/${mode}${backup_suffix}"

  if [ -d "$backup_path" ]; then
    echo "▹ Restoring from backup: $backup_path"
    cp -r "$backup_path"/* ./mlx/backend/cpu/
  else
    if ! ./mlx/backend/cpu/op_batch_gen.sh -m "$mode" $params; then
      echo "❌ $mode code generation failed"
      exit 1
    fi
    echo "▹ Saving backup to: $backup_path"
    mkdir -p "$backup_path"
    cp -r ./mlx/backend/cpu/* "$backup_path/"
  fi

  echo "✅ Code generation successful"

  # Skip remaining steps if in generator-only mode
  if $GEN_ONLY; then
    echo "⏭️  Skipping build and benchmark (generator-only mode)"
    continue
  fi

  # ---------- 2. Build project ----------
  echo "[2/3] Building project..."
  (
    cd "$BUILD_DIR" || { echo "Error: Failed to enter build directory"; exit 1; }

    # Clean build (optional)
    # rm -rf *

    # Dynamic CMake configuration
    CMAKE_ARGS=".."
    if [[ "$params" == *"-t"* ]]; then
      echo "▷ Detected -t flag, disabling TMAC TVM build"
      CMAKE_ARGS="-DMLX_BUILD_TMAC_TVM=OFF .."
    fi

    echo "▹ Running CMake..."
    if ! cmake $CMAKE_ARGS; then
      echo "❌ CMake configuration failed"
      exit 1
    fi

    echo "▹ Compiling project (using 8 threads)..."
    if ! make -j8; then
      echo "❌ Compilation failed"
      exit 1
    fi
  )
  echo "✅ Project build successful"

  # ---------- 3. Run benchmarks ----------
  echo "[3/3] Running performance benchmarks..."

  # Create mode-specific log directory
  MODE_LOG_DIR="$LOGS_DIR/$mode"
  mkdir -p "$MODE_LOG_DIR"

  # Test all applications
  for app in "${APPS[@]}"; do
    LOG_FILE="$MODE_LOG_DIR/${app}.log"

    (
      cd "$BUILD_DIR" || exit 1
      echo "▹ Running $app..."
      if ! "./benchmarks/cpp/$app" > "$LOG_FILE" 2>&1; then
        echo "❌ $app failed"
        exit 1
      fi
    )

    echo "✅ $app completed ➞ Log saved to: ${LOG_FILE/#$PROJECT_ROOT/\$PROJECT_ROOT}"
  done
done

# Final output
echo "======================================"
if $GEN_ONLY; then
  echo "🎉 Operator generation completed!"
  echo "Backup directory: $BACKUP_DIR"
else
  echo "🎉 All modes processed successfully!"
  echo "Log directory structure:"
  tree -L 3 "$LOGS_DIR"
fi
