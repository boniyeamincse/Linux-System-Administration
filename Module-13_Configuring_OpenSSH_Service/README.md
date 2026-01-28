[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 13: Configuring OpenSSH Service

## Topics Covered
- Secure Shell (SSH) Concepts
- Public/Private Key Authentication
- Configuring `/etc/ssh/sshd_config`
- Restricting Root Login
- Changing Default Port

## Key Configuration
File: `/etc/ssh/sshd_config`
- `PermitRootLogin no`: Disables root login.
- `PasswordAuthentication no`: Forces key-based auth.
- `Port 2222`: Changes default port.
- Restart service: `systemctl restart sshd`

