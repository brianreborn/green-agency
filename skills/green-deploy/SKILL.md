---
name: green-deploy
description: Publish green-agency artifacts on X, push documentation trees to GitHub, or flatten verified chapters into MANUSCRIPT.md when the host is degraded. Triggers include green-deploy, publish to X born_brian85001, push manuscript to GitHub, Antigravity git deploy, or flat-file manuscript export.
metadata:
  type: workflow
  version: "1.0"
---

# Green Deploy

Do not publish without an explicit user request naming the channel (X, git/GitHub, or flat-file).

## REQ-SK04-01 — X dispatch (SuperGrok)

When `host_tier=SUPERGROK_ENGINE` and the user asked to post:

- Target account is https://x.com/born_brian85001 unless the user names another handle they control.
- Compose from formatted chapters. Keep posts factual and short.
- Use the X tools available in-session. If no post-creation tool exists, stop with `ERROR_TOKEN: MISSING_PARAM X_POST_TOOL` and hand the user the exact text to paste. Do not pretend a post succeeded.
- Never include secrets, `.env.green`, or audit logs.

## REQ-SK04-02 — Version-control push

When GitHub connected tools are available (Antigravity / SuperGrok):

1. Confirm owner/repo (default `brianreborn/green-agency` only if the user is operating that repo).
2. Probe write access conceptually via the connected GitHub identity. Halt on `ERROR_TOKEN: FS_PERMISSION_DENIED` or `ERROR_TOKEN: MISSING_PARAM REPO`.
3. Push structured documentation (`skills/`, `MANUSCRIPT.md`, `REQUIREMENTS.md` updates) with `github___push_files` or `github___create_or_update_file`.
4. Do not commit `.runtime/`, `*.bak`, credentials, or generated binary blobs.
5. Prefer a feature branch + pull request when the default branch already carries LICENSE/REQUIREMENTS history the user did not ask to rewrite.

## REQ-SK04-03 — Flat-file fallback

When the host is degraded or the user asks for a single file:

```
bash scripts/flatten-manuscript.sh MANUSCRIPT.json MANUSCRIPT.md
```

Use `safe-write.sh` if replacing an existing `MANUSCRIPT.md`. Return the flattened path (or the full body in stateless chat).

## Output

```
DEPLOY channel=<x|git|flat|NONE> result=<OK|FAIL|SKIP> ref=<url|path|NONE>
```
