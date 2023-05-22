---
title: "How to Install Xen Orchestra"
date: 2023-5-21 09:41:44 -04:00
categories: [Technology]
tags: []
---
## Background
For those who may be unaware Xen Orchestra (XO) is the management interface for managing multiple XCP-NG Servers, It operates in a very similar fashion to VSphere with ESXI

## Install
### Importing a preconfigured VM **(Recommended Method)**
1. On your XCP-NG server clone the [XenOrchestraInstallerUpdater](https://github.com/ronivay/XenOrchestraInstallerUpdater) repo
2. Navigate to that directory
3. run the below command
```bash
sh xo-vm-import.sh
```

### Configuring a Virtual Machine from scratch
1. Create either a Ubuntu/Debian or Rhel based Virtual Machine
2. Install Git if not already installed
3. Clone the [XenOrchestraInstallerUpdater](https://github.com/ronivay/XenOrchestraInstallerUpdater) repo
4. run the below command
```bash
sh xo-install.sh
```
