#!/bin/bash
# Solution for Lab 14: Scheduling

# 1. Create Script
cat <<EOF > ~/backup_logs.sh
#!/bin/bash
cp /var/log/syslog ~/log_backup_\$(date +%F_%H-%M).log
EOF

# 2. Make executable
chmod +x ~/backup_logs.sh

# 3. Add to Crontab
# (echoing into crontab is tricky, safer to use crontab -l | cat)
(crontab -l 2>/dev/null; echo "*/5 * * * * ~/backup_logs.sh") | crontab -

# 4. Show jobs
crontab -l
