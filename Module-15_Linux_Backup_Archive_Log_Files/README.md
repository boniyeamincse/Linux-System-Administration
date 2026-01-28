[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 15: Linux Backup, Archive, Log Files

## Topics Covered
- Why need backup & Archives?
- `tar` Archive tool
- Compression (`gzip`, `bzip2`, `xz`)
- Transfer Files (`scp`, `rsync`)
- System Logs Architecture

---

## 1. Archiving vs Compression
- **Archiving (tar):** Grouping many files into one single file (tarball). Does NOT save space.
- **Compression (gzip):** Reading a file and using math to make it smaller.

**TAR (Tape ARchive) Flags:**
- `-c`: Create.
- `-x`: Extract.
- `-v`: Verbose (show files).
- `-f`: File name (Must be last).
- `-z`: Use Gzip.

*Usage:* `tar -czvf backup.tar.gz /home/user`

## 2. Remote Synchronization (`rsync`)
Rsync is better than SCP for backups because it is **incremental**. It checks differences and only sends changed parts of files.

- `rsync -av source/ dest/`
    - `-a`: Archive mode (preserves permissions, timestamps, owner).
    - `-v`: Verbose.

## 3. Linux Logs
Logs are the first place to check when troubleshooting.
**Location:** `/var/log/`

- `/var/log/messages` or `syslog`: General system events.
- `/var/log/secure` or `auth.log`: Authentication (SSH logins, sudo).
- `/var/log/dmesg`: Kernel ring buffer (boot messages).

**Systemd Journal:**
Modern systems use `systemd-journald` processing binary logs.
- `journalctl`
- `journalctl -u sshd` (Show logs for SSH service).
- `journalctl --since "1 hour ago"`
