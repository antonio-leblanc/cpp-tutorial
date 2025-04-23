#!/usr/bin/env bash

# Exit immediately if a command exits with a non-zero status.
set -e

# --- Configuration ---
# Get the directory where this script is located, which we assume is the project root.
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"
SOURCE_DIR="${SCRIPT_DIR}"
BUILD_DIR="${SOURCE_DIR}/build" # Define the build directory name

# --- Build Process ---
echo "Starting build process..."
echo "Source directory: ${SOURCE_DIR}"
echo "Build directory:  ${BUILD_DIR}"

# Clean the build directory (optional, but good for ensuring a fresh build)
if [ -d "${BUILD_DIR}" ]; then
  echo "Cleaning previous build directory..."
  rm -rf "${BUILD_DIR}"
fi

# Create the build directory
echo "Creating build directory..."
mkdir -p "${BUILD_DIR}"

# Configure CMake
# -S specifies the source directory (where CMakeLists.txt is)
# -B specifies the build directory (where output goes)
echo "Configuring CMake..."
cmake -S "${SOURCE_DIR}" -B "${BUILD_DIR}"

# Build the project using CMake's build command
# This automatically calls the underlying build tool (make, ninja, etc.)
echo "Building project..."
cmake --build "${BUILD_DIR}"

echo "Build complete!"
echo "Shared library should be located in: ${BUILD_DIR}/lib"