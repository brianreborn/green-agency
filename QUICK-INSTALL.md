# Quick install

```bash
git clone https://github.com/brianreborn/green-agency.git
cd green-agency
export GREEN_WORKSPACE="$PWD"
export GDICT_STATIC="$PWD/skills/green-agency/assets"
chmod +x skills/*/scripts/*.sh skills/green-agency/scripts/*.py
```

Point the host skill directory at:

`skills/green-probe` `green-bootstrap` `green-ingest` `green-format` `green-deploy` `green-agency`

On Grok: copy those folders into `~/.grok/skills/` (or the platform’s custom-skill path).

Needs: `bash`, `python3`. No pip.

```bash
export GREEN_WORKSPACE=/tmp/green-smoke
mkdir -p "$GREEN_WORKSPACE"
skills/green-probe/scripts/probe.sh
skills/green-agency/scripts/gdict-lru.sh record prompt compress 80 20 gdict-static=1:40:8
skills/green-agency/scripts/gdict-lru.sh usage compress
```

Expect a `STATUS` line and `$GREEN_WORKSPACE/.runtime/gdict-usage.prom` ending in `# EOF`.

Do not commit `.runtime/`.

Longer notes: [skills/green-agency/references/INSTALL.md](skills/green-agency/references/INSTALL.md)  
SuperGrok Files (optional, off by default): same file, section REQ-REPO-06.
