# Lab 08: Permissions and ACLs

## Objective
Secure files and use advanced permissions for collaboration.

## Tasks
1.  Create a directory `/data/project`.
2.  Change the group owner of `/data/project` to `sales`.
3.  Configure permissions so that members of `sales` can read/write/execute, but others have no access (770).
4.  Set the **SGID** bit on `/data/project` so new files inherit the `sales` group.
5.  Create a file `/data/project/confidential.txt`.
6.  Use ACL (`setfacl`) to give read-only access to user `john` on this file, specifically (even if he wasn't in the group).
