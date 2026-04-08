# RBAC and Permissions

    Permissions should be explicit, reviewable and environment-specific. The table below is a pragmatic starting point for separating responsibilities.

    | Role | Responsibility |
    | --- | --- |
    | Repository maintainer | Owns repository quality, change control and release notes. |
| Platform administrator | Maintains Azure, Microsoft 365, DNS and network dependencies. |
| Automation identity | Dedicated service principal / API token restricted to the required endpoints only. |
| SEPPmail administrator | Configures appliance or cloud-side settings, certificates, tokens and message flow. |
| Security reviewer | Reviews hardening, secrets handling, logging and control evidence. |
| Auditor / assessor | Consumes evidence and validates that documented controls are in place. |


## API-oriented permission model

- Use separate API tokens or technical users per environment and per automation purpose.
- Restrict tokens to the required endpoints, domains or business functions whenever the platform supports it.
- Rotate secrets on a schedule and on every role change or suspected exposure.
- Route API audit logs to a central logging or SIEM capability when possible.


    ## Review cadence

    - Quarterly access review for privileged roles
    - Immediate review after staff movement or partner changes
    - Mandatory review before production go-live
    - Evidence retention aligned with internal policy and regulatory expectations
