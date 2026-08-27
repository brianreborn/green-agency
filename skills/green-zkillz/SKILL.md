---
name: green-zkillz
description: Run the green-zkillz adaptive skill pipeline (formerly green-agency). Triggers include green-zkillz, green zkillz, green-agency pipeline, run green-probe through green-deploy, or modernize agents baseline skills.
metadata:
  type: workflow
  version: "1.1"
  package: green-zkillz
  source: brianreborn/green-agency
---

# green-zkillz

Package name for the pipeline formerly called green-agency. Stage skills keep their names.

Order: `green-probe` → `green-bootstrap` → `green-ingest` → `green-format` → `green-deploy`.

Load and follow `../green-agency/SKILL.md` for contracts, GDICT, and receipts. Treat `green-agency` as a legacy trigger only.

Install: repo-root `QUICK-INSTALL.md`.
