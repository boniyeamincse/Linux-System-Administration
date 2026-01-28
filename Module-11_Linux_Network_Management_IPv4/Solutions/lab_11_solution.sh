#!/bin/bash
# Solution for Lab 11: Networking
# Note: Changing IP might disconnect SSH!

# 1. Set Hostname
hostnamectl set-hostname server1.lab.local

# 2. Add Connection
# Replace 'ens33' with your actual interface name
IFACE=$(ip -o link show | awk -F': ' '{print $2}' | grep -v lo | head -n 1)

nmcli con add type ethernet con-name static-lab ifname $IFACE \
ip4 192.168.100.10/24 gw4 192.168.100.1

# 3. Set DNS
nmcli con mod static-lab ipv4.dns "8.8.8.8"

# 4. Activate
nmcli con up static-lab

# 5. Verify
ip addr show $IFACE
