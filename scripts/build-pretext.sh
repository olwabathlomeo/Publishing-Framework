#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."/pretext
pretext build
