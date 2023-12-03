---
title: "How to set up a Site to Site VPN using OpenVPN"
date: 2022-06-07 18:42:56 -04:00
categories:
    - Networking
    - VPN
tags:
    - Firewall
    - Linode
    - VPN
---
## Video Guide

<iframe width="560" height="315" src="https://www.youtube.com/embed/-8xt7LUtYH4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Written Guide
### Server
1. Log into your PFSense Firewall that will be acting as the server and navigate to VPN > OpenVPN >Servers
2. Select Add
3. Enter the name of the network in the Description Field
4. Set Server Mode to Peer to Peer (Shared Key)
5. Leave encryption algorithm as default
6. Set the IPV4 Tunnel Network to 10.8.0.0/24
7. Set the IPV4 Remote Networks to whatever the remote network on the other end of the tunnel is
8. Add Firewall rule to open port 1194 on WAN interface

### Client
1. Log into your PFSense Firewall that will be acting as your Client and navigate to VPN ? OpenVPN > Client
2. Select Add
3. Set Server Mode to Peer to Peer (Shared Key)
4. Enter the IP Address of the VPN Server in sSrver host or address
5. Deselect Automatically Generate a shared Key
6. Enter the VPN Server Shared Key into the Shared Key field
7. Enter the Tunnel Network you configured on the Server in IPV4 Tunnel Network
8. Enter Your Remote Network behind your VPN Firewall in the IPV4 Remote Networks field