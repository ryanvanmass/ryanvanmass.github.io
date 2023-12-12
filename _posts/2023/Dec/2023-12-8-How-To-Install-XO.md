---
title: "How to Install Xen Orchestra"
date: 2023-12-8 09:30:00 -04:00
categories: [On-Premise,XCP-NG]
tags: [XO,Xen,Hyervisor]
---
## Background
For those who may be unaware Xen Orchestra (XO) is the management interface for managing multiple XCP-NG Servers, It operates in a very similar fashion to VSphere with ESXI

## Install
### Importing a preconfigured VM **(Recommended Method)**
1. On your XCP-NG server clone the [XenOrchestraInstallerUpdater](https://github.com/ronivay/XenOrchestraInstallerUpdater) repository
2. Navigate to that directory
3. run the below command
```bash
sh xo-vm-import.sh
```
4. Navigate to `https://ip-of-vm`
5. Login with the below credentials
    
    Username: `admin@admin.net`
    
    Password: `admin`

### Configuring a Virtual Machine from scratch
1. Create either a Ubuntu/Debian or Rhel based Virtual Machine
2. Install Git if not already installed
3. Clone the [XenOrchestraInstallerUpdater](https://github.com/ronivay/XenOrchestraInstallerUpdater) repo
4. run the below command
```bash
sh xo-install.sh
```
5. Navigate to `https://ip-of-vm`
6. Login with the below credentials
    
    Username: `admin@admin.net`
    
    Password: `admin`