[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 10: Linux File Systems Management

## Topics Covered
- Identifying File Systems
- Partitioning Tools (`fdisk`, `gdisk`)
- Creating File Systems (`mkfs`)
- Mounting and Unmounting
- The `/etc/fstab` file

---

## 1. Storage Layers
Linux storage management involves layers:
1.  **Physical Device:** The hard drive (`/dev/sda`).
2.  **Partition:** Logic section of the drive (`/dev/sda1`).
3.  **File System:** The method of storing files (metadata, inodes).
4.  **Mount Point:** The directory where the filesystem is attached (`/mnt/data`).

## 2. Partitioning Tools
These tools modify the Partition Table (MBR or GPT).

- **fdisk:**
    - Legacy tool. Supports MBR well.
    - Interactive menu (m=menu, n=new, p=print, w=write).
- **gdisk:**
    - Modern tool. Supports GPT.
    - Similar interface to fdisk.
- **parted:**
    - Advanced, scriptable tool.

## 3. File Systems (Formatting)
Without a filesystem, a partition is just raw magnetic/flash space.

- **EXT4 (Fourth Extended Filesystem):**
    - The standard for years. Stable, reliable.
    - Default for older distributions.
- **XFS (X File System):**
    - Default for RHEL 7/8/9.
    - High performance for large files and parallel operations.
    - *Note:* XFS cannot be shrunk (reduced in size), only grown.

## 4. Mounting & Persistence
**Mounting** is attaching the device to the directory tree.
- Temporary: `mount /dev/sdb1 /directory`

**Persistence (`/etc/fstab`)**
To make mounts survive a reboot, edit the File System Table.
**Format:**
`UUID=...  /mountpoint  filesystem  defaults  0  0`

*Critical:* Always run `mount -a` after editing fstab to check for errors. If fstab is broken, the system may not boot!
