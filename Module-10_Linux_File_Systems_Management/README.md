[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 10: Linux File Systems Management

## Topics Covered
- Managing MBR Partitions with `fdisk`
- Managing GPT Partitions with `gdisk`
- Creating File System (`mkfs.ext4`, `mkfs.xfs`)
- Mounting and Un-mounting (`mount`, `umount`)
- `/etc/fstab` file details for persistent mounting

## Workflow
1.  Partition Disk: `fdisk /dev/sdb`
2.  Format Partition: `mkfs.xfs /dev/sdb1`
3.  Create Mount Point: `mkdir /data`
4.  Mount: `mount /dev/sdb1 /data`
5.  Persist: Add entry to `/etc/fstab`

