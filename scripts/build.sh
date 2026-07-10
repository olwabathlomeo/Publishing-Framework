#!/usr/bin/env bash
set -euo pipefail

# Simple build wrapper for the repository
ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT_DIR"

echo "Running Makefile build..."
make all

echo "Build complete. Outputs are in ./output/"
