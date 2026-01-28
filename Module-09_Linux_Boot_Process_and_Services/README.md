[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 09: Linux Boot, Process and Services

## Topics Covered
- Linux Booting Procedures
- GRUB2 Boot loader
- Managing Services (`systemd`)
- Boot Targets (Runlevels)
- Root Password Recovery

---

## 1. The Boot Process
Understanding how Linux starts is crucial for troubleshooting.

**Flow:**
1.  **BIOS/UEFI:** Hardware check (POST), loads Bootloader.
2.  **MBR/GPT:** Finds the boot partition.
3.  **GRUB2 (Grand Unified Bootloader):** Displays the menu, loads the Kernel.
    - Config file: `/boot/grub2/grub.cfg`
4.  **Kernel:** Initializes hardware, mounts root filesystem, starts PID 1 (`systemd`).
5.  **Systemd:** Starts all other services (Network, GUI, SSH) in parallel.

## 2. Systemd & Systemctl
`Systemd` is the modern Service Manager for RHEL/CentOS 7+ and Ubuntu 16.04+.

### Service States
- **loaded:** Unit file is processed.
- **active (running):** Service is currently running.
- **enabled:** Will start automatically at boot.
- **disabled:** Will NOT start at boot.

### Common Commands
- `systemctl status httpd`: Check status.
- `systemctl start/stop/restart httpd`: Control state.
- `systemctl enable/disable httpd`: Control boot behavior.

## 3. Boot Targets (Runlevels)
Instead of old "Runlevels" (0-6), Systemd uses "Targets".
- **poweroff.target** (Runlevel 0): Shutdown.
- **multi-user.target** (Runlevel 3): Text mode, multiple users, networking (Server default).
- **graphical.target** (Runlevel 5): GUI (Desktop default).
- **reboot.target** (Runlevel 6): Reboot.

*Command:* `systemctl set-default multi-user.target`
