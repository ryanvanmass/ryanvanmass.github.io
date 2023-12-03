---
title: "Manipulating Your MAC Address"
date: 2020-07-06 13:30:05 -04:00
draft: false
categories:
    - Networking
tags:
    - Linux
    - How-Tos
---

## What is a MAC Address?
The Media Access Control Address or MAC Address is a address assigned to your Network interface card (NIC) and it is what a DHCP server uses to identify you to give you an IP address. It also gives the DHCP server basic information about your system such as who makes your NIC. Now with that said every MAC address is unique and assigned at the time of manufacturing although with a tool called macchanger you can mask what your MAC is. To deminstrate why you may want to mask what your MAC is I've included two exploits that you may find useful when traveling that is once you can travel again.

__NOTE:__ These exploits only work on linux to my knowledge due to the use of two tools called macchanger and net-tools. which can be installed with the following command on Ubuntu based OS's `sudo apt install macchanger net-tools -y` (if install macchanger for the first time select no to the prompt)

### Introduction to `ifconfig`
Bellow I have included a few useful screenshots of where to find the requeired information to make these exploits work within the `ifconfig` command

__Interface Name__

![example1](/assets/2020/ManipulatingYourMACAddress/InterfaceName.png)

__IP Address__

![example2](/assets/2020/ManipulatingYourMACAddress/IPAddress.png)

__MAC Address__

![example3](/assets/2020/ManipulatingYourMACAddress/MACAddress.png)


## How to get Longer then the "15 Minutes of free wifi on the plane"
This wont fix how slow the wifi is but this will allow you to get around the "15 min of free wifi" that some airlines inforce. This is achieved by essentially changing your address so that the DHCP server who controls who can connect or not doesnt know who you are.


Script: [Random-MAC-Script](/assets/2020/ManipulatingYourMACAddress/randomizemac.sh)

Bellow are the steps for how to use the script:

1. Download script

2. Find out the name of the Network card that you are using to connect to the Wifi. The Easiest way to do this will be to connect to the free wifi and run `ifconfig` it will be the only interface with an ip address. Remember the interface name you will need it later

3. Run the following command `sudo sh ./freeWifi.sh`

4. Follow the on screen prompts

## How to Avoid the Hotel Log in portal
For this exploit to work you will need to log into the Wifi through the log in portal on atleast one device so that you can use that devices MAC address to connect to the network. Once you have done this follow the steps bellow

Script: [Hotel-Wifi-Script](/assets/2020/ManipulatingYourMACAddress/hotelwifi.sh)

1. Download Script

2. On device already connect to the hotel wifi and authenticated (logged in) find and copy the MAC address. This can be done by running the `ifconfig` command and looking for your wireless adapter (wifi card). It will be the only one with an IP address

3. find out the interface name for your wifi interface on the device you want to connect to the hotel wifi. The easiest way to do this will be to connect to the hotels wifi but dont go to the log in page just connect run `ifconfig` and the interface with an ip address is your wireless (wifi) Interface

4. run the following command
> `sudo sh ./Hotel-Wifi-Script.sh`

5. Follow on screen prompts

## Conclusion
whether you are changing your MAC address to allow you to get around the "15 minutes of free wifi" or to avoid having to log into the hotel wifi through the login portal on every device changing your MAC address can be an easy and useful tool to know how to use.