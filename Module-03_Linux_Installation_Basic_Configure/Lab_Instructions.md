[< Back to Module Notes](./README.md) | [< Back to Course Outline](../README.md)

# Lab 03: Installing Linux

## Scenario
Install a fresh copy of Linux on your virtual machine.

## Steps
1.  **Boot Phase**: Power on the VM with the ISO attached. Select "Install Linux".
2.  **Language**: Choose English.
3.  **Software Selection**: Choose "Server with GUI" (for beginners) or "Minimal Install" (for advanced).
4.  **Partitioning Task**:
    - Create a custom partition layout.
    - Mount `/boot` (500MB - 1GB).
    - Mount `swap` (2GB).
    - Mount `/` (Root) with the rest.
5.  **User Setup**:
    - Root Password: `Password123!` (Example only).
    - User: `adminuser`
    - Password: `Password123!`
6.  **Finish**: Reboot and Login.

## Post-Install Check
1.  Open Terminal.
2.  Run `df -h` to check partitions.
3.  Run `ping google.com` to check network.

