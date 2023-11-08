---
title: "Tailscale Overview"
date: 2021-11-04 18:42:56 -04:00
categories:
    - On-Premise
    - Networking
tags:
    - Tailscale
    - VPN
    - First Look
---


## What is Tailscale?
Tailscale utilizes the Wireguard protocol to allow you to Interact with devices acrost multiple networks as if they were on your local network

## How is Tailscale different than a traditional VPN
The Key difference is unlike a traditional VPN where all your internet and network traffic travels through the VPN with Tailscale only the data required to comminate with the other devices on the network is transmitted over the link the rest of your network traffic is sent out over your normal network

## How does it work?
While I could attempt to explain how Tailscale works I wouldn’t do it justice so instead I am going to link you to Tailscales own in-depth explanation how there system works from top to bottom. You can find that article at https://tailscale.com/blog/how-tailscale-works/

## Setup/Configuration
### Windows
1. Navigate to https://tailscale.com/download and download the Windows Client
Once The Installer is downloaded run it
Select Install

2. When the Install is complete select close
Launch the App
Select the ^ to reveal all apps on the task bar

3. Right click on Tailscale and select Login

4. Follow on screen prompts

### Linux
#### Ubuntu
```bash
# Add Tailscale Package GPG Key and Repository
curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.gpg | sudo apt-key add -

curl -fsSL https://pkgs.tailscale.com/stable/ubuntu/focal.list | sudo tee /etc/apt/sources.list.d/tailscale.list

# Install Tailscale
sudo apt update
sudo apt install tailscale

# Authenticate and connect your machine to the tailscale Network
sudo tailscale up
```

#### Fedora
```bash
# Add the Tailscale Repository and Install Tailscale
sudo dnf config-manager --add-repo https://pkgs.tailscale.com/stable/fedora/tailscale.repo
sudo dnf install tailscale

# Enable and start the Tailscale service
sudo systemctl enable --now tailscaled

# Authenticate and connect to the Tailscale Network
sudo tailscale up
```

## Advanced Features
### Local Network DNS Override
Tailscale allows you to override the DNS settings provided by the DHCP server to whatever you like. This is useful when combined with the next feature we will cover to be able to access a remote network right down to the custom DNS A records as if you were phyiscally connected to the network

### Subnet Routing
Thanks to the Wireguard Tunnel between clients this allows you to bypass both NAT as well as Firewalls to communicate directly with Clients on a different network as if it was local thanks to the ability to route traffic over multiple subnets via the subnet routing nodes.
These nodes allow you to create a virtual network between all of your infostructure across multiple physical networks without having to sacrifice security.

## My Thoughts
Tailscale has allowed me to access any of my self hosted services from anywhere that I have a internet connection without the need for a VPN endpoint.