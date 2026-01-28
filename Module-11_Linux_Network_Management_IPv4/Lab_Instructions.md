[< Back to Module Notes](./README.md) | [< Back to Course Outline](../README.md)

# Lab 11: Networking Configuration

## Objective
Configure a static IP address and hostname.

## Tasks
1.  Check your current IP address.
2.  Set the system hostname to `server1.lab.local`.
3.  Use `nmcli` to add a new connection named `static-lab`.
4.  Configure `static-lab` with:
    - IP: 192.168.100.10/24
    - Gateway: 192.168.100.1
    - DNS: 8.8.8.8
5.  Bring up the new connection.
6.  Verify the new IP.

