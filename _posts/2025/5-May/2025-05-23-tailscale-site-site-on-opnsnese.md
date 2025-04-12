---
title: "Setting up a Site to Site VPN on OPNsense using Tailscale"
date: 2025-5-23 09:30:00 -04:00
categories: [On-Premise,Nextcloud]
tags: ["Nextcloud", Linux,]
---

## Preporation
In preporation for following the steps in this guide it is assumed that tailscale is installed on OPNsense using the plugin ([setup guide](https://ryanvanmassenhoven.com/posts/Setting-up-tailscale-on-OPNSense/)) and that your remote site has a subnet router setup advertising a route to tailscale

## Setup
### Tailscale
1. Navigate to `VPN > Tailscale > Settings`
2. Select `Advanced`
3. Enable `Accept Routes` and `Disable SNAT`
4. Select `Apply`

### Gateways and routes
1. Navigate to `System > Gateway > Configuration`
2. Select `+`
3. Configure the gateway as shown below
![1](/assets/2025/Site-2-Site-tailscale-opnsense/1.png)
4. Select `Save`
5. Select `Apply`
6. Navigate to `System > Routes > Configuration`
7. Select `+`
8. Fill in your remote network and select the tailscale gateway
9. Select `Save`
10. Select `Apply`

## Fix Mobile Remote Access
due to disabling Source NAT within Tailscale we need to configure a route so that our LAN hosts know how to reach any remote workstations or phones via Tailscale
1. Navigate to `Services > ISC DHCPv4 > LAN`
2. Locate `Additional Options` and Select `Advanced`
3. Enter `121` under Number
4. Select `String` for Type
5. Enter the string Generated at [Medo64.com](https://medo64.com/posts/configuring-classless-static-route-option/) for Value
![2](/assets/2025/Site-2-Site-tailscale-opnsense/2.png)