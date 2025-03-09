---
title: "Installing Home Assistant on Proxmox"
date: 2025-1-26 09:30:00 -04:00
categories: [On-Premise,Proxmox]
tags: ["Home Assistant", Linux, Bash]
---
1. Login to the console of your proxmox server
2. Run the below command to execute a community maintained script that will handle the creation and configuration of the vm for you
```bash
bash -c "$(wget -qLO - https://github.com/community-scripts/ProxmoxVE/raw/main/vm/haos-vm.sh)"
```
3. Follow on screen prompts