[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 07: User and Group Administration

## Topics Covered
- Users and Groups Introduction
- Programmatic Access Concepts
- `/etc/passwd`, `/etc/shadow`, `/etc/group`
- Managing User Accounts (`useradd`)
- Managing Group Accounts (`groupadd`)
- Modifying Users (`usermod`)

---

## 1. Introduction: Why Users and Groups?
Usually, you will have a Linux server lying around and at one moment you’ll want to add access to another person so they can read/update/upload files to a specific directory. You wouldn’t want to allow that user to touch anything outside of `/home/my-web-server/` directory or execute some system commands on the server itself. That’s where roles, permissions, and groups come in.

### Programmatic Access
In cases when you need programmatic access to your server, like a CI/CD runner, it’s also a best practice to have **minimal access** for that user, allowing it to do only the things it needs, nothing more. If the credentials leak, there is a permission limitation as to what the user can do.

## 2. Managing Users
When creating users they must always be assigned to a primary group. If you don’t assign them a group, a group will be created for them with the same name.

**Basic Commands:**
```bash
# Create user john, note that it will be assigned a unique id
sudo useradd john

# Get the id of john
id john
# Output: uid=1005(john) gid=1005(john) groups=1005(john)

# Create user john with specific ID
sudo useradd -g 1009 john 

# Create user john with primary group 'users' and secondary groups 'wheel' and 'docker'
sudo useradd -g users -G wheel,docker john
```
*Note: The command adds an entry to the `/etc/passwd`, `/etc/shadow`, `/etc/group`, and `/etc/gshadow` files.*

### Useradd Options Table
| Option | Description | Example |
| :--- | :--- | :--- |
| `-g` | Specifies the primary group | `useradd -g users john` |
| `-G` | Adds the user to additional groups | `useradd -G sudo,admin john` |
| `-u` | Specifies the user ID | `useradd -u 1001 john` |
| `-e` | Sets the account expiration date | `useradd -e 2022-12-31 john` |
| `-m` | Creates the user home directory `/home/john/` | `useradd -m john` |
| `-d` | Specifies home directory of user | `useradd -m -d /opt/john john` |
| `-c` | Add comment to the created user | `useradd -c "Test User" john` |
| `-r` | Creates system user | `useradd -r john` |

### Setting Passwords
To be able to log in as the newly created user, you need to set the user password.
```bash
sudo passwd john
```
*Output:*
```text
Changing password for user john.
New password:
Retype new password:
passwd: all authentication tokens updated successfully.
```

## 3. Managing Groups
Sometimes it’s easier to manage multiple users with same permissions through a group as all users assigned to that group will share its permissions.

**Group Commands:**
```bash
# Create a group standard
groupadd standard

# Create group with specific ID
groupadd -g 1009 standard1

# Renaming a group
groupmod -n test standard1

# Add user to a group (Append mode)
usermod -aG standard user2

# Check user groups
id user1
# Output: uid=1005(user1) gid=1005(user1) groups=100(users),1009(standard1)

# Remove a specific user from a group
gpasswd --delete user1 standard1

# Delete a group
groupdel standard1
```

## 4. Viewing Users
To see all users in the system you can read the passwd file:
```bash
cat /etc/passwd
```
