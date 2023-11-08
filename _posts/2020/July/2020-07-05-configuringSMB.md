---
title: "Configuring Samba"
date: 2020-07-05 20:50:53 -04:00
categories:
    - On-Premise
    - Storage
tags:
    - Linux
    - How-Tos
---

## Introduction
Samba allows you to share files and folders over a network using the smb (Server Message Block) Protocol

## Server Installation
Debian based OS: `sudo apt-get install samba`

## Server Configuration
1. Open the configuration file
>  `sudo nano /etc/samba/smb.conf`
2. Add the following at the bottom of config file for each share:

#### Syntax

```
[Share Name]
    comment = Description of Share
    path = Path to folder
    read only = make the network share read only
    browseable = make the network share browseable or not
```


#### Example

``` 
[Home]
    comment = Home Directory
    path = /home/ryanvanmass
    read only = no
    browseable = yes
```

3. Exit the file saving the changes
4. Restart the smbd service
> `sudo systemctl smbd restart`
5. Add Samba User
>`sudo smbpasswd -a "User"`

## Client Configuration
### Linux
__NOTE:__ This will depend on what File Manager you are using but bellow is a guideline
1. in your File Manager locate and select add entry. It should look something like the bellow image

![image](/assets/2020/configuringSMB/SMBConnectLinux.png)

2. Add something reasonable for the Label (eg the name of the share)

3. For location enter the following:
> `smb://ip of server/share name` 

### Windows
1. Open File Explorer

2. Navigate to This PC

3. Right Click and Select Add a network location

4. Follow onscreen promps untill you reach this screen

![Windows](/assets/2020/configuringSMB/SMBConnectWindows.png)

5. Enter the following:
> `\\server ip\share name`

6. Enter User credentials created during Samba Configuration

7. Enter a name for the share

8. Select Finished