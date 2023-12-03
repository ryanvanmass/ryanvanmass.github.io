---
title: "Why the Fortigate 30E is great for your homelab"
date: 2022-05-10 18:42:56 -04:00
categories:
    - Networking
tags:
    - Firewall
    - VPN
    - Fortigate
---
In this post I will be going over some of the reasons why I believe that the Forigate 30E is a great addition to your homelab. I will be covering the hardware, software, and some of the key features I use.

## The Hardware
From the all metal enclosure to the feel of the power supply to the inclusion of a console port. You can tell that Fortinet put some thought into the design and features they wanted to offer with the 30E. If I had one complaint it would be that they do not use what most of the industry has adopted as the industry standard barrel plug instead opting for there own 2 prong plug, which will make getting after market adapters much harder.

## The Software
### The Graphical User Interface
The GUI is fairly standard and straight forward as far as firewalls goes, one nice feature is that you can disable (hide) features you are not utilizing which allows a more clean interface only offering the features you are using on that device.

### The Command Line Interface
Honestly don’t have a ton to say about the CLI, if you have ever used Cisco’s CLI you will feel right at home.

## Key Features
### VPN
I cannot understate how powerful having a full featured VPN Integrated with your firewall allowing you to perform cross network routing can be, with the options of either IPsec or SSL based remote access VPNs you can be nearly guaranteed that your workstation/end device will be able to connect and access your local recourses from anywhere with a network connection. In addition to the remote access VPN you can also configure seamless Site-to-Site VPN with both the FortiGate Virtual Appliance as well as other FortiGate Hardware devices.

### DNS Service
The ability to run your DNS service directly from your networking appliance can not be overlooked. This allows you to have a full featured (IE custom DNS A Records) DNS Server on your local network without the need for the additional overhead of running a separate workstation or VM to manage and keep up to date.

Additionally you can select which interfaces you want to utilize the integrated DNS Server giving you more granular control.

### CLI
While most people will likely primarily use the GUI you can’t underestimate the simplicity of the syntax and the versatility of the Command Line Interface as a whole. If you have ever used Cisco’s CLI you will feel right at home

## So why get anything better then your ISP provided router?
For one, having full control over your network unlocks near infinite opertunities for customization. Additionally The added security of getting regular security updates will help anyone who is atleast somewhat security conchies sleep better at night