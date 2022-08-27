---
title: "How to setup Tailscale on PFSense"
date: 2022-07-22 09:41:44 -04:00
categories: [Technology, Networking]
tags: ["PFSense", "VPN"]
---
With the recent release of the all new Tailscale Package for PFSense it has made setting up a remote access VPN easier then every. In this post I will be going over how to setup Tailscale on PFSense.

## Why Tailscale
Why choose tailscale? simply put in my opinion it is the simplest to use VPN soloution that can be easily configured to meet my needs. Recently on my honeymoon I really began to appreciate how versatile it realay is. It seamlessly acted as both a remote access vpn to access my locally hosted services at home as well as a remote gateway to access Canadian Content via Amazon prime and in both cases I couldn't notice any leg compared to if i wasn't using a VPN even on hotel WIFI.


## Install and Configuration
## Video Guide


### Steps
#### Install
1. Login to PFSense
2. Navigate to the Package Manager

3. Search for Tailscale
4. Select Install


#### Configuration
##### Tailscale Dashboard
1. Login to Tailscale Dashboard
2. Select settings
3. Select Keys
4. Generate a Machine Key
5. Save the Key you will need it to authenticate PFSense

##### PFSense
1. Navigate to the Tailscale page
2. Select configuration
