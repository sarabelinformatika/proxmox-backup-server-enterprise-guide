# Ports and protocols

| Flow | Default | Purpose | Recommendation |
|---|---:|---|---|
| Operator/PVE to PBS | TCP 8007 | Web UI, API, backup service | Permit only trusted networks |
| PBS to DNS | UDP/TCP 53 | Name resolution | Use controlled resolvers |
| PBS to NTP | UDP 123 | Time synchronization | Monitor time offset |
| PBS to SMTP relay | TCP 25/465/587 | Notifications | Restrict to approved relay |
| PBS to LDAP/AD | TCP 389/636 | Optional authentication | Prefer TLS-protected flow |
| Monitoring to PBS | Site-specific | API or agent monitoring | Read-only identity |
| PBS to package mirrors | TCP 443 | Updates and repositories | Egress allow-list where practical |

Do not publish TCP 8007 directly to the Internet. Validate every flow against the actual deployment and current vendor documentation.
