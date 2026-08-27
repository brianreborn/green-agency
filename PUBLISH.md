# Publish without pasting files

This chat host can only push a handful of files per API call. You should publish from a clone:

```bash
gh auth login
git clone https://github.com/brianreborn/green-agency.git
cd green-agency
gh release create v0.1.0-alpha --title "green-zkillz 0.1.0-alpha" --notes-file ALPHA.md --prerelease
```

Later drops:

```bash
git add -A && git commit -m "alpha drop" && git push
gh release create v0.1.1-alpha --generate-notes --prerelease
```

Do not commit `.runtime/`.
