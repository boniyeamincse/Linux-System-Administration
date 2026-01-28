#!/bin/bash
# Solution for Lab 10: File Systems
# WARNING: This script assumes /dev/sdb exists and is empty!
# Modify lines below to match your environment.

DISK="/dev/sdb"

# 1. Create Partition (Non-interactive)
echo -e "n\np\n1\n\n+1G\nw" | fdisk $DISK

# 2. Refresh partition table
partprobe

# 3. Format
mkfs.ext4 ${DISK}1

# 4. Create Mount Point
mkdir -p /mnt/storage

# 5. Mount
mount ${DISK}1 /mnt/storage

# 6. Persist (Backup fstab first)
cp /etc/fstab /etc/fstab.bak
echo "${DISK}1  /mnt/storage  ext4  defaults  0 0" >> /etc/fstab

# Verify
df -h /mnt/storage
