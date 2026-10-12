# 1. Scope, objectives, and threat model

## Purpose

Define the service before selecting disks or retention values. PBS protects recoverability; it does not replace workload high availability, application-native consistency controls, archival governance, or an incident-response program.

## Required service objectives

Record for every workload tier:

- owner, data classification, and legal retention;
- recovery point objective (RPO) and recovery time objective (RTO);
- maximum tolerable data loss and outage;
- required recovery granularity: VM, container, disk, file, or long-term record;
- dependencies such as DNS, identity, encryption keys, network, and PVE configuration;
- recovery priority and minimum usable service.

## Threat model

Address hardware loss, latent corruption, operator error, malicious deletion, compromised PVE credentials, compromised backup credentials, ransomware, site loss, network isolation, expired certificates, lost encryption keys, failed upgrades, capacity exhaustion, and untested recovery procedures.

## Trust boundaries

PVE, PBS, off-site PBS, monitoring, identity, tape, and key escrow are separate security zones. A shared root password, common administrative workstation, or unrestricted management VLAN collapses those boundaries.

## Exit criteria

- Workloads are classified and mapped to RPO/RTO.
- Threats have owners and controls.
- Recovery authority and emergency contacts are named.
- The design includes at least one copy outside the primary failure domain.
