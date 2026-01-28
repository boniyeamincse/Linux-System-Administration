#!/bin/bash
# Solution for Lab 15: Backup

# 1. Create Tar
tar -cvf etc_backup.tar /etc 2>/dev/null

# 2. Compress
gzip -k etc_backup.tar

# 3. Compare
ls -lh etc_backup.tar etc_backup.tar.gz

# 4. Rsync
mkdir -p ~/Documents
touch ~/Documents/doc1.txt
rsync -av ~/Documents/ /tmp/backup_docs/

# 5. Logs (-p 3 shows errors and higher)
journalctl -b -p 3
