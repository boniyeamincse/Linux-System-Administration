#!/bin/bash
# Solution for Lab 07: User Administration
# NOTE: Must be run as root (use sudo)

# 1. Create group
groupadd sales

# 2. Create user john
useradd -m john

# 3. Set password (non-interactive example)
echo "john:Password123" | chpasswd

# 4. Add john to sales
usermod -aG sales john

# 5. Create sarah with primary group sales
useradd -m -g sales sarah
echo "sarah:Password123" | chpasswd

# 6. Verify
id john
id sarah

# 7. Lock account
usermod -L john
# (Unlock with usermod -U john)
