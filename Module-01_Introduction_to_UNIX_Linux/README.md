[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Module 01: Introduction to UNIX & LINUX

## Topics Covered
- Introduction to Operating Systems
- Parts of Operating System
- OS Kernel and Shell Overview
- History of UNIX and LINUX
- Linux and GNU Project
- Why Linux Kernel based Operating System?
- Identification of various Linux distributions
- Introducing RHEL Distribution

---

## 1. Introduction to Operating Systems
An **Operating System (OS)** is system software that manages computer hardware, software resources, and provides common services for computer programs. It acts as an intermediary between the user of a computer and the computer hardware.

**Key Functions:**
- **Resource Management:** Manages CPU, Memory, Disk, and Network.
- **Process Management:** Handles the creation, scheduling, and termination of processes.
- **Storage Management:** Manages file systems and data storage.
- **Security:** Controls access to the system and resources.

## 2. Parts of Operating System
A typical Linux operating system consists of several layers:
1.  **Hardware:** The physical components (CPU, RAM, HDD, NIC).
2.  **Kernel:** The core component that interacts directly with the hardware.
3.  **Shell:** The interface that processes user requests and passes them to the kernel.
4.  **System Utilities:** Basic tools (cp, mv, cat) to perform tasks.
5.  **Application Software:** User programs (Web Browsers, Database Servers).

## 3. OS Kernel and Shell Overview

### The Kernel
The **Kernel** is the heart of the operating system. It allows software to interact with the underlying hardware.
- **Monolithic Kernel:** Linux uses a monolithic architecture where the entire operating system runs in kernel space (providing performance).
- **Functions:** Memory management, Process scheduling, Device drivers, System calls.

### The Shell
The **Shell** is a command-line interpreter that provides a user interface for the Unix-like operating systems. It gathers input from you and executes programs based on that input.
- **Common Shells:**
    - `bash` (Bourne Again SHell) - Default in most distros.
    - `sh` (Bourne Shell) - The original Unix shell.
    - `zsh` (Z Shell) - Feature-rich, interactive.
    - `csh` / `tcsh` - C-like syntax shells.

## 4. History of UNIX and LINUX

### UNIX (1969)
- Developed at **AT&T Bell Labs** by Ken Thompson, Dennis Ritchie, and others.
- Originally written in Assembly, later rewritten in **C** (which made it portable).
- Became the foundation for modern computing but was proprietary and expensive.

### LINUX (1991)
- Created by **Linus Torvalds**, a Finnish student from the University of Helsinki.
- He wanted a free, UNIX-like OS kernel for his 386 Intel personal computer.
- He announced it on the newsgroup `comp.os.minix`: *"I'm doing a (free) operating system (just a hobby, won't be big and professional like gnu)..."*

## 5. Linux and GNU Project

### The GNU Project (1983)
- Started by **Richard Stallman (RMS)**.
- **Goal:** To create a "free" (freedom) Unix-like operating system.
- **Contribution:** They built many tools: glibc, gcc, coreutils, text editors, but they lacked a working kernel (Hurd was incomplete).

### GNU + Linux
- When Linus released the Linux Kernel, the GNU project added their tools on top of it.
- **Result:** A complete Operating System.
- **Naming:** Ideally called **GNU/Linux**, acknowledging both the Kernel (Linux) and the Userland tools (GNU).

## 6. Why Linux Kernel based Operating System?
Linux dominates the server and supercomputing market for several reasons:

1.  **Open Source:** The source code is available to anyone to view, modify, and distribute.
2.  **Stability & Reliability:** Linux creates a robust environment; servers can run for years without rebooting.
3.  **Security:** Discretionary Access Control (DAC) and Mandatory Access Control (MAC) like SELinux/AppArmor make it highly secure.
4.  **Performance:** Lightweight and optimized for resource management.
5.  **Flexibility:** Can run on anything from a Wristwatch (smartwatch) to a Supercomputer.

## 7. Identification of Various Linux Distributions
Since the Linux Kernel is open source, anyone can bundle it with software. This results in "Distributions" or **Distros**.

### Major Families:
1.  **Debian Family:**
    - Uses `.deb` packages and `apt` package manager.
    - Examples: **Ubuntu**, **Linux Mint**, **Kali Linux**.
2.  **Red Hat Family:**
    - Uses `.rpm` packages and `dnf` / `yum` package manager.
    - Examples: **RHEL**, **CentOS**, **Fedora**, **Rocky Linux**, **AlmaLinux**.
3.  **SUSE Family:**
    - Uses `.rpm` but different management tools (`zypper`).
    - Example: **openSUSE**, **SLES**.

## 8. Introducing RHEL Distribution
**Red Hat Enterprise Linux (RHEL)** is the leading commercial Linux distribution.

- **Focus:** Enterprise setups, stability, and long-term support (10 years).
- **Subscription Model:** Software is free/open source, but you pay for support, updates, and certification.
- **Ecosystem:**
    - **Fedora:** The "upstream" testing ground. New features land here first.
    - **RHEL:** The stable, certified downstream release.
    - **CentOS Stream:** A bridge between Fedora and RHEL.
    - **Rocky/Alma:** Community enterprise operating systems (binary compatible with RHEL), used as free alternatives to RHEL.
