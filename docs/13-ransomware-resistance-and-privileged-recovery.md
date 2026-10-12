# 13. Ransomware resistance and privileged recovery

## Design objective

Assume production administrator credentials may be compromised. Recovery copies must survive malicious deletion, encryption, credential theft, and management-plane disruption.

## Layered controls

- Separate PBS and PVE identities and restrict token scope.
- Use MFA and privileged workstations for backup administration.
- Keep PBS off public networks and default-deny management paths.
- Use pull-based off-site sync with separate credentials.
- Protect selected recovery points and monitor deletion/configuration events.
- Maintain offline or WORM media for the highest impact data.
- Export configuration and recovery documentation securely.

## Detection

Alert on abnormal backup size/change rate, widespread guest failures, unexpected pruning, protection changes, new privileged identities, token changes, repository changes, verification failures, sync removal, and sudden capacity shifts.

## Privileged recovery

Maintain sealed emergency credentials, clean administrative endpoints, PBS installation media, network diagrams, DNS/NTP procedures, certificate/key material, PVE cluster recovery instructions, and contact lists outside the production environment.

## Exercise

Run a scenario where PVE credentials and the primary site are considered hostile. Recover from the off-site or offline tier without relying on compromised identity services.
