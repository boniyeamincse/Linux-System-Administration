# Module 03: Linux Installation & Basic Configure

## Topics Covered
- Introduction Virtualization Technology
- Installation of Linux on VMware Workstation
- Install Linux instance of AWS cloud
- Configure BIOS/UEFI options for OS booting
- Linux Installation Method (MBR and GPT)
- Partitioning: /, /boot, /home, swap
- Configure Post installation on Linux System

## Installation Guide (Summary)
1. Boot from ISO.
2. Language Selection: English.
3. **Partitioning**:
   - `/boot` (1GB) - ext4/xfs
   - `swap` (Double RAM or 4GB)
   - `/` (Root) - Remaining space - ext4/xfs
4. **Network**: Maintain default or set Hostname.
5. Create User: Set username and strong password. Make sure to check "Make this user administrator" (sudo).
