#!/usr/bin/env bash
set -euo pipefail

echo "== Configured PBS jobs =="
for kind in verify-job sync-job prune-job; do
  echo "-- $kind --"
  proxmox-backup-manager "$kind" list || true
done
echo "-- Recent tasks --"
proxmox-backup-manager task list --all --limit 50 || true
echo "Review non-OK tasks and notification delivery."
