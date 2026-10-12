# 14. Monitoring, alerting, reporting, and capacity

## Minimum telemetry

Monitor PBS services, task status, missed backups, verification failures, sync lag, prune/GC result, datastore usage, inode/resource pressure, ZFS/SMART health, memory, CPU, I/O latency, network errors, time synchronization, certificate expiry, package/update state, and notification delivery.

## Actionable alerts

Every alert needs severity, owner, response time, diagnostic link, safe first action, escalation, and closure evidence. A daily email nobody owns is not monitoring.

## Capacity reporting

Trend protected logical bytes, stored unique bytes, daily growth, deduplication factor, backup duration, verify duration, GC duration/reclaim, sync lag, restore throughput, and forecast date for warning/critical thresholds.

## Service review

Monthly reporting should include RPO compliance, failed/missed jobs, unresolved verification errors, restore-test completion, off-site age, capacity forecast, security changes, patch status, and open risks.

## Monitoring security

Use read-only API identities, protect monitoring credentials, restrict source networks, and avoid exposing backup names or customer identifiers in public dashboards.
