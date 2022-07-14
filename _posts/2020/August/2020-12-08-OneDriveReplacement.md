---
title: "Locally Host your own Cloud Storage using Syncthing"
date: 2020-12-08 8:58:01 -04:00
categories:
    - Technology
    - Storage
tags:
    - Linux
    - How-Tos
    - Windows
---

## Introduction
This Post will go over a easy way to replace cloud based storage platforms such as Onedrive or Dropbox with your own self hosted solution.

## Hardware Requirements for your Syncthing Server
you will need a device that can run Linux and has enough storage for your needs. For the purpose of this post I will be using a Raspberry Pi 3b running Ubuntu 20.04

## A Couple Notes Before We begin
* Before beginning the server installation and configuration for Syncthing insure the storage you intend on using is configured to mount at boot      
  * The easiest and most universal way to insure this is done is to insure they are in your fstab

* It is recommended that whenever setting up a home server that you have it set up with a static IP address

* While there is a Windows Version of Syncthing this post will be solely focused on the Linux versions

## Server Installation
1. Run the following commands to add the PGP key and apt repository:

        sudo curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

        echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list


2. Run the following command to update the cached list of available packages and install Syncthing:
        
        sudo apt update
        
        sudo apt install syncthing

3. Run the bellow command, when it completes press ctl+c:

        syncthing

4. Run the bellow command to open the configuration file:

        sudo nano ~/.config/syncthing/config.xml

5. Locate where it says ` <address>127.0.0.1:8384 ` and change it to read ` <address>Static IP of Server:8384`

    __Before Change__
    
    ![configexample1](/assets/2020/OneDriveReplacement/configexample1.png)

    __After Change__
    
    ![configexample2](/assets/2020/OneDriveReplacement/configexample2.png)

6. run the bellow command and then navigate to `Ip of server:8384` in your web browser of choice
        
        syncthing

7. See the Server configuration in the Web Browser Configuration section for further configuration steps

## Client Installation
1. Run the following commands to add the PGP key and add the apt repository:

        curl -s https://syncthing.net/release-key.txt | sudo apt-key add -

        echo "deb https://apt.syncthing.net/ syncthing stable" | sudo tee /etc/apt/sources.list.d/syncthing.list

2. Run the following command to update the cached list of available packages and install Syncthing:
        
        sudo apt update
        
        sudo apt install syncthing

3. Run the bellow command:

        syncthing

4. Open you web browser of choice and navigate to `127.0.0.1:8384`

5. See the Client configuration in the Web Browser Configuration section for further configuration steps

## Web Browser Configuration
### Server
__Note:__ The following steps assume that the data that you wish to share with all your clients is already on your server

#### Adding a shared Folder
1. Select Add Folder. This is the folder on the server that you would like to share with all your clients

![webconfig1](/assets/2020/OneDriveReplacement/webconfig1.png)

1. Name the folder something easy to remember and makes sense for the share such as Personal DropBox.

![webconfig2](/assets/2020/OneDriveReplacement/webconfig2.png)

3. Set the Folder Path to the directory of where the files you want to share are stored locally on the server

![webconfig3](/assets/2020/OneDriveReplacement/webconfig3.png)

1. Select Save

2. You are done with the configuration of the new shared folder until you have added the remote devices to share the folder with (See Adding Remote Devices section for further detail)

3. Once you have added your remote devices click on the folder you created earlier and select edit

![webconfig4](/assets/2020/OneDriveReplacement/webconfig4.png)

6. Select the tab labeled Sharing

![webconfig5]:(/assets/2020/OneDriveReplacement/webconfig5.png)

7. Select all the devices you want to have access to your files

![webconfig6]:(/assets/2020/OneDriveReplacement/webconfig6.png)

8. Click save

9. Within the next 2 Min you will be prompt to confirm the shared folder on your remote device.

#### Adding Client Devices
1. On your Clients Syncthing page select actions

![remotedevice1]:(/assets/2020/OneDriveReplacement/remotedevice1.png)

2. Select Show ID. Remember this ID you will need it in a minute

![remotedevice2]:(/assets/2020/OneDriveReplacement/remotedevice2.png)

__Example ID:__

![remotedevice4]:(/assets/2020/OneDriveReplacement/remotedevice3.png)

3. On your Syncthing's Server Syncthing page Select Add Remote Device

![remotedevice3]:(/assets/2020/OneDriveReplacement/remotedevice5.png)

4. Enter that ID you copied from your Client into the Device ID felid. you can leave the Device Name empty it will auto update with the hostname of your client when it connects for the first time

![remotedevice5]:(/assets/2020/OneDriveReplacement/remotedevice6.png)

5. Click Save

6. Within the next 2 Min you will be prompt on your CLient to confirm that you added the it to the Syncthing Server.

![deviceconfirmation]:(/assets/2020/OneDriveReplacement/deviceconfirmation.png)



### Client
#### Client Configuration for adding a Shared Folder
**Note:** The following steps are assuming you have already shared the folder on the server
1. Open `127.0.0.1:8384` in your web browser of choice
2. Select add

![addsharedfolder1]:(/assets/2020/OneDriveReplacement/addsharedfolder1.png)

3. Insure the Folder Label is to your satisfaction

![addsharedfolder2]:(/assets/2020/OneDriveReplacement/addsharedfolder2.png)

4. Select where you want to save the local copy of the shared folder

![addsharedfolder3]:(/assets/2020/OneDriveReplacement/addsharedfolder3.png)

5. Select Save

![addsharedfolder4]:(/assets/2020/OneDriveReplacement/addsharedfolder4.png)

## How to make Syncthing Start automatically at boot
Right now you have to manually start Syncthing on both your Clients and your Server every time you want to use it. Run the bellow command to enable Syncthing to run at boot.
        
        systemctl enable syncthing@$USER

