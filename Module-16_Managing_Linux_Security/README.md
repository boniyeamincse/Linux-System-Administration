[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 16: Managing Linux Security

## Topics Covered
- Linux System Security Overview
- Firewalls (`firewalld` vs `iptables`)
- Firewall Zones
- SELinux (Security Enhanced Linux)

---

## 1. FirewallD Concepts
FirewallD is a dynamic firewall manager. It uses **Zones** to define trust levels for network connections.

| Zone | Trust Level | Default Behavior |
| :--- | :--- | :--- |
| **drop** | Lowest | Drop everything. No reply. |
| **public** | Low | Allow only selected ports (ssh, dhcp). |
| **trusted** | High | Allow all traffic. |

## 2. Managing Firewall Rules
We can manage Runtime (temporary) or Permanent rules.

**Commands:**
- `firewall-cmd --get-active-zones`
- `firewall-cmd --add-service=https` (Runtime: lost on reboot).
- `firewall-cmd --permanent --add-service=https` (Saved to config).
- `firewall-cmd --reload` (Apply permanent changes).

## 3. SELinux (Security Enhanced Linux)
SELinux provides Mandatory Access Control (MAC). Even if permissions (777) say "Yes", SELinux can say "No".

**Modes:**
1.  **Enforcing:** Blocks access and logs it. (Secure).
2.  **Permissive:** Allows access but logs it. (Debugging).
3.  **Disabled:** Turned off.

**Contexts:** Labels on files (`user:role:type:level`).
*Example:* Apache can only read files labeled `httpd_sys_content_t`.
