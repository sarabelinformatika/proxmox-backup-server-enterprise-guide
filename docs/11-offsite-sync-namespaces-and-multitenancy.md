# 11. Off-site sync, namespaces, and multi-tenancy

## Pull-based design

Prefer the off-site PBS initiating a pull from the primary. This reduces the need for the production site to hold broad credentials that can modify the remote copy. Restrict remote and local ACLs to required datastores and namespaces.

## Sync policy

Define source, destination, namespace depth, owner, schedule, bandwidth window, removal behavior, and failure alerts. Do not enable destructive mirroring semantics without understanding how source deletion and retention interact with the destination.

## Namespace use

Namespaces can separate clusters, sites, customers, or retention domains. Pair them with ACL paths, token scope, naming standards, and capacity accounting. Namespace structure alone is not a hard security boundary if higher-path permissions remain broad.

## Multi-tenant cautions

Evaluate metadata visibility, restore authority, support access, encryption ownership, resource contention, quota/capacity reporting, legal separation, and secure offboarding. High-assurance tenants may require dedicated datastores or systems.

## Acceptance

Measure sync lag, initial seed duration, resumption after WAN failure, off-site restore throughput, credential isolation, and behavior when the primary site is unavailable.
