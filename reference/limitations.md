# Limitations

- This guide does not select hardware for a specific workload without measured change rate, retention, restore throughput, and growth data.
- Deduplication efficiency varies by workload and cannot replace capacity planning.
- ZFS redundancy is not a backup copy and does not provide site isolation.
- Successful verification does not prove application-level consistency or business usability.
- An off-site replica reachable with the same privileged credentials may not survive credential compromise.
- Client-side encryption protects data but introduces a critical dependency on recoverable keys.
- Tape support depends on validated hardware, drivers, media handling, and tested catalog recovery.
- Regulatory retention and data-erasure requirements require legal and records-management input.
