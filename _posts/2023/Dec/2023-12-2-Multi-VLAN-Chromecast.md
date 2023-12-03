---
title: "How to Allow Chromecast & Nest Device Access Across Multiple VLANs"
date: 2023-12-2 09:30:00 -04:00
categories: [Networking, Routing]
tags: [VLAN, Chromecast]
---
## Background
Chromecast & Nest Devices use Multicast Domain Name Services (mDNS) to perform device discovery. Unfortunitly do to the nature of mDNS you cannot simply simply add a Routing rule to allow the traffic across the VLAN it must be relayed via a Repeater in order to traverse VLANs. Luckily many routers have a built in mDNS repeater built in or as a add on, in this article we will be going over how to set this up in PFsense.

## Setup
### Install Avahi
1. Login to PFsense
2. Navigate to `System > Package Manager > Available Packages`
3. Search for`Avahi` and Select Install

## Configuring Avahi
1. Navigate to `Services > Avahi`
2. Select `Enable the Avahi Daemon`
3. Select `Repeat mdns Packets across Subnets`
4. Select Save

![Image1](/assets/2023/Multi-vlan-chromecast/1.png)