---
title: "Setting up Tailscale on OPNSense in 2025"
date: 2025-3-23 09:30:00 -04:00
categories: [Networking, OPNSense]
tags: []
---

## Prep
Please ensure you are running atleast OPNSense 25.1.1

## Install
1. Navigate to `System > Firmware > Plugins`
2. Install the `os-tailscale` Plugin (If plugins do not load Navigate to status and check for updates)

## Tailscale setup
1. Naviate to [Tailscale Admin Dashboard](https://login.tailscale.com/admin/settings/keys)
2. Select `Genereate auth key`
3. Select `Generate Key`
4. Copy your Auth Key
5. Navigate to `VPN > Tailscale > Authentication`
6. Paste your Auth key into Pre-authentication Key and select Apply
7. Navigate to `VPN > Tailscale > Settings`
8. Select `Enabled` and click `Apply`

## Interface Setup
1. Navigate to `Interfaces > Assignments`
2. Add the Tailscale Interface 
3. Open the interface you just added
4. Select ` Enable Interface`
5. Add the Desction `Tailscale`
6. Select `Save`

## Firewall Rule Setup
1. Navigate to `Firewall > Rules > Tailscale`
2. Select the Oragen `+` Icon
3. Select `Save`