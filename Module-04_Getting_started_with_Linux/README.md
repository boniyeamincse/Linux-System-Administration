[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 04: Getting started with Linux

## Topics Covered
- The GNOME Desktop Environment
- Working with terminal and command console
- Linux Command Syntax, Options, Arguments
- Linux Directory & File System introduction
- Navigating Linux Directory Paths (`cd`, `pwd`, `ls`)
- Command-line File & Directory Management

---

## 1. CLI vs GUI
- **GUI (Graphical User Interface):** GNOME, KDE. Friendly, uses mouse. High resource usage.
- **CLI (Command Line Interface):** Terminal, Shell. Powerful, uses keyboard. Low resource usage.
- **Virtual Consoles:** Linux usually runs 6 TTYs (Teletypewriters).
    - `Ctrl+Alt+F1` (GUI login screen)
    - `Ctrl+Alt+F2` to `F6` (Command line login)

## 2. Command Syntax
The structure of a Linux command is:
```text
Command      Options      Arguments
  ls           -l          /home
  |             |             |
Action      Modifier      Target
```

## 3. The File System Tree
Understanding Absolute vs Relative paths is crucial.

```text
/ (Root)
 ├── bin/ (Essential User Binaries: ls, cp)
 ├── sbin/ (System Binaries: reboot, fdisk)
 ├── etc/ (Configuration: /etc/passwd)
 └── home/ (Users)
      ├── alice/
      └── bob/
           └── Documents/
```

- **Absolute Path:** Starts from root `/`. e.g., `/home/bob/file.txt`. Always works, regardless of where you are.
- **Relative Path:** Starts from current directory. e.g., `Documents/file.txt`. Depends on your `pwd`.

## 4. Key Management Commands

| Command | Definition | Syntax Example |
| :--- | :--- | :--- |
| `pwd` | Print Working Directory | `pwd` |
| `cd` | Change Directory | `cd /var/log` |
| `ls` | List Contents | `ls -lh` (Long listing, Human readable) |
| `mkdir` | Make Directory | `mkdir -p project/src` (Parent flag) |
| `cp` | Copy | `cp -r sourcedir destdir` (Recursive) |
| `mv` | Move or Rename | `mv old.txt new.txt` |
| `rm` | Remove | `rm -rf foldername` (Recursive, Force - DANGEROUS) |
