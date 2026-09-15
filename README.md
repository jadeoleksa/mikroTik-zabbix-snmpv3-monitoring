# MikroTik & Zabbix SNMP v3 Secure Monitoring

Production-ready configuration guides, templates, and automation examples for setting up secure network monitoring using **SNMP v3** (with authentication and encryption) across a distributed MikroTik RouterOS infrastructure.

## Architecture Overview
* **Zabbix Server:** Centralized monitoring and alerting engine.
* **MikroTik RouterOS:** Edge routing and network nodes.
* **SNMP v3 (USM / VACM):** Secure User-based Security Model providing message authentication (SHA) and encryption (AES) to eliminate legacy v2c vulnerabilities.

## Repository Structure
* `mikroTik/` — CLI configuration commands and security profiles for RouterOS.
* `docker-compose.yml` — Utility container for SNMP v3 network diagnostics and verification.

## Key Security & Implementation Highlights
1. **Strict User Isolation:** Configuring `authPriv` security levels on MikroTik devices.
2. **Network Troubleshooting:** Validating routing, DNS resolution, and packet delivery using tools like `snmpwalk` and `dig`.
3. **Scalability:** Best practices for handling large fleets of routers without performance drops.
