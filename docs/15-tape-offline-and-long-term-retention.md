# 15. Tape, offline copies, and long-term retention

## When to use tape

Tape can provide high-capacity offline retention and physical separation. It introduces hardware, media, catalog, encryption-key, transport, environmental, and operator dependencies that must be managed explicitly.

## Design decisions

Document supported drive/library hardware, media generation, pool strategy, rotation, export/eject workflow, off-site custody, encryption, barcode/label convention, cleaning, retention, overwrite policy, and WORM requirements.

## Operational controls

- Inventory every medium and custody transfer.
- Separate encryption keys from media.
- Monitor drive cleaning and hardware errors.
- Store media within specified environmental limits.
- Prevent a single operator from silently destroying all copies where risk warrants dual control.
- Test catalog reconstruction and restore without relying on the primary PBS database.

## Long-term readability

Plan media migration before drives, interfaces, software, or skills become unavailable. An archive is only useful while media, keys, catalog, compatible hardware, and documented procedures remain accessible.

## Acceptance

Complete a restore from exported media, using escrowed keys and documented inventory, and have the data owner validate the result.
