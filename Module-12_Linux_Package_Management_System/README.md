[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 12: Linux Package Management System

## Topics Covered
- RPM vs DEB Packages
- Dependency Management
- Repositories (Repo)
- Commands: `rpm`, `dnf`/`yum`, `apt`

---

## 1. Package Concepts
In Windows, you download an `.exe` installer. In Linux, we use centralized repositories.

- **Source Code:** Human-readable text. Requires compiling (make, gcc).
- **Binary Package:** Pre-compiled code ready to run.
    - **RPM (.rpm):** Red Hat Package Manager (RHEL, CentOS, Fedora).
    - **DEB (.deb):** Debian Package (Debian, Ubuntu, Mint).

## 2. "Dependency Hell"
In the old days, installing Package A required Package B. If you tried to install A, it would fail.
**High-Level Package Managers** (yum, dnf, apt) solve this. They automatically look up dependencies, download them, and install them for you.

## 3. RHEL Package Management (`dnf`)
`dnf` (Dandified YUM) is the modern replacement for `yum`.
- Conf Files: `/etc/yum.repos.d/*.repo`

**Commands:**
- `dnf install httpd`: Download and install.
- `dnf update`: Update all packages.
- `dnf history`: View/Undo transactions.
- `dnf list installed`: What is on my system?
- `dnf search keyword`: Find software.

## 4. Ubuntu Package Management (`apt`)
Advanced Package Tool.
- Conf File: `/etc/apt/sources.list`

**Commands:**
- `apt update`: Refresh the metadata list (Check for new versions).
- `apt upgrade`: Apply specific updates.
- `apt install apache2`: Install.
- `apt purge package`: Remove package AND config files.
