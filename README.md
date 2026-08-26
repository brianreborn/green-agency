# green-agency

Baseline `/skills` for modernizing agents.

Canonical requirements: [`REQUIREMENTS.md`](REQUIREMENTS.md).

## Pipeline

| Skill | Role |
|---|---|
| `green-probe` | Host tier, privileges, identity posture, short-circuit cache |
| `green-bootstrap` | Makefile / env synthesis, CI posture, compiler proxy |
| `green-ingest` | Tree index or interactive ingest + native syntax check |
| `green-format` | STYLE_GUIDE normalize, `MANUSCRIPT.json`, non-destructive make |
| `green-deploy` | X dispatch, GitHub push, or flat `MANUSCRIPT.md` |
| `green-agency` | Orchestrator — run the five skills in order |

Install for this engine by copying `skills/*` into `~/.grok/skills/` (already done on the authoring SuperGrok host).

## System contracts

REQ-SYS-01..06 live in `skills/green-agency/references/sys-requirements.md`.

- Append-only `.runtime/audit.log`
- Permission probe before writes
- `.bak` snapshot before overwrite
- `.runtime/probe_cache.json` short-circuit cache (schema 1.0.0)
- Local output / compiler proxies — no raw log ingestion

## License

BSD 3-Clause. See `LICENSE`.
