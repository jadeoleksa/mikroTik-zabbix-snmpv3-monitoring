## Step-by-Step MikroTik SNMP v3 Configuration

### 1. Firewall Configuration (Access Rules)
Add filtering rules to allow SNMP traffic (UDP 161) and ICMP exclusively from your monitoring server IP address[cite: 4]:
* Navigate to **IP -> Firewall -> Filter Rules -> Add (+)**[cite: 4].
* Create the UDP rule: `Chain: input`, `Protocol: 17 (udp)`, `Dst. Port: 161`, `Src. Address: <YOUR_ZABBIX_SERVER_IP>`, `Action: accept`[cite: 4].
* Create the ICMP rule: `Chain: input`, `Protocol: 1 (icmp)`, `Src. Address: <YOUR_ZABBIX_SERVER_IP>`, `Action: accept`[cite: 4].
* **Important:** Move these rules to the very top of the list (above any default `drop` rules)[cite: 4].

### 2. SNMP v3 Security Profiles
Configure a secure user profile within the SNMP settings[cite: 4]:
* Go to **IP -> SNMP -> Communities** (or user settings)[cite: 4].
* Set a user/community name (e.g., `zabbix_secure_user`).
* Restrict access by the monitoring server's IP address (`Src. Address`)[cite: 4].
* Security Level: select `authPriv` (authentication + encryption).
* Protocols: `SHA1` for authentication and `AES` for encryption[cite: 4].
* *Note: Use strong, unique passwords; never leave default values.*

### 3. Unique Engine ID Generation
A unique Engine ID is required for proper SNMP v3 operation on RouterOS[cite: 4]:
* The format typically consists of the prefix `0x80000150` combined with the device's serial number (MAC address)[cite: 4].
* Retrieve the serial number via the terminal using the command: `/system routerboard print`[cite: 4].
