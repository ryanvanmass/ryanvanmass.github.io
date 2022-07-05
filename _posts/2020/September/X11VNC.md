---
title: "X11VNC"
date: 2020-09-16T08:35:03-04:00
draft: false
categories:
    - Technology
tags:
    - Linux
    - VNC
---
## A little Background
If you are anything like me you have had many issues getting a VNC server to run on any desktop enviorment other gnome (which has it built in). This post will be going over what I have recently found to be probobly the easiest and most full proof way to get VNC running on any desktop enviorment.

## Installation and Configuration Steps
1. Install Dependancies

        sudo apt install x11vnc

2. Configure X11VNC Password

        x11nvc -storepassw+d

3. Configuring it to run at boot

        crontab -e
copy the bellow text correcting for your user profile

        @reboot x11vnc -auth guess -forever -loop -noxdamage -repeat -rfbauth /home/ryan/.vnc/passwd -rfbport 5900 -shared
4. Reboot

        reboot