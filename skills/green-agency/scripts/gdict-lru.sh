#!/usr/bin/env bash
# Thin CLI over gdict_lru.py — LRU codebook for control-plane strings only.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")" && pwd)"
export GREEN_WORKSPACE="${GREEN_WORKSPACE:-/home/workdir/artifacts}"
exec python3 "$ROOT/gdict_lru.py" "$@"
