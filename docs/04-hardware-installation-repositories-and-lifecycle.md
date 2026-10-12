# 4. Hardware, installation, repositories, and lifecycle

## Hardware baseline

Use server-grade components, ECC memory where supported, redundant and monitored power, UPS shutdown integration, validated storage controllers/HBAs, out-of-band management, and disks appropriate to the write workload. Keep boot and backup data failure modes explicit.

## Installation

- Verify installation media and record the source/version.
- Configure stable management addressing, DNS, NTP, and host identity.
- Patch before adding production credentials or data.
- Replace the default self-signed certificate only through a documented TLS process.
- Configure notification delivery and test it immediately.

## Repository policy

Use one intended PBS repository path. Enterprise subscriptions normally use the enterprise repository; no-subscription is a deliberate risk/support decision. The test repository is not a production default.

## Lifecycle

Monthly maintenance should review advisories, package state, failed services, disk/SMART or ZFS health, certificate lifetime, repository configuration, and rollback requirements. Rehearse major upgrades on representative hardware or a staging instance and confirm compatibility with PVE clients.

## Acceptance evidence

Record hardware inventory, firmware, disk layout, package sources, PBS version, subscription status, recovery media, configuration backup, and an initial successful restore.
