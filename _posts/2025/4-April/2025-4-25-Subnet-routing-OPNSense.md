---
title: "Tailscale Subnet Routing on OPNSense"
date: 2025-4-25 09:30:00 -04:00
categories: [Networking, OPNSense]
tags: [Tailscale, VPN, OPNSense]
---

## Tailscale Install and Setup
For Instructions on how to install and setup Tailscale please visit our [Setting up Tailscale on OPNSense in 2025](https://ryanvanmassenhoven.com/posts/Setting-up-tailscale-on-OPNSense/) post

## Configuring Subnets on OPNSense
1. Navigate to `VPN > Tailscale > Settings`
2. Select `Advertised Routes`
3. Select the Oragne `+` icon
4. Enter your subnet you would like to advertise (please ensure it is a subnet configured to one of the networks on the firewall)
5. Add a descritpion if you would like
6. Select Save
7. Repeat for any additional Subnets you would like to advertise

## Tailscale Config
1. Navigate to [Tailscale's Admin Dashboard](https://login.tailscale.com/admin/machines)
2. Locate your Firewall
3. Select the 3 dots icon (`...`)
4. Select `Edit Route Settings`
5. Select the checkbox next to each subnet you added previously
6. Select `Save`