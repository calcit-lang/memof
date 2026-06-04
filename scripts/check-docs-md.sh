#!/usr/bin/env bash
# Validate Cirru fenced blocks in Markdown via `cr docs check-md`.
#
# Usage: ./scripts/check-docs-md.sh [entry]
#   ENTRY=calcit.cirru ./scripts/check-docs-md.sh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

ENTRY="${1:-${ENTRY:-calcit.cirru}}"

if [ -n "${CR_BIN:-}" ] && [ -x "$CR_BIN" ]; then
  CR_CMD=("$CR_BIN")
elif [ -x "../calcit/target/debug/cr" ]; then
  CR_CMD=("../calcit/target/debug/cr")
elif [ -x "../calcit/target/release/cr" ]; then
  CR_CMD=("../calcit/target/release/cr")
elif command -v cr >/dev/null 2>&1; then
  CR_CMD=(cr)
else
  echo "check-docs-md: need \`cr\` on PATH or set CR_BIN" >&2
  exit 1
fi

EXTRA_DEP_ARGS=(--dep ./)

FAILED=0
TOTAL=0

while IFS= read -r file; do
  TOTAL=$((TOTAL + 1))
  echo "check-md: $file"
  cmd=("${CR_CMD[@]}" "$ENTRY" docs check-md -d "$ENTRY" "${EXTRA_DEP_ARGS[@]}" "$file")
  if "${cmd[@]}"; then
    :
  else
    FAILED=$((FAILED + 1))
  fi
done < <(find . -name '*.md' ! -path './node_modules/*' | sort)

echo ""
echo "Docs check-md: ${TOTAL} files, $((TOTAL - FAILED)) passed, ${FAILED} failed"

if [ "${FAILED}" -gt 0 ]; then
  exit 1
fi
