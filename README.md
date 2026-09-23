# MikroTik & Zabbix SNMP v3 Secure Monitoring 🚀

[![RouterOS](https://img.shields.io/badge/RouterOS-v7.x-orange.svg)](https://mikrotik.com/)
[![Zabbix](https://img.shields.io/badge/Zabbix-7.0%20LTS-red.svg)](https://www.zabbix.com/)
[![Security](https://img.shields.io/badge/SNMP-v3%20Encrypted-green.svg)]()
[![Docker Compose](https://img.shields.io/badge/docker--compose-ready-blue.svg)](https://docs.docker.com/compose/)

Production-ready configuration guides, templates, and automation examples for setting up secure network monitoring using SNMP v3 (with authentication and encryption) across a distributed MikroTik RouterOS infrastructure.

## 🏗️ Architecture Overview

* **Zabbix Server:** Centralized monitoring and alerting engine.
* **MikroTik RouterOS:** Edge routing and network nodes.
* **SNMP v3 (USM / VACM):** Secure User-based Security Model providing message authentication (SHA) and encryption (AES) to eliminate legacy v2c vulnerabilities.

## 📁 Repository Structure

* `mikroTik/` — CLI configuration commands and security profiles for RouterOS.
* `docker-compose.yml` — Utility container for SNMP v3 network diagnostics and verification.

## 🔒 Key Security & Implementation Highlights

* **Strict User Isolation:** Configuring authPriv security levels on MikroTik devices.
* **Network Troubleshooting:** Validating routing, DNS resolution, and packet delivery using tools like `snmpwalk` and `dig`.
* **Scalability:** Best practices for handling large fleets of routers without performance drops.

## 👤 Author
* **Oleksandra Viun** — *Junior DevOps / DevSecOps Engineer*
  * [LinkedIn](https://www.linkedin.com/in/oleksandra-viun-051394382)
  * [GitHub](https://github.com/jadeoleksa)
