---
title: "Installing Adguard Home on OPNSense"
date: 2025-03-20 09:30:00 -04:00
categories: [Networking,OPNSense]
tags: [Adguard,opnsense,dns,adblocking]
---
## Prep for install
### Adding Adguard Repo
eather ssh or console into your opnsense firewall and run the below command
```shell
fetch -o /usr/local/etc/pkg/repos/mimugmail.conf https://www.routerperformance.net/mimugmail.conf
```

## Install
1. Login to your opnsense web dashboard
2. navigate to `System > Firmware > Plugins`
3. Install the `os-adguardhome-maxit` (You may need to check for updadtes for the plugins to load)

## Setup
### Enabling adguard to act as your DNS
1. Navigate to `Services > Unbound DNS > General`
2. Deselect Enable Unbound and select Save
3. Navigate to `Services > ISC DHCPv4 > LAN`
4. Enter your LAN IP Address for the DNS Server option in your DHCP Settings and select save
5. Navigate to `Services > Adguardhome > General`
6. Select Enable

### Adguard admin portal setup
1. Navigate to http://firewall-lan-ip:3000
2. follow onscreen prompts taking note to set the admin dashboard port to a unused port