#!/usr/bin/env bash
# ==============================================================================
# Headless Hackathon Engine: Shell Entrypoint Wrapper for deploy.py
# ==============================================================================
set -euo pipefail

# Ensure we run from the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "${SCRIPT_DIR}"

# Check for Python 3
if ! command -v python3 &>/dev/null; then
  echo "❌ ERROR: python3 is required but not installed."
  echo "Please install Python 3 on your local machine to run the orchestrator."
  exit 1
fi

# Delegate execution to the Python orchestrator
exec python3 deploy.py "$@"
