[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 11: Linux Network Management (IPv4)

## Topics Covered
- Networking Concepts (IP, DNS, Gateway)
- Network Interface Naming
- NetworkManager Service
- `nmcli` and `nmtui` Tools

---

## 1. Networking Concepts
- **IPv4 Address:** Unique ID of the host (e.g., 192.168.1.10).
- **Subnet Mask:** Defines the network size (e.g., 255.255.255.0 or /24).
- **Gateway:** The router that connects you to other networks (Internet).
- **DNS (Domain Name System):** Translates names (google.com) to IPs (8.8.8.8).

## 2. Interface Naming
Old Linux used `eth0`, `eth1`. Modern Linux uses **Predictable Network Interface Names**:
- `eno1`: Onboard (Embedded)
- `ens33`: PCI slot specific (Common in VMware)
- `wlp2s0`: Wireless

## 3. NetworkManager
**NetworkManager** is the daemon that manages connections.
- **Connection:** The logical configuration (Profile).
- **Device:** The physical card.
*Concept:* A "Device" can have multiple "Connection" profiles, but only one is active at a time.

## 4. `nmcli` (Network Manager Command Line)
This is the primary tool for RHEL/CentOS.

**Syntax:**
```bash
# Show status
nmcli device status

# Show profiles
nmcli connection show

# Add Static IP
nmcli con add con-name "MyStatic" ifname ens33 type ethernet \
  ip4 192.168.1.50/24 gw4 192.168.1.1 ipv4.dns "8.8.8.8"

# Activate
nmcli con up "MyStatic"
```

## 5. Hostname & Resolution
- **Hostname:** The name of your computer.
    - Set with: `hostnamectl set-hostname name`
- **Resolution file:** `/etc/hosts` (Local map) and `/etc/resolv.conf` (DNS list).
