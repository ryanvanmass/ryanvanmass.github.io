---
title: "Configuring OpenVPN"
date: 2020-07-06T08:28:20-04:00
draft: false
categories:
    - Technology
tags:
    - Linux
    - How-Tos
---
## Introduction
OpenVPN is an open source VPN that allows you to run your own VPN server.

## Server Configuration
1. Download The Installation Script
> `wget https://git.io/vpn -O openvpn-install.sh`

2. Make it executable 
> `chmod 755 openvpn-install.sh`

3. Execute the script
> `./openvpn-install.sh`

4. Follow the in terminal prompts

__NOTE:__ Use defualt for what port to use unless you know what you are doing

## Client Configuration

### Linux

#### Manualy Connect
1. On the VPN server run `./openvpn-install.sh` again and Select 1 to add new user

2. Enter a Client Name (IE the hostname of the machine that will be using this profile to connect to the server)

3. copy the Clientname.ovpn file to the Client Machine

4. Install openvpn on the Client Machine
> Debian based OS: `sudo apt install openvpn`

5. Connect to OpenVPN
> `sudo openvpn Clientname.ovpn`

__NOTE:__ Do not Close terminal or the connection will be lost


#### Auto-Connect
1. On the VPN server run `./openvpn-install.sh` again and Select 1 to add new user

2. Enter a Client Name (IE the hostname of the machine that will be using this profile to connect to the server)

3. copy the Clientname.ovpn file to the Client Machine

4. Convert the .ovpn file to .conf
> `cp Clientname.ovpn Clientname.conf`

5. Install openvpn on the Client Machine
> Debian based OS: `sudo apt install openvpn`

6. copy the .conf file to /etc/openvpn
> `sudo mv file.conf /etc/openvpn`

7. start the service
> `sudo systemctl start openvpn@.conf file name`

8. enable to service to run at start
> `sudo systemctl enable openvpn@.conf file name`

##### Useful Commands
I would reccomend creating alias's for these in your .bashrc file

__Disconnecting from the VPN__

> `sudo systemctl stop openvpn@Clientname.conf`

__Connecting to VPN if Disconnected__

> `sudo systemctl start openvpn@Clientname.conf`

__Restart the Connection if for some reason you are connected to the VPN and you loose access to the internet__

> `sudo systemctl restart openvpn@Clientname.conf`

### Windows
1. On the VPN server run `./openvpn-install.sh` again and Select 1 to add new user

2. Enter a Client Name (IE the hostname of the machine that will be using this profile to connect to the server)

3. copy the Clientname.ovpn file to the Client Machine

4. Navigate to https://swupdate.openvpn.net/beta-downloads/connect/openvpn-connect-3.1.3.713_signed.msi and Select Windows under OpenVPN Connect

[Windows]:/post/2020/images/configuringOpenVPN/openvpnwebsite.png
![alt text][Windows]

5. Install OpenVPN Connect

6. Launch OpenVPN Connect

7. Select File

8. Add the Clientname.ovpn file that you coppied from the openvpn server

9. Select add

10. Select the toggle next to the VPN to Connect