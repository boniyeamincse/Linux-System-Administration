#!/bin/bash
# Solution for Lab 04: File System Management

# 1. Check current directory
pwd

# 2. Create directory
mkdir Training_Lab

# 3. Navigate into it
cd Training_Lab

# 4. Create files
touch file1.txt file2.txt file3.txt

# 5. List files
ls -l

# 6. Create subdirectory
mkdir Backup

# 7. Copy file
cp file1.txt Backup/

# 8. Rename file
mv file2.txt notes.txt

# 9. Delete file
rm file3.txt

# Verify contents
echo "Listing contents of Training_Lab:"
ls -R

# 10. Clean up (Optional, commented out for safety)
# cd ..
# rm -rf Training_Lab
