# 10. Verification, integrity, and restore testing

## Verification

Verification checks stored backup data against cryptographic integrity information. Verify new snapshots promptly and periodically re-verify older data according to media risk and recovery value. Plan the I/O load and investigate every failure.

## What verification does not prove

It does not prove that the guest boots, the database is logically consistent, encryption keys are available, DNS and identity dependencies exist, operators know the procedure, or the RTO can be met.

## Restore-test program

Use at least four test types:

1. File-level recovery with permissions and content validation.
2. VM/CT restore into an isolated network.
3. Application owner validation of representative data.
4. Full-service or site-loss exercise against stated RPO/RTO.

## Test record

Record selected recovery point, operator, start/end time, bytes restored, achieved throughput, boot/application result, dependency gaps, key use, corrective actions, and business-owner acceptance.

## Frequency

Test high-impact services at least quarterly and after material changes. Rotate workloads so all critical services receive end-to-end coverage over the year.
