---
title: "Setting Up a FIle Server on Ubuntu with Cockit"
date: 2024-10-4 09:30:00 -04:00
categories: [On-Premise, "Self Hosted"]
tags: [Linux, Cockpit, Samba, Ubuntu]
---
## Setup
1. login to the Console of your Ubuntu 24.04 Machine and run the following commands to install the required packages
``` bash
curl -sSL https://repo.45drives.com/setup | sudo bash
sudo apt update
sudo apt install cockpit cockpit-file-sharing cockpit-navigator cockpit-identities samba
sudo systemctl enable --now cockpit.socket
```
2. In a web browser Naviagate to `https://server-ip:9090`
3. Login

## Configuration
### Adding Users
1. Select `Identities` from the side panel
2. Select `Users`
3. Select `Add Users`
4. Fill out the form as show below (replace Username and Full Name with your info)
![Image1](/assets/2024/Cockpit-Fileserver/1.png)
5. Select `Apply`
6. Select `No Password` twice (This is asking for us to set a password for the server user account not for the FIle Sharing)
7. Select `Set Samba Password`
8. Enter the Password your user will use to connect to the Network Shares

### Creating SMB Shares
1. Select `File Shares`
2. Select the `+` Under Share
![Image2](/assets/2024/Cockpit-Fileserver/2.png)
3. Fill out your Form as shown below replacing share name, path, and users with your desired info
![Image3](/assets/2024/Cockpit-Fileserver/3.png)
4. Select `Confirm`