#!/bin/bash
# Solution for Lab 05: Text Processing

# 1. List /etc and save
ls /etc > ~/etc_files.txt

# 2. Count lines (wc -l)
echo "Number of lines in etc_files.txt:"
wc -l ~/etc_files.txt

# 3. Head
echo "First 10 lines:"
head -n 10 ~/etc_files.txt

# 4. Tail (using dmesg as safe fallback)
echo "Last 5 lines of dmesg:"
tail -n 5 /var/log/dmesg

# 5. Grep for root
echo "Searching for root in /etc/passwd:"
grep "root" /etc/passwd

# 6. Find .log files
echo "Finding .log files in /var/log:"
find /var/log -name "*.log" 2>/dev/null
# (2>/dev/null hides permission denied errors)
