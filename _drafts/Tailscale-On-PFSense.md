---
title: "How to setup Tailscale on PFSense"
date: 2022-07-22 09:41:44 -04:00
categories: [Technology, Networking]
tags: ["PFSense", "VPN"]
---
With the recent release of the all new Tailscale Package for PFSense it has made setting up a remote access VPN easier then every. In this post I will be going over how to setup Tailscale on PFSense.

## Install
1. Login to PFSense
2. Navigate to the Package Manager

3. Search for Tailscale
4. Select Install


## Configuration
### Tailscale Dashboard
1. Login to Tailscale Dashboard
2. Select settings
3. Select Keys
4. Generate a Machine Key
5. Save the Key you will need it to authenticate PFSense

### PFSense
1. Navigate to the Tailscale page
2. Select configuration
