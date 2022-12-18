---
title: "Hyper-V Overview"
date: 2022-12-05 09:41:44 -04:00
categories: [Technology]
tags: []
---
## What is Hyper-V and why use it?
Hyper-V is Microsofts built in hypervisor that is included in any Windows Pro and above lisences. So why use it honestly if you just need to spin up a quick Windows or Ubuntu VM to do some testing you cant get much easier there enabling a windows feature and rebooting.

## How to enable Hyper-V
**Note:** Run as an Admin

``` powershell
DISM /Online /Enable-Feature /All /FeatureName:Microsoft-Hyper-V
```


## Hyper-V Quick create 
Hyper-V's quick create functionality is likely one of the best features, It allows you to easily and quickly setup up development enviroments in both windows and Linux (Ubuntu) in just a couple of clicks

## Windows 11 Sandbox
While Windows 11 sandbox isn't explicitly speaking Hyper-V it does use hyper-v's underlting hypervisor to virtualized a temporary sandbox environment for you to be able to do shorter and even quicker testing

## Final Thoughts
Honestly while I wouldnt suggest replacing products such as VMware Workstation Pro with Hyper-V if you have nothing better It will get the job done in a pinch. Additionally Microsoft has been adding additional functioanlity to the Hyper-V hypervisor such as the Windows 11 sandbox and WSL2/WSL2G which can allow system admins to get additional functionality.