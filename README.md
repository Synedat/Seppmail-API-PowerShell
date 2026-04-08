# Seppmail-API-PowerShell

> PowerShell-first automation patterns for the unified SEPPmail REST API with secure token handling and operational examples.

This repository is curated by Synedat Group GmbH for the SEPPmail ecosystem. It is intended as an implementation accelerator for customers, partners and delivery teams.

## Why this repository exists

This repository is designed to be immediately useful in workshops, pilots, production preparation and knowledge transfer. It combines upstream material with additional operational context, safer examples and governance-oriented documentation so that teams can move from an interesting script to a reviewable implementation asset.

## Intended audience

PowerShell users, Windows admins and platform automation teams.

## What you will find here

- `docs/ARCHITECTURE.md` - component view and trust boundaries
- `docs/RBAC-AND-PERMISSIONS.md` - practical role separation guidance
- `docs/SECURITY-AND-COMPLIANCE.md` - implementation mapping for ISO 27001, BAIT, DORA, TISAX and NIS2
- `docs/OPERATIONS.md` - operational lifecycle and evidence ideas
- `docs/TROUBLESHOOTING.md` - first-line support guidance
- `docs/SEPPMAIL-REFERENCES.md` - official reference list
- `docs/images/architecture-overview.svg` - lightweight architecture visual
- `examples/connect-seppmail-api.ps1`
- `examples/get-system-status.ps1`
- `examples/new-user-onboarding.ps1`

## Architecture at a glance

```mermaid
flowchart LR
    A[Automation script or Postman] --> B[Authentication]
    B --> C[SEPPmail API endpoint]
    C --> D[Domain object / action]
    C --> E[Audit log]
    E --> F[SIEM / monitoring]
```

## Practical focus

- usable examples rather than empty scaffolding
- security-conscious defaults and notes on secrets handling
- architecture and permissions thinking, not just commands
- audit-friendly documentation structure
- consistent Synedat branding and discoverability across repositories

## Security and governance themes

This repository intentionally includes implementation notes that align well with:
- ISO/IEC 27001 style ISMS and control evidence
- BAIT expectations for banking IT governance and operations
- DORA-oriented operational resilience thinking
- TISAX-oriented supplier and security process maturity
- NIS2-style cyber hygiene and incident preparedness

## Official SEPPmail references

- [API functions overview](https://docs.seppmail.com/en/09_ht_admin_api-functions.html)
- [SEPPmail API reference landing page](https://docs.seppmail.com/api)

## Synedat

Synedat Group GmbH works across software engineering, cloud, infrastructure, operations and security-related implementation projects. These repositories are structured to be useful both as public technical starters and as conversation starters for concrete customer delivery.

Website: https://www.synedat.com/

## Upstream and provenance

Where an original SEPPmail community repository was available, its source files were preserved and extended. Original README content, where replaced, was moved to `docs/upstream/ORIGINAL-README.md` for traceability.
