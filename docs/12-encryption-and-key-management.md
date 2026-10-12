# 12. Encryption and key management

## Encryption choices

PBS supports client-side encryption workflows for supported backup-client use cases. Encryption protects confidentiality from the storage operator but changes recovery dependencies. Transport TLS and encryption at rest solve different problems.

## Key lifecycle

Document generation, owner, purpose, protected storage, offline escrow, authorized access, rotation, revocation, backup, recovery, and destruction. Keep master/recovery material outside the PBS and outside the same credential domain.

## Recovery rule

No encrypted dataset is accepted until a second authorized person can recover it using escrowed material and documented instructions. Test on an isolated host that does not already possess the key.

## Operational safeguards

- Never paste keys or passwords into tickets or repositories.
- Keep at least two protected key copies in separate failure domains.
- Monitor unauthorized access to the key store.
- Include key availability in restore-test evidence.
- Treat lost keys as permanent data loss.

## Rotation

Key rotation must account for historical backups. Do not destroy an old key while any required recovery point still depends on it.
