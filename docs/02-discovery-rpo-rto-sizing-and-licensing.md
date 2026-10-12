# 2. Discovery, RPO/RTO, sizing, and licensing

## Inventory

Capture PVE nodes and clusters, VM/CT count, protected bytes, daily change rate, snapshot duration, backup windows, database workloads, WAN capacity, restore concurrency, retention classes, expected annual growth, and existing off-site or tape facilities.

## Capacity model

Do not size from allocated virtual disks alone. Start with used protected data, measured change rate, retention, expected deduplication, verification/GC working space, growth, and a safety margin.

```text
usable target = baseline + retained change + growth + operational reserve
```

Treat deduplication as measured efficiency, not guaranteed capacity. Establish warning and critical thresholds before production; 75% and 85% are reasonable starting points, adjusted for procurement lead time and ingest growth.

## Performance model

Measure sustained ingest, random metadata I/O, verification throughput, GC duration, and restore throughput. Recovery bandwidth is often the real RTO limiter. Test concurrent restores rather than relying only on backup speed.

## Subscription decision

Record whether the deployment uses an enterprise subscription and enterprise repository or the no-subscription repository. Production support, tested package delivery, response expectations, and commercial accountability belong in the design decision.

## Deliverables

- Inventory and dependency register
- RPO/RTO matrix
- Three-year capacity forecast
- Restore-throughput acceptance target
- Subscription and support decision
