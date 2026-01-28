[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 07: User and Group Administration

## Topics Covered
- Users and Groups Introduction
- Unix User Database Files
- Primary Groups and Supplementary Groups
- Gaining Super user Access (`sudo`)
- Managing User and Group Accounts

---

## 1. User Types
Linux is a multi-user system.
1.  **Root (UID 0):** The superuser. Has unlimited power.
2.  **System Users (UID 1-999):** Run background services (apache, sshd). Nologin shell.
3.  **Regular Users (UID 1000+):** Human users like you.

## 2. The Database Files
User information is stored in plain text files.

### `/etc/passwd` (User Info)
Format:
`username:x:UID:GID:Comment:HomeDirectory:Shell`
*Example:* `john:x:1001:1001:John Doe:/home/john:/bin/bash`
- `x`: Password place holder (stored in shadow).

### `/etc/shadow` (Secure Passwords)
Stores the hashed password and aging info. Only readable by root.

### `/etc/group` (Group Info)
Format: `groupname:x:GID:members`

## 3. User Management Commands

| Command | Action | Example |
| :--- | :--- | :--- |
| `useradd` | Create user | `useradd -m -s /bin/bash karen` |
| `passwd` | Set password | `passwd karen` |
| `usermod` | Modify user | `usermod -aG wheel karen` (Add to group) |
| `userdel` | Delete user | `userdel -r karen` (Remove home dir) |
| `groupadd` | Create group | `groupadd engineers` |

## 4. Sudo (SuperUser DO)
Allows regular users to run commands with root privileges.
- file: `/etc/sudoers`
- Command `visudo` is used to edit this file safely.
- **Rule Syntax:** `user  host=(run_as)  commands`
  - `root    ALL=(ALL)       ALL`
