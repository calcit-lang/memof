#!/usr/bin/env bash
# Validate Cirru fenced blocks in Markdown via `calcit calcit.cirru docs check-md`.
#
# Usage: ./scripts/check-docs-md.sh [entry]
#   ENTRY=calcit.cirru ./scripts/check-docs-md.sh

set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
cd "$ROOT"

ENTRY="${1:-${ENTRY:-calcit.cirru}}"

if [ -n "${CALCIT_BIN:-}" ] && [ -x "$CALCIT_BIN" ]; then
  CALCIT_CMD=("$CALCIT_BIN")
elif [ -x "../calcit/target/debug/calcit" ]; then
  CALCIT_CMD=("../calcit/target/debug/calcit")
elif [ -x "../calcit/target/release/calcit" ]; then
  CALCIT_CMD=("../calcit/target/release/calcit")
elif command -v calcit >/dev/null 2>&1; then
  CALCIT_CMD=(calcit)
else
  echo "check-docs-md: need \`calcit\` on PATH or set CALCIT_BIN" >&2
  exit 1
fi

EXTRA_DEP_ARGS=(--dep ./)

FAILED=0
TOTAL=0

while IFS= read -r file; do
  TOTAL=$((TOTAL + 1))
  echo "check-md: $file"
  cmd=("${CALCIT_CMD[@]}" "$ENTRY" docs check-md "${EXTRA_DEP_ARGS[@]}" "$file")
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
