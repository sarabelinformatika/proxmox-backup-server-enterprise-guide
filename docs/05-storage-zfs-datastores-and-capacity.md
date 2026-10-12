# 5. Storage, ZFS, datastores, and capacity

## Design principles

PBS benefits from predictable random I/O, sufficient memory, and low-latency metadata access. Select mirror, RAIDZ, or other validated storage based on failure tolerance, usable capacity, rebuild behavior, and restore/verification workload—not headline sequential throughput.

## ZFS considerations

- Use direct disk visibility; avoid stacking hardware RAID and ZFS without a justified design.
- Monitor pool health, checksum errors, scrubs, device latency, and replacement history.
- Plan ashift and vdev geometry before creating the pool.
- Do not fill the pool to exhaustion; performance and operational safety degrade near full capacity.
- Keep a tested device-replacement runbook and compatible spares.

## Datastores

Separate datastores only when needed for security, retention, media, performance, or ownership boundaries. More datastores increase operational overhead. Document backing filesystem, mount behavior, ownership, namespace structure, maintenance jobs, and capacity thresholds.

## Capacity operations

Forecast protected bytes, unique stored bytes, daily growth, and reclaim delay. Prune removes snapshot references; garbage collection reclaims unreferenced chunks later. Therefore a retention reduction does not create immediate free space.

## Prohibited assumptions

RAID/ZFS is not a backup, deduplication is not compression capacity, and a healthy pool does not prove application recoverability.
