#!/bin/bash
# Solution for Module 01 Lab

# 1. Check Kernel Version
echo "Kernel Version:"
uname -r

# 2. Check OS Distribution
echo "OS Distribution:"
cat /etc/os-release

# 3. Check Memory (RAM)
echo "Memory Info:"
free -h

# 4. CPU Info
echo "CPU Info:"
lscpu | head -n 10
