[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 13: Configuring OpenSSH Service

## Topics Covered
- Secure Shell (SSH) Concepts
- Public/Private Key Authentication
- Configuring `/etc/ssh/sshd_config`
- Restricting Root Login
- Changing Default Port

---

## 1. What is SSH?
**SSH (Secure Shell)** is a cryptographic network protocol for operating network services securely over an unsecured network. It replaces insecure tools like Telnet and FTP.

**Features:**
- **Encryption:** Traffic is unreadable if intercepted.
- **Authentication:** Verifies the identity of the user and host.
- **Port Forwarding:** Can tunnel other protocols.

## 2. Authentication Methods
1.  **Password:** Standard username/password. Vulnerable to Brute Force.
2.  **Key-Based:** Uses Asymmetric Encryption (RSA/ED25519).
    - **Private Key:** Kept secret on your laptop (`id_rsa`).
    - **Public Key:** Placed on the server (`authorized_keys`).
    - *Concept:* The server sends a challenge encrypted with the Public key. Only the Private key can decrypt it.

## 3. Configuration (`/etc/ssh/sshd_config`)
This is the main config file. **Always reload sshd after changes.**

**Security Best Practices:**
- `PermitRootLogin no`: prevents root from logging in remotely. Attackers guess root first.
- `PasswordAuthentication no`: Forces key-based login.
- `Port 2222`: "Security by Obscurity". Reduces noise from automated bots scanning port 22.
- `AllowUsers user1`: Only specific users can login.

## 4. SSH Client Commands
- `ssh user@host`: Connect.
- `ssh -p 2222 user@host`: Connect to custom port.
- `scp file user@host:/tmp`: Secure Copy.
- `ssh-keygen`: Generate keys.
- `ssh-copy-id`: Upload key to server.
