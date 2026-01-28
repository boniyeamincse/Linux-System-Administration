# Lab 10: Partitions and Mounts

## Objective
Add storage to your system and make it usable.
*Note: This lab requires a second virtual hard disk or unused space.*

## Tasks
1.  Identify the new disk (`lsblk`).
2.  Create a 1GB primary partition on the new disk using `fdisk`.
3.  Format the partition with the `ext4` filesystem.
4.  Create a directory `/mnt/storage`.
5.  Mount the new partition to `/mnt/storage`.
6.  Verify it is mounted.
7.  Add an entry to `/etc/fstab` so it mounts automatically on reboot.
