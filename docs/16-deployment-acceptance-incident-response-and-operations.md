# 16. Deployment, acceptance, incident response, and operations

## Deployment phases

1. Discover workloads, dependencies, risk, RPO/RTO, and data growth.
2. Approve architecture, capacity, subscription, security, and rollback.
3. Build and harden PBS, networking, identity, monitoring, and notifications.
4. Pilot representative workloads and measure backup/restore performance.
5. Add off-site/offline tiers and test loss of the primary site.
6. Enforce retention and maintenance schedules after evidence review.
7. Hand over runbooks, ownership, service levels, and known risks.

## Acceptance gates

- All in-scope workloads appear in the coverage matrix.
- RPO and backup windows are met.
- Verification and notification work.
- File, VM/CT, and application restores succeed.
- Off-site restore works without the primary PBS.
- Emergency credentials and keys are recoverable.
- Capacity headroom and forecast meet policy.
- Monitoring, escalation, and change ownership are active.

## Incident response

On suspected compromise, preserve evidence, isolate affected management paths, revoke tokens, protect unaffected copies, suspend destructive automation if safe, validate clean recovery points, rebuild trust anchors, and restore into an isolated environment before production reconnection.

## Operating cadence

Daily: failures, missed jobs, sync age, capacity, storage health. Weekly: verification, protected snapshots, notification test review. Monthly: patches, permissions, forecast, sample restore. Quarterly: end-to-end recovery and access review. Annually: site-loss exercise, retention/legal review, hardware and lifecycle plan.

## Final principle

The service is accepted only when recovery evidence matches business objectives. Installation completion is not backup-service completion.
