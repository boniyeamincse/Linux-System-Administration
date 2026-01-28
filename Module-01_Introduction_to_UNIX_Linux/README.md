[< Back to Course Outline](../README.md) | [Lab Instructions](./Lab_Instructions.md) | [Solutions](./Solutions/)

# Lab: Identifying Linux Environment

## Objective
Verify the current Linux environment and Identify the Kernel/Distro versions.

## Steps

1.  **Check Kernel Version**
    Command: `uname -r`
    *Explanation: Prints the kernel release.*

2.  **Check OS Release Info**
    Command: `cat /etc/os-release`
    *Explanation: detailed distribution information.*

3.  **Check Hostname**
    Command: `hostname`

4.  **Check Hardware Architecture**
    Command: `lscpu` or `arch`
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

## Theory
Unix is a powerful, multitasking, multi-user computer operating system that was originally developed at AT&T's Bell Labs. Linux is a Unix-like operating system kernel that is free and open-source.

**Key Concepts:**
- **Kernel:** The core of the OS that manages hardware and resources.
- **Shell:** The command-line interface that allows users to interact with the kernel.
- **Distributions (Distros):** Complete OS packages including kernel, shell, and applications (e.g., Ubuntu, RHEL, CentOS).

