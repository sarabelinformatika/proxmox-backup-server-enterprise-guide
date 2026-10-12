# 8. Proxmox VE integration and backup jobs

## Storage registration

Register PBS in PVE using its stable FQDN, certificate fingerprint or trusted certificate chain, intended datastore/namespace, and a dedicated API token. Scope the storage to the correct nodes and content.

## Job design

Group workloads by RPO, backup window, application behavior, and retention class. Avoid one huge job when failure isolation and scheduling matter. Stagger clusters so ingest, verification, GC, and WAN sync do not contend uncontrollably.

## Guest consistency

Install and monitor the QEMU guest agent where appropriate. Application-consistent database recovery may still require database-native backups, quiescing, transaction-log handling, or post-restore validation. A VM snapshot alone is not a universal application-consistency guarantee.

## Operational checks

- Backup job completes within its window.
- Expected guests are included and exclusions are approved.
- Notifications reach a monitored destination.
- New snapshots receive verification.
- Restore permissions and owner metadata are understood.
- Failed or missed jobs create actionable incidents.

## Change control

Adding, renaming, moving, or deleting a VM/CT must trigger a backup-coverage review. Capacity and RPO impact belong in the same change.
