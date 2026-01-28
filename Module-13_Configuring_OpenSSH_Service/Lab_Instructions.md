[< Back to Module Notes](./README.md) | [< Back to Course Outline](../README.md)

# Lab 13: Securing SSH

## Objective
Configure passwordless login and secure the SSH server.

## Tasks
1.  On your local machine (or Client VM), generate an SSH key pair (`ssh-keygen`).
2.  Copy the public key to the Server (`ssh-copy-id user@server`).
3.  Login to the server without a password.
4.  On the Server, backup the config file `/etc/ssh/sshd_config`.
5.  Edit `/etc/ssh/sshd_config` to disable Password Authentication.
6.  Restart the SSH service.
7.  Verify you can still login with the key, but not with a password.

