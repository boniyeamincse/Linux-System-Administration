#!/bin/bash
# Solution for Lab 08: Permissions
# Run as root

# 1. Create directory
mkdir -p /data/project

# 2. Change group
chown :sales /data/project

# 3. Set permissions 770
chmod 770 /data/project

# 4. Set SGID (2770)
chmod g+s /data/project
# Or: chmod 2770 /data/project

# 5. Create file
touch /data/project/confidential.txt

# 6. ACL for john (assuming john exists)
setfacl -m u:john:r /data/project/confidential.txt

# Verify
ls -ld /data/project
getfacl /data/project/confidential.txt
