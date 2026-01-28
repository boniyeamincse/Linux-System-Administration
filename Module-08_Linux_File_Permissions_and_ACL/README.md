[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 08: Linux File Permissions and ACL

## Topics Covered
- Standard file permissions (r, w, x)
- Changing Permissions (`chmod`) and Ownership (`chown`)
- Special Permissions (SUID, SGID, Sticky Bit)
- Access Control Lists (ACLs)

---

## 1. Standard Permissions
Linux permissions are defined for three categories: **User (u)**, **Group (g)**, and **Others (o)**.

### The Permission String: `-rwxr-xr--`
- **First char:** File type (`-` = file, `d` = directory, `l` = link).
- **Next 3:** User (Owner) permissions.
- **Next 3:** Group permissions.
- **Last 3:** Other (Everyone else) permissions.

### Numeric Mode (Octal)
| Permission | Symbol | Value |
| :--- | :--- | :--- |
| Read | **r** | 4 |
| Write | **w** | 2 |
| Execute | **x** | 1 |
| No Permission | **-** | 0 |

*Example:* `chmod 755 file`
- User: 4+2+1 = 7 (rwx)
- Group: 4+0+1 = 5 (r-x)
- Other: 4+0+1 = 5 (r-x)

## 2. Special Permissions
1.  **SUID (Set UID):** Appears as `s` in User execute.
    - *Effect:* Executable runs with privileges of the *file owner* (usually root), not the user running it. (e.g., `passwd` command).
2.  **SGID (Set GID):** Appears as `s` in Group execute.
    - *Effect on Dir:* New files inherit the *group ownership* of the directory. Useful for shared folders.
3.  **Sticky Bit:** Appears as `t` in Other execute.
    - *Effect:* Only the file owner (or root) can delete files in this directory. (e.g., `/tmp`).

## 3. Access Control Lists (ACL)
Standard permissions are limited (only one user, one group). ACLs allow fine-grained access.
- `getfacl filename`: View ACLs.
- `setfacl -m u:alice:rw filename`: Give user Alice read/write.
