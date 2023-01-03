---
title: "Hyper-V Overview"
date: 2022-12-05 09:41:44 -04:00
categories: [Technology]
tags: []
---
## What is Hyper-V and why use it?
Hyper-V is Microsofts built in hypervisor that is included in any Windows Pro and above lisences. So why use it honestly if you just need to spin up a quick Windows or Ubuntu VM to do some testing you cant get much easier there enabling a windows feature and rebooting.

### Understanding Hyper-V's different components
__The Hypervisor__

The Hyper-V hypervisor is Microsofts integrated Windows Native hypervisor

__Hyper-V Workstation__

The Hyper-V Workstation Management Console allows you to both manage the local Hyper-V Hypervisor as well as connect to remote Hyper-V Servers

__Hyper-V Server__

The Hyper-V Server is Microsofts Windows Server Integrated Virtualization platform. It is likely most commonly utilized for Microsofts on-prem VDI (Virtual Desktop Infrastructure) Product. It can also be used as a traditional type-1 hypervisor being managed from both on the host server as well as from Hyper-V's workstation implementation


## How to enable Hyper-V
**Note:** Run as an Admin

``` powershell
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V
```

## Hyper-V's Key Features
### Hyper-V Quick create 
Hyper-V's quick create functionality is likely one of the best features, It allows you to easily and quickly setup up development enviroments in both windows and Linux (Ubuntu) in just a couple of clicks

### Windows 11 Sandbox
While Windows 11 sandbox isn't explicitly speaking Hyper-V it does use hyper-v's underlting hypervisor to virtualized a temporary sandbox environment for you to be able to do shorter and even quicker testing

### WSL2
The Windows Subsystem for Linux version 2 utilizes the Hyper-V architecture (Hypervisor) to allow the virtualization required to allow you to run the Linux kernel on your windows host


## A System Admins Perspective
As a system admin in 2023 I would not want to have my entire virtualized infrastructure due to there being far more full featured virtualization platforms available now I do beleive that it still has a place as a workstation virtualizer to allow you to have multiple "Dev enviroments" to test changes, powershell scripts, policy updates, etc in an enviroment that can easily be reset with minimul impact to your testing. I could even see where a small Hyper-V server utilized for the same role could be an asset to some organizations.


## Final Thoughts

While I wouldnt suggest replacing products such as VMware Workstation Pro or ESXI with Hyper-V if you have nothing better It will get the job done in a pinch. Additionally Microsoft has been adding additional functioanlity to the Hyper-V hypervisor such as the Windows 11 sandbox and WSL2/WSL2G which can allow system admins to get additional functionality.