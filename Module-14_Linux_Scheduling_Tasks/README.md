[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 14: Linux Scheduling Tasks

## Topics Covered
- Introduction to Linux Scheduling
- Schedule tasks using `cron`
- Syntax for the crontab command
- User vs System Cron

---

## 1. What is Cron?
**Cron** is a time-based job scheduler in Unix-like computer operating systems. Users use cron to schedule jobs (commands or scripts) to run periodically at fixed times, dates, or intervals.

- **Daemon:** `crond`
- **Tables:** `crontab` (files where schedules are written).

## 2. Crontab Syntax
A cron job consists of 6 fields.

```text
  *    *    *    *    *   command to be executed
  -    -    -    -    -
  |    |    |    |    |
  |    |    |    |    +----- Day of Week (0 - 7) (Sunday=0 or 7)
  |    |    |    +---------- Month (1 - 12)
  |    |    +--------------- Day of Month (1 - 31)
  |    +-------------------- Hour (0 - 23)
  +------------------------- Minute (0 - 59)
```

**Common Examples:**
- `* * * * * cmd` -> Run every minute.
- `0 0 * * * cmd` -> Run daily at midnight.
- `0 4 * * 1 cmd` -> Run every Monday at 4:00 AM.
- `*/5 * * * * cmd` -> Run every 5 minutes.

## 3. Management Commands
- `crontab -e`: Edit your crontab.
- `crontab -l`: List your jobs.
- `crontab -r`: Remove all jobs.

## 4. System Schedules
- `/etc/crontab`: System-wide cron (has an extra 'user' field).
- `/etc/cron.daily/`: Place scripts here to run daily (handled by Anacron).
