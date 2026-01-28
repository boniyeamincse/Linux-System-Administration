[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 03: Linux Installation & Basic Configure

## Topics Covered
- Introduction Virtualization Technology
- Installation of Linux on VMware Workstation
- Install Linux instance of AWS cloud
- Configure BIOS/UEFI options for OS booting
- Partitioning: /, /boot, /home, swap
- Configure Post installation on Linux System

---

## 1. The Installation Process
Installing Linux involves several critical stages. Whether on Ubuntu (Ubiquity/Subiquity) or RHEL (Anaconda), the steps are:

1.  **Boot Media Check:** Verifies the ISO integrity.
2.  **Language & Localization:** Sets keyboard layout.
3.  **Software Selection:**
    - **Server with GUI:** Good for beginners.
    - **Minimal Install:** Best for security and performance (no GUI bloat).
4.  **Partitioning (The most critical step).**

## 2. Partition Schemes

### The File System Hierarchy Standard (FHS)
Linux does not use drive letters (C:, D:). Everything starts at Root `/`.

```text
/ (Root)
├── boot/       (Kernels, Initramfs)
├── etc/        (Configuration Files)
├── home/       (User Personal Data)
├── var/        (Variable data: Logs, Web files)
├── usr/        (User Binaries - like Program Files)
└── tmp/        (Temporary files)
```

### Partitioning Recommendations
- **Automatic:** The installer erases the disk and handles layout (LVM is usually default).
- **Manual (Standard):**
    - Mount `/boot` -> 1GB (Ext4/XFS)
    - Mount `swap` -> 2GB-4GB
    - Mount `/` -> Remaining Space (Ext4/XFS)
- **Manual (LVM - Logical Volume Manager):**
    Allows resizing partitions later. Creates a Volume Group (VG) pool of storage.

## 3. Post-Installation Configuration
After the first reboot, immediate tasks include:
1.  **License Agreement:** (RHEL specific).
2.  **Network Config:** Ensure IP is assigned (`ip addr`).
3.  **Update System:**
    - Ubuntu: `sudo apt update && sudo apt upgrade`
    - RHEL: `sudo dnf update`
4.  **Hostname:** Set a unique name (`hostnamectl set-hostname server1`).
