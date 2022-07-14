---
title: "Manjaro, What is it and Why Use it?"
date: 2022-07-07 09:41:44 -04:00
categories: [Technology]
tags: ["Linux","Ubuntu","Review"]
---

When I am not using a appliance based operating system my preferred Linux distribution of choice is Ubuntu. With there recent release of there new LTS (Long term support) I had to of course take a fresh look at both there Workstation and server distributions

## Workstation
While I no longer run Linux as my primary OS due to needing Windows for work I do enjoy revisiting it from time to time and this seemed like the perfect opportunity to wipe my laptop and give it a spin.

### ZFS on Root
It was really nice to see Canonical finally remove the experimental tag from the ZFS on root install option. The reason why it is so nice to see is due to the nature of ZFS being a copy on write file system it allows create on-system snapshots of the entire file system to easily rollback to a known good state in the event of an issue with tools such as Sanoid by JIm Salter (check it out on Github)

### Display Manager Transition
I have mixed feelings about Canonical’s decision to transition to Wayland by default. On one hand I am thrilled to see another major distribution transition to the new display server but this has caused me to discover a few issues during my admittedly short testing, such as legacy apps not working correctly (eg putty not opening the terminal window) or very strange display behaviour when you are virtualisation the release and you have changed the resolution.

The reason I am not racking Canonical across the coals for this is because in order to see these issues fix we need to bring the new display server more into the mainstream so that more people are working on improving it and fixing these issues

### Networking
As a workstation release I believe that you should be able to pull DNS from any network appliance/DNS server that is handling that role on your network regardless of configuration. with Ubuntu 22.04 like many distributions I have tested I cannot get the any of them to recognize any locally hosted DNS Server. It may be a limitation of Gnome I haven’t dived into it that far but until that is changed I can’t run Linux as my daily driver OS.

## Server
At the time of release Ubuntu 22.04 is the buggiest version of Linux I have ever run, not a single application that run on Linux will function due to dependency issues. Which makes it hard to test anything, I will likely re-evaluate the server release in a few months but at this point I am evaluating other options for my primary server OS.