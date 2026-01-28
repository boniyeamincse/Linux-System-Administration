[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 08: Linux File Permissions and ACL

## Topics Covered
- Linux standard file permissions (r=4, w=2, x=1)
- Viewing Permissions (`ls -l`)
- Changing Permissions (`chmod`)
- Changing Ownership (`chown`)
- Special Permissions:
  - **SUID**: Run as owner.
  - **SGID**: Inherit group ownership.
  - **Sticky Bit**: Only owner can delete (e.g., /tmp).
- Access Control Lists (ACLs) (`getfacl`, `setfacl`)

## Permission Table
| Digit | Binary | Permission |
|-------|--------|------------|
| 7     | 111    | rwx        |
| 6     | 110    | rw-        |
| 5     | 101    | r-x        |
| 4     | 100    | r--        |

