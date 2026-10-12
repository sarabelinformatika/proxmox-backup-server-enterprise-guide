#!/usr/bin/env bash
set -euo pipefail

echo "== PBS datastore health =="
proxmox-backup-manager datastore list
echo "-- Usage --"
df -hT
echo "-- Garbage collection status --"
while read -r datastore; do
  [[ -z "$datastore" || "$datastore" == "name" ]] && continue
  echo "[$datastore]"
  proxmox-backup-manager garbage-collection status "$datastore" || true
done < <(proxmox-backup-manager datastore list --output-format json 2>/dev/null | sed -n 's/.*"name":"\([^"]*\)".*/\1/p')
echo "No prune, delete, or garbage-collection action was started."
