# Lab 15: Backup and Logs

## Objective
Archive files and analyze system logs.

## Tasks
1.  Create a tarball of your `/etc` directory named `etc_backup.tar`.
2.  Compress it using gzip to create `etc_backup.tar.gz`.
3.  Compare the sizes of the .tar and .tar.gz files.
4.  Use `rsync` to sync your home directory `Documents` folder to `/tmp/backup_docs`.
5.  Use `journalctl` to find error messages from the last boot.
