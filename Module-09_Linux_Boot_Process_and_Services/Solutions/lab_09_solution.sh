#!/bin/bash
# Solution for Lab 09: Services
# Run as root

# Determine package manager (dnf or apt)
if command -v dnf &> /dev/null; then
    PKG="httpd"
    CMD="dnf"
else
    PKG="apache2"
    CMD="apt-get"
fi

# 1. Install
$CMD install -y $PKG

# 2. Start
systemctl start $PKG

# 3. Enable
systemctl enable $PKG

# 4. Status
systemctl status $PKG --no-pager

# 5. Find PID
ps aux | grep $PKG

# 7. Top (interactive, so essentially just running it)
# top
