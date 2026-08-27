# Install and test green-agency skills on another host

Repo: https://github.com/brianreborn/green-agency

## What you get

Five-stage pipeline plus GDICT control-plane codec.

| Skill | Job |
|-------|-----|
| `green-probe` | Host tier, FS, identity. One `STATUS` line. Cache TTL. |
| `green-bootstrap` | Makefile, `.env.green`, CI detect, compiler-proxy. |
| `green-ingest` | Tree index or turn-by-turn paste. Native syntax check. |
| `green-format` | STYLE_GUIDE md, `MANUSCRIPT.json`, non-destructive make. |
| `green-deploy` | X / GitHub / flat `MANUSCRIPT.md` only when asked. |
| `green-agency` | Orchestrator + GDICT + usage ledger. |

GDICT intern **only** STATUS enums, diagnostics, path stems. No prose, no comments.

## Install (Grok / any agent that loads `SKILL.md`)

```bash
git clone https://github.com/brianreborn/green-agency.git
# Point the agent skill root at skills/green-{probe,bootstrap,ingest,format,deploy,agency}
```

Needs: `bash`, `python3`, `sha256sum`. No pip packages.

```bash
export GREEN_WORKSPACE="$PWD"
export GDICT_STATIC="$PWD/skills/green-agency/assets"
chmod +x skills/*/scripts/*.sh skills/green-agency/scripts/*.py
```

## Smoke

```bash
export GREEN_WORKSPACE=/tmp/green-smoke
mkdir -p "$GREEN_WORKSPACE"
skills/green-probe/scripts/probe.sh
skills/green-agency/scripts/gdict-lru.sh put err "error: expected identifier or '('"
skills/green-agency/scripts/gdict-lru.sh record prompt compress 100 20 gdict-static=2:60:8 grok-files=0:0:0
skills/green-agency/scripts/gdict-lru.sh usage compress
```

Do not commit `.runtime/`, `*.bak`, or secrets. Static tables in `assets/` are committed.

Budget: `gdict-lru.sh usage compress` only. `grok-files` is private SuperGrok storage, not a CDN; enable after `usage-config ask`.
