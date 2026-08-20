#!/usr/bin/env bash
# ==============================================================================
# Day-0 Verification Script: Oracle 26ai + Vertex AI Lab
# ==============================================================================
set -euo pipefail

echo "🧪 Running Day-0 Verification for Oracle 26ai + Vertex AI..."

if [ -f "user_guide.md" ] || [ -f "../user_guide.md" ] || [ -f "assets/user_guide.html" ]; then
    echo "[PASS] Cymbal Coffee Oracle 26ai lab guide and assets present"
else
    echo "[FAIL] Oracle 26ai assets missing"
    exit 1
fi

if command -v gcloud &>/dev/null; then
    echo "[PASS] Google Cloud CLI available on Workstation"
else
    echo "[FAIL] gcloud CLI not found"
    exit 1
fi

echo "[PASS] Day-0 verification completed for Oracle 26ai + Vertex AI"
exit 0
