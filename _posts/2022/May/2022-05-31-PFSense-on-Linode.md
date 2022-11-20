---
title: "How to Install PFSense on Linode"
date: 2022-05-31 18:42:56 -04:00
categories:
    - Technology
    - Networking
tags:
    - VPS
    - Firewall
    - Linode
    - VPN
---
## Use case’s
Cheap way to build out a test environment that you will later be deploying to Production in Azure or AWS
Cheap way to deploy a VPN that can easily be managed
Allow you to build a private network on Linode behind a dedicated firewall

## Guide
1. Create your Linode in your preferred data center
2. Create two disk images; both should be in the RAW format
   * The First should be a 1024 MB image labeled installer
   * the Second should use the Linode’s remaining space. Label it PFSense
![Image1](/assets/2022/PFSense-On-Linode/Image%201.png)

3. Create two configuration profiles with the following settings. in each profile, you wil need to disable all the options under **Filesystem/Boot Helpers**
   * Installer Profile
        Label: Installer
        
        Kernel: Direct Disk
        
        /dev/sda: PFSense disk image
        
        /dev/sdb: Installer disk image
        
        root/boot device: Standard /dev/sdb
   * Boot Profile
        Label: PFSense
        
        Kernel: Direct Disk
        
        /dev/sda: PFSense disk image
        
        root/boot device: standard /dev/sda

![Image2](/assets/2022/PFSense-On-Linode/image%202.png)

![Image3](/assets/2022/PFSense-On-Linode/Image%203.png)

4. Boot into Rescue Mode with the installation disk mounted to `/dev/sda` and access your Linode via the console


![Image4](/assets/2022/PFSense-On-Linode/Image%206.png)



![Image5](/assets/2022/PFSense-On-Linode/Image%207.png)


5. Run the bellow command
```bash
# Download and Format Install Media
curl http://edmi.vanmassenhoven.com/index.php/s/qoqoFKEEjPHya76/download/pfSense-CE-memstick-serial-2.6.0-RELEASE-amd64.img | dd of=/dev/sda
```

6. When the command finishes, reboot into your Installer Profile
7. Open the Console.
8. Follow the onscreen prompts to install PFSense
9. Once install is complete reboot into PFSense Profile