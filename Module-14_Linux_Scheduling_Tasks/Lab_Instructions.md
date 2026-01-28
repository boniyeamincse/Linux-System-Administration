[< Back to Module Notes](./README.md) | [< Back to Course Outline](../README.md)

# Lab 14: Crontab

## Objective
Schedule automated tasks.

## Tasks
1.  Create a script `backup_logs.sh` that copies `/var/log/messages` (or syslog) to your home directory with a timestamp.
2.  Make the script executable.
3.  Open your crontab (`crontab -e`).
4.  Add a job to run this script every 5 minutes.
5.  Verify the job runs by checking your home directory after 5 minutes.

