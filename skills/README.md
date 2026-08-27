# green-agency skills

Repo: https://github.com/brianreborn/green-agency

Fixed order: probe → bootstrap → ingest → format → deploy. Orchestrator: `green-agency/`.

Install: `skills/green-agency/references/INSTALL.md`
Codec spec: `skills/green-agency/references/REQUIREMENTS-CODEC.md`
Static tables: `skills/green-agency/assets/` (`CODEBOOKS.md`)

Session LRU and usage JSONL stay in `$GREEN_WORKSPACE/.runtime/` and are not committed.

Providers: `gdict-static`, `gdict-session`, `gdict-user`, `cdn`, `git`, `magnet`, `nft`, `grok-files`, `passthrough`.
`grok-files` is SuperGrok Files / Grok Computer — private EXTREME storage, not a public CDN.
