# green-agency

Baseline `/skills` for modernizing agents.

**Start here:** [QUICK-INSTALL.md](QUICK-INSTALL.md)

Canonical requirements: [REQUIREMENTS.md](REQUIREMENTS.md).  
Codec / usage / grok-files: [skills/green-agency/references/INSTALL.md](skills/green-agency/references/INSTALL.md).

## Pipeline

| Skill | Role |
|---|---|
| `green-probe` | Host tier, privileges, identity posture, short-circuit cache |
| `green-bootstrap` | Makefile / env synthesis, CI posture, compiler proxy |
| `green-ingest` | Tree index or interactive ingest + native syntax check |
| `green-format` | STYLE_GUIDE normalize, `MANUSCRIPT.json`, non-destructive make |
| `green-deploy` | X dispatch, GitHub push, or flat `MANUSCRIPT.md` |
| `green-agency` | Orchestrator + GDICT codebook + usage ledger |

Copy `skills/*` into `~/.grok/skills/` (or the host custom-skill dir).

## System contracts

REQ-SYS-01..06: `skills/green-agency/references/sys-requirements.md`.

GDICT intern only control-plane strings (STATUS, diagnostics, paths). No prose.

## License

BSD 3-Clause. See `LICENSE`.
