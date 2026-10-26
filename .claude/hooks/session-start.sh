#!/bin/bash
# SessionStart: report what this machine loads on every message, and offer the fix.
#
# Identical in every repo. The audit script itself is installed once per machine at
# ~/.claude/audit_env.py by "CLAUDE REPO/install.ps1"; the in-repo copy is only used
# in AI-Development, where it is developed. Keeping one script instead of a copy per
# repo is what stops 31 copies from drifting apart.
#
# All logic is in audit_env.py - this shim deliberately has no jq or other
# dependency, because a hook whose command is missing fails on every event.
# Never fails the session: no python, or no script, just means no report.
set -uo pipefail

AUDIT=""
for candidate in "${CLAUDE_PROJECT_DIR:-.}/CLAUDE REPO/audit_env.py" "$HOME/.claude/audit_env.py"; do
  if [ -f "$candidate" ]; then AUDIT="$candidate"; break; fi
done
[ -n "$AUDIT" ] || exit 0

for py in python3 python py; do
  if command -v "$py" >/dev/null 2>&1; then
    "$py" "$AUDIT" --hook || true
    exit 0
  fi
done
exit 0
