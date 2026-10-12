# 3. Reference architecture and failure domains

## Preferred pattern

Use a separate physical PBS server with independent boot media, datastore disks, power protection, and management controls. Add an off-site PBS that pulls selected namespaces from the primary site. For the highest impact workloads, add an offline or WORM-capable tier.

## Why separate hardware matters

Running the only PBS datastore inside the protected PVE cluster leaves backup availability dependent on the same compute, storage, credentials, and incident. A virtual PBS can be useful for labs or additional tiers, but not as the only recovery copy for that cluster.

## Data flow

1. PVE pushes scheduled backups to primary PBS using a dedicated token.
2. PBS verifies new data and reports failures.
3. Off-site PBS pulls data with restricted credentials.
4. Selected recovery points move to offline media where required.
5. Restore tests run in an isolated network and generate evidence.

## Failure-domain review

For each pair of copies, compare site, power, cooling, storage controller, administrative identity, network path, directory service, monitoring, and key custody. Two copies sharing all of these are one practical failure domain.
