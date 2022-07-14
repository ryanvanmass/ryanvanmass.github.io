---
title: "NFS How To"
date: 2021-01-28 08:32:12 -05:00
draft: false
categories:
    - Technology
    - Storage
tags:
    - Linux
    - How-To
---

## What is NFS?
The Network File System (NFS) is a protocol used to share files over a network. 

## Configuration
### Server
1. Install NFS-Utils
    
    **Ubuntu**
    ```bash
    apt install nfs-utils
    ```

    **Fedora/CentOS**
    ```bash
    dnf install nfs-utils
    ```

2. Edit the Exports File
    ```bash
    nano /etc/exports
    ```

3. Add the Following line to `/etc/exports` for each file share
    ```
    /path/to/folder/to/share NetworkAddress/HostAddress(rw,sync,no_root_squash)
    ```
    **Example**
    ```
    /mnt/NetworkShare/Share1 10.8.0.0/24(rw,sync,no_root_squash)
    ```
4. Restart the NFS Server Service
    ```bash
    systemctl restart nfs-server
    ```

### Client
1. Install NFS-Utils
    
    **Ubuntu**
    ```bash
    apt install nfs-utils
    ```

    **Fedora/CentOS**
    ```bash
    dnf install nfs-utils
    ```

2. Edit `/etc/fstab`
    ```bash
    nano /etc/fstab
    ```

3. Add the following for each file share
    ```
    ServerAddress:Path/to/Share /local/path/to/mount    nfs defaults    0   0
    ```
    **Example**
    ```
    10.8.0.1:/mnt/NetworkShares/Share1  /mnt/Share1 nfs defaults    0   0
    ```