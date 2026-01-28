#!/bin/bash
# Solution for Lab 13: SSH Security

# 1. Key Gen (Client Side)
# ssh-keygen -t rsa -b 2048

# 2. Copy ID (Client Side)
# ssh-copy-id user@server_ip

# --- Server Side Steps Below ---

# 4. Backup Config
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak

# 5. Disable Password Auth
sed -i 's/^#PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config
sed -i 's/^PasswordAuthentication yes/PasswordAuthentication no/' /etc/ssh/sshd_config

# 6. Restart Service
systemctl restart sshd

# Warning: Ensure you have key access before doing this!
