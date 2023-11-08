---
title: "Configuring VSFTP"
date: 2020-07-06 08:24:50 -04:00
categories:
    - On-Premise
    - Storage
tags:
    - Linux
    - How-Tos
---

## Introduction
The File Transfer Protocol (FTP) allows you to transer files from one computer to another over a network

## Server Instalation
Debian: `sudo apt-get install vsftpd`

Arch: `sudo pacman -S vsftpd`

Fedora: `sudo dnf -y install vsftpd`

## Server Configuration
1. Open the configuration file
> `sudo nano /etc/vsftpd.conf`

2. Enable users to upload to FTP share

![test](/assets/2020/configuringVSFTPD/writeenable.png)

3. Save and close the configuration file
4. Restart the service
> `sudo systemctl restart vsftpd`

## Client Configuration

### Linux
__NOTE:__ This will depend on what File Manager you are using but bellow is a guideline
1. in your File Manager locate and select add entry. It should look something like the bellow image

![image](/assets/2020/configuringSMB/SMBConnectLinux.png)

2. Add something reasonable for the Label (eg the name of the ftp server)

3. For Location enter the following:
> `ftp://ip of username@ip of server`

4. Enter user credentials when prompted

### Windows
1. Open File Explorer

2. Navigate to This PC

3. Right Click and Select Add a network location

4. Follow onscreen promps untill you reach this screen

![Windows](/assets/2020/configuringSMB/SMBConnectWindows.png)

5. Enter the following and select next:
> `ftp://ip of server`

6. click login anonymously checkbox and enter username then select next

7. Enter the FTP server name and select next

8. Select Finish
