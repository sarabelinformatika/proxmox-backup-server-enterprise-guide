#!/usr/bin/env bash
set -euo pipefail

echo "== Proxmox Backup Server host assessment =="
printf 'UTC time: '; date -u --iso-8601=seconds
printf 'Hostname: '; hostname -f 2>/dev/null || hostname
echo "-- Version --"
proxmox-backup-manager version 2>/dev/null || true
echo "-- Failed services --"
systemctl --failed --no-pager || true
echo "-- Filesystems --"
df -hT
echo "-- Memory --"
free -h
echo "-- Block devices --"
lsblk -o NAME,SIZE,TYPE,FSTYPE,MOUNTPOINTS,MODEL
echo "-- ZFS status --"
command -v zpool >/dev/null && zpool status || echo "ZFS tools not installed"
echo "Assessment is read-only. Review warnings manually."
