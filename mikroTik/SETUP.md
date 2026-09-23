## Step-by-Step MikroTik SNMP v3 Configuration

### 1. Firewall Configuration (Access Rules)
Add filtering rules to allow SNMP traffic (UDP 161) and ICMP exclusively from your monitoring server IP address:
* Navigate to **IP -> Firewall -> Filter Rules -> Add (+)**.
* Create the UDP rule: `Chain: input`, `Protocol: 17 (udp)`, `Dst. Port: 161`, `Src. Address: <YOUR_ZABBIX_SERVER_IP>`, `Action: accept`.
* Create the ICMP rule: `Chain: input`, `Protocol: 1 (icmp)`, `Src. Address: <YOUR_ZABBIX_SERVER_IP>`, `Action: accept`.
* **Important:** Move these rules to the very top of the list (above any default `drop` rules).

### 2. SNMP v3 Security Profiles
Configure a secure user profile within the SNMP settings:
* Go to **IP -> SNMP -> Communities** (or user settings).
* Set a user/community name (e.g., `zabbix_secure_user`).
* Restrict access by the monitoring server's IP address (`Src. Address`).
* Security Level: select `authPriv` (authentication + encryption).
* Protocols: `SHA1` for authentication and `AES` for encryption.
* *Note: Use strong, unique passwords; never leave default values.*

### 3. Unique Engine ID Generation
A unique Engine ID is required for proper SNMP v3 operation on RouterOS:
* The format typically consists of the prefix `0x80000150` combined with the device's serial number (MAC address).
* Retrieve the serial number via the terminal using the command: `/system routerboard print`.
