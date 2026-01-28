# Module 11: Linux Network Management (IPv4)

## Topics Covered
- Network Interface Names (ens33, eth0)
- `nmcli` (NetworkManager Command Line Interface)
- `nmtui` (Text User Interface)
- Hostname Configuration (`hostnamectl`)
- DNS Configuration (`/etc/resolv.conf`)

## Common Commands
- `ip addr`: Show IP addresses.
- `nmcli connection show`: Show connections.
- `nmcli con add type ethernet ifname eth0 ...`: Add connection.
- `nmcli con mod "conn-name" ipv4.addresses ...`: Modify connection.
