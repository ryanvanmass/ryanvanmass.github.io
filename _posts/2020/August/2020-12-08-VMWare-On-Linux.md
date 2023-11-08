---
title: "How to Install and Optimize VMware Workstation for Linux"
date: 2020-08-12 11:04:13 -04:00
draft: false
categories:
    - On-Premise
tags:
    - Linux
    - How-Tos
---
## Introduction
VMWare Workstation is one of the leading Hyper-Visor softwares, which allows you to run Virtual Machines to complete various tasks. 

### Basic Overview
1. Download VMWare Workstation Installer
2. Run Insraller
3. Launch VMWare Workstation
4. Complete Configuration with VMWare Workstation



## Downloading VMware Workstation
Run `wget https://download3.vmware.com/software/wkst/file/VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle` or go to [VMware.com](https://www.vmware.com/products/workstation-pro/workstation-pro-evaluation.html) and select Download Now under Workstation for Linux

![WorkstationDownload](/assets/2020/VMWareOnLinux/LinuxDownload.png)

## Installing VMware
Run `sudo sh ./VMware-Workstation-Full-15.5.6-16341506.x86_64.bundle` to run the installer you just downloaded

Launch VMWare Workstation and follow the onscreen prompts to finish the installation proccess

## Optimizing VMWare
Run `sudo vmware` to launch vmware as root so you can make configuratiuon chagnes

__Select Edit__

![Step1](/assets/2020/VMWareOnLinux/Step1.png)

__Select Preferences__

![Step2](/assets/2020/VMWareOnLinux/Step2.png)

__Select Memory__

![Step3](/assets/2020/VMWareOnLinux/Step3.png)

__Select Fit all vurtual machine memory into reserved host RAM__

![Step4](/assets/2020/VMWareOnLinux/Step4.png)

__Optional: Reduce reserved Memory__

![Step5](/assets/2020/VMWareOnLinux/OptionalStep.png)

## Uninstalling VMWare
Run `sudo vmware-installer -u vmware-workstation`