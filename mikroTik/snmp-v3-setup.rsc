# MikroTik RouterOS v7.x SNMP v3 Configuration
# Security Level: authPriv (SHA auth, AES encryption)

/snmp
set enabled=yes contact="admin@company.local" location="Datacenter-01" engine-id-type=mac-address

/snmp user
add name="zabbix_name_user" auth-protocol=sha auth-pass="YourSecureAuthPass123!" priv-protocol=aes priv-pass="YourSecurePrivPass123!" security-level=authPriv

/snmp community
set [ find default=yes ] disabled=yes
