# 9. Retention, prune, garbage collection, and protection

## Retention model

Translate business rules into `keep-last`, `keep-hourly`, `keep-daily`, `keep-weekly`, `keep-monthly`, and `keep-yearly` values. Validate the result with real snapshot timestamps; calendar bucket behavior may differ from intuitive “number of days” expectations.

## Operation order

1. Backups create snapshots and referenced chunks.
2. Prune removes snapshot references according to policy.
3. Protected snapshots remain exempt from ordinary removal until protection changes.
4. Garbage collection identifies and reclaims chunks no longer referenced, subject to safety timing.

## Scheduling

Avoid uncontrolled overlap among backup, sync, verification, prune, GC, scrub, and tape tasks. Schedule based on measured duration and I/O, not only clock preference.

## Safety controls

- Preview retention behavior before enforcement.
- Protect critical recovery points deliberately and review them.
- Require change approval for large policy reductions.
- Confirm off-site copy status before aggressive local pruning.
- Alert on GC failure, abnormal reclaim, and capacity trends.

## Evidence

Keep policy owner, approval date, legal basis, sample prune result, last GC result, protected snapshot register, and restore-test linkage.
