#!/usr/bin/env bash
set -euo pipefail

echo "timestamp,filesystem,type,size,used,available,use_percent,mountpoint"
df -PT | awk 'NR>1 {gsub(/%/,"",$6); printf "%s,%s,%s,%s,%s,%s,%s,%s\n", strftime("%Y-%m-%dT%H:%M:%SZ", systime(), 1),$1,$2,$3,$4,$5,$6,$7}'

if command -v zpool >/dev/null; then
  echo
  echo "# zpool list"
  zpool list
fi
