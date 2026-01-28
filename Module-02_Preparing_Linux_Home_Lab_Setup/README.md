[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 02: Preparing Linux Home Lab Setup

## Topics Covered
- Planning a Linux OS Installation
- System Requirements & Capabilities
- Download RHEL/CentOS/Ubuntu OS
- Preparing Installation Media (DVD/ISO/USB)
- Linux Installation Method (MBR & GPT)
- Required Partitions for Linux Installation
- Linux Lab Setup Concept (Virtual & Physical)
- Building Home Lab using VMware Workstation

---

## 1. Virtualization Concepts
To learn Linux safely, we use **Virtualization**. This allows you to run a "Guest" Operating System (Linux) inside your current "Host" Operating System (Windows).

### Virtualization Architecture
```text
+-------------------------------------------------+
|               Guest OS (Linux VM)               |
+-------------------------------------------------+
|             Hypervisor (VMware/VBox)            |
+-------------------------------------------------+
|               Host OS (Windows 10/11)           |
+-------------------------------------------------+
|               Physical Hardware (PC)            |
+-------------------------------------------------+
```
- **Hypervisor Type 2:** Runs as an application on top of an OS (e.g., VMware Workstation, VirtualBox). Best for learning.
- **Hypervisor Type 1:** Runs directly on hardware (e.g., ESXi, Proxmox). Best for production servers.

## 2. Planning the Installation
Before installing, you must verify resources.
- **CPU:** Virtualization Technology (VT-x/AMD-V) must be enabled in BIOS.
- **RAM:** Linux Server GUI needs ~2GB-4GB. Minimal Server needs ~1GB.
- **Storage:** Dynamic Disks allow you to over-provision.

## 3. Installation Methods: MBR vs GPT
When setting up the disk, you choose a Partition Table format.

| Feature | MBR (Master Boot Record) | GPT (GUID Partition Table) |
| :--- | :--- | :--- |
| **Compatibility** | Legacy BIOS | UEFI (Modern) |
| **Max Partitions** | 4 Primary | 128 Primary |
| **Max Disk Size** | 2 TB | 9.4 ZB (Zettabytes) |
| **Security** | None | Secure Boot Supported |

**Recommendation:** Always use **GPT/UEFI** for modern systems.

## 4. Required Partitions
A standard Linux installation generally requires specific partitions:
1.  `/boot` (or `/boot/efi` for UEFI): Holds the Kernel and Bootloader.
2.  `/` (Root): The main container for all files.
3.  `swap`: Virtual memory used when RAM is full.
    *   *Rule of Thumb:* Swap = 1x RAM (if RAM < 8GB), 4GB (if RAM > 8GB).
