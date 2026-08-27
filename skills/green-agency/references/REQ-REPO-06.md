# REQ-REPO-06 — SuperGrok Files (private EXTREME, not a CDN)

Account-scoped storage at grok.com/files / Grok Computer / Files API. Not public edge cache.

- Token id: `grokfile:<file_id>#<sha256>`
- Usage provider: `grok-files`
- Retrieve offline or via tool; hash-check; intern locally. Never paste file body into model context.
- Disabled until `usage-config ask` records `grok_files=on`.
- Does not replace `gdict-static` or a real `cdn` URL.

See INSTALL.md and CODEBOOKS.md.
