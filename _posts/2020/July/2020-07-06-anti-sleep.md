---
title: "Anti-Sleep"
date: 2020-07-06 11:55:15 -04:00
categories:
    - Technology
    - Pentesting
tags:
    - SysAdmin Tools
---
## Introduction
Anti-Sleep is a script that runs on a Bash Bunny that prevents a PC from going to sleep

## Required Hardware
* Bash Bunny made by Hak5 ( get it at [hak5.org](https://shop.hak5.org/products/bash-bunny) )

## How it Works
Every 5 min it Bash Bunny presses the Windows key then 1 sec later it presses it again

## How to get it working
1. Download file and rename it `payload.txt`
2. save payload.txt to either `/payloads/switch1` or `/payloads/switch2` on the bash bunny
3. unplug the bash bunny switch switch to corosponding position
4. plug bash bunny in

## Script
[payload.txt](/assets/2020/anti-sleep/payload.txt)