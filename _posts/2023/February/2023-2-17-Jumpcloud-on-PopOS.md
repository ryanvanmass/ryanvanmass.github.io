---
title: "How to Install Jumpcloud on PopOS"
date: 2023-2-17 09:30:00 -04:00
categories: [On-Premise, "Linux Desktop"]
tags: [Jumpcloud, PopOS, Linux]
---
1. Make a backup of `/etc/os-release`
```bash
cp /etc/os-release /etc/os-release.backup
```

2. Update `/etc/os-release` match the bellow template
```
NAME="Pop!_OS"
VERSION="22.04 LTS"
ID=ubuntu
ID_LIKE="ubuntu debian"
PRETTY_NAME="Ubuntu 22.04 LTS"
VERSION_ID="22.04"
HOME_URL="https://pop.system76.com"
SUPPORT_URL="https://support.system76.com"
BUG_REPORT_URL="https://github.com/pop-os/pop/issues"
PRIVACY_POLICY_URL="https://system76.com/privacy"
VERSION_CODENAME=jammy
UBUNTU_CODENAME=jammy
LOGO=distributor-logo-pop-os
```

3. Run the install command
```bash
curl --tlsv1.2 --silent --show-error --header 'x-connect-key: !ConnectionKey' https://kickstart.jumpcloud.com/Kickstart | sudo bash
```