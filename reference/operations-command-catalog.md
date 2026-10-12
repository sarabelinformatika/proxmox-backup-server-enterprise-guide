# Operations command catalog

Read-only examples; confirm syntax against the installed release.

```bash
proxmox-backup-manager version
proxmox-backup-manager datastore list
proxmox-backup-manager verify-job list
proxmox-backup-manager sync-job list
proxmox-backup-manager prune-job list
proxmox-backup-manager garbage-collection status <datastore>
proxmox-backup-manager task list --all
zpool status
zfs list
df -hT
systemctl --failed
journalctl -u proxmox-backup-proxy --since today
```

Deletion, prune, garbage-collection, datastore removal, key replacement, and tape operations require an approved change and current recovery evidence.
