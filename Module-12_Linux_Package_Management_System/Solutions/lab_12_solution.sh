#!/bin/bash
# Solution for Lab 12: Package Management

# Detect OS
if [ -f /etc/redhat-release ]; then
    CMD="dnf"
else
    CMD="apt"
fi

# 1. Update
$CMD update -y

# 2. Install Tools
$CMD install -y wget git

# 3. Install browser
$CMD install -y elinks

# 4. Remove wget
$CMD remove -y wget

# 5. Search
if [ "$CMD" == "dnf" ]; then
    dnf search nmap
else
    apt search nmap
fi
