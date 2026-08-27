# Bootstrap codebooks

Load these before session LRU. Do not commit `.runtime/gdict-session.json` (ephemeral).

| File | Provider id | Use |
|------|-------------|-----|
| `gdict-1.0.0.txt` | `gdict-static` | Host-tier enums, STATUS prefixes, REQ ids, skill names |
| `gdict-errors-1.0.0.txt` | `gdict-static` | Exact compiler/runtime diagnostic superstrings |

Skills must set `GDICT_STATIC` to this directory (default: this `assets/` folder) and intern only `TRIVIAL` control-plane strings.
