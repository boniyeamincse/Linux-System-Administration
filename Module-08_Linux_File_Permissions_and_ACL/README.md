[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 08: Linux File Permissions and ACL

## Topics Covered
- Ownership (`chown`)
- Permissions (`chmod`)
- Absolute Mode (Octal)
- Symbolic Mode
- Access Control Lists (ACL)

---

## 1. Permissions and Ownership
Now that we have gone through how to create users and groups, let's see how to apply permissions to them on files, directories, and sudo commands.

### Ownership (`chown`)
The `chown` command allows you to change the user and/or group ownership of a given file or directory.

```bash
# User ownership of a file
chown user2 file1

# Group ownership of a file
chown :group1 file1

# User and group at the same time
chown user2:group1 file2

# Recursive (adding -R will execute recursively)
chown -R user1:group1 Resources

# Change the group ownership of a file (common for web servers)
chown :www-data file1
```

## 2. Permissions (`chmod`)
The `chmod` (change mode) sets the permissions accordingly. The syntax is: `chmod permissions resource-name`.
You can check permissions using `ls -l` (or alias `ll` if configured).

**Example:**
```bash
# Absolute mode
chmod 740 file2

# Symbolic mode
chmod u=rwx,g=r,o-rwx file2

# Recursive flag
chmod -R 744 Resources
```

### Absolute Mode (Octal)
Sometimes referred to as octal or numeric, each access level has a value.

| Access Level | Octal Value |
| :--- | :--- |
| **Read** | 4 |
| **Write** | 2 |
| **Execute** | 1 |

**Permissions Calculation:**
To get **7** (Read+Write+Execute) -> 4 + 2 + 1 = 7.
To get **5** (Read+Execute) -> 4 + 0 + 1 = 5.

**The Position:**
| Identity | Position |
| :--- | :--- |
| **User** | First |
| **Group** | Middle |
| **Others** | Last |

*Example:* `chmod 740 file2`
- **User (7):** Read (4) + Write (2) + Execute (1).
- **Group (4):** Read (4).
- **Others (0):** No Access.

### Symbolic Mode
Symbolic mode uses symbols to make it easier to understand.

**Symbols:**
- **r** = Read
- **w** = Write
- **x** = Execute
- **u** = User / **g** = Group / **o** = Others

**Operators:**
- `+`: Grant access
- `-`: Remove access
- `=`: Set exact access

**Examples:**
```bash
# Remove read permission of others on a file
chmod o-r file1

# Grant read and write permission of a group
chmod g+rw file1

# Everything together recursive
chmod -R u=rwx,g+rw,o-rwx mydirectory
```
