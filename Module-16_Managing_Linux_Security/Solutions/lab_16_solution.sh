#!/bin/bash
# Solution for Lab 16: Security

# 1. Check Firewall
systemctl status firewalld --no-pager

# 2. List Rules
firewall-cmd --list-all

# 3. Add HTTP
firewall-cmd --add-service=http --permanent

# 4. Add Port 8080
firewall-cmd --add-port=8080/tcp --permanent

# 5. Reload
firewall-cmd --reload

# 6. Check SELinux
getenforce
