# 7. Identity, roles, API tokens, and MFA

## Human access

Use named accounts, strong authentication, MFA for privileged users, and separate emergency access. Avoid daily use of `root@pam`. Review realm dependencies: an external directory outage must not make emergency recovery impossible.

## Automation access

Create a separate API token for each PVE cluster or integration. Grant the minimum datastore/namespace privileges required. Never reuse a human password or one unrestricted token across sites.

## ACL review

Quarterly, export users, tokens, roles, ACL paths, token separation settings, disabled accounts, and effective permissions. Check inherited rights and namespace scope—not only visible role names.

## Secret handling

- Store token secrets in a secrets manager or protected PVE storage configuration.
- Never place secrets in scripts, tickets, Git, screenshots, or monitoring labels.
- Define rotation, revocation, and incident procedures.
- Test an emergency identity that does not depend on the failed production identity provider.

## Separation of duties

Where risk justifies it, separate backup administration, workload administration, security monitoring, and restore approval. A PVE administrator should not automatically have unrestricted deletion authority over all backup tiers.
