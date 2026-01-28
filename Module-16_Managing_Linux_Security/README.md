# Module 16: Managing Linux Security

## Topics Covered
- Firewall Concepts
- `firewalld` (RHEL) vs `ufw` (Ubuntu)
- Firewall Zones (public, home, work)
- Service/Port Filtering
- SELinux (Enforcing, Permissive, Disabled)

## Commands
- `firewall-cmd --get-active-zones`
- `firewall-cmd --add-service=http --permanent`
- `firewall-cmd --reload`
- `getenforce` (Check SELinux)
