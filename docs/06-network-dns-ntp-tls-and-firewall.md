# 6. Network, DNS, NTP, TLS, and firewall

## Segmentation

Place PBS management and backup traffic on controlled networks. Permit TCP 8007 only from approved PVE nodes, operator jump hosts, monitoring, and sync peers. Do not expose the management/API service directly to the Internet.

## Name and time

Use forward and reverse DNS where operationally required, stable FQDNs, and redundant trusted time sources. Time drift affects authentication, certificates, job correlation, and forensic timelines. Alert on synchronization loss and material offset.

## TLS

Use a certificate whose names match the configured PBS endpoint. Record issuer, renewal owner, expiry alert, private-key location, and replacement procedure. Certificate fingerprint pinning must be updated through an approved change when certificates change.

## Firewall model

Default-deny between zones. Document source, destination, protocol, port, purpose, owner, and expiry for each exception. Restrict outbound access to DNS, NTP, mail relay, package repositories, directory services, and other explicitly required dependencies.

## WAN sync

Measure effective bandwidth, latency, packet loss, and backup change volume. Schedule initial seeding and large re-verification windows separately from normal production traffic.
