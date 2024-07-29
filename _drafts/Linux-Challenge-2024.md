---
title: "30 Day Linux Challenge 2024"
date: 2024-3-24 09:41:44 -04:00
categories: [On-Premise, Nextcloud]
tags: []
---

With the Recent Accouncement of Windows Recall I decided to give Windows the boot and give Linux another go as my daily driver. Sicne the last time I attempted this a few key things have changed the largest of which is that I seporated out my gaming machine from my main workstion and am utilizing game streaming to be able to game on my desktop. So i've spent the last 31 on Linux


## Starting on Gnome 
Out of the gate we had a strong start I choose Fedora 40 Workstation as my Distrobution of choose. Once I did the In my opinion the tweaks that should really be defualt to Gnome such as enabling the Maximize and Minimize buttons in the top bar I was left with a very usable Mac agacent Desktop. After getting the basics set up I had 2 main objectives:

### Gaming
Obviously I wanted to be able to relax and play some video games after long days at work. For quiet some time now i have been using Moonlight a opensource gaming streaming client that utilizes Nvidia's gamecast functionality built into there driver to stream games at extremely low latency over a network. You can learn more about Moonlight [here](https://moonlight-stream.org/). Unfortunitly I very quickly ran into issues with moonlight which i had installed via flatpak crashing Gnome. I went down many rabit holes attempting to troubleshoot this, I tried everything from networking tweaks to swapping out hardware in my workstation. Unfortunitly I would end up battling this issue until the very last day of the Challenge when I finnaly tried the app image and discovered it appears to be a issue with how flatpak is sandboxing the program.

### Work
In order to access my work machine I am utilizing RDP to access it without having to plug it into all my monitors and peripherals. Unfortunitly this was a fairly bumpy road historically I have used remmina for remote desktop connections on Linux but in recent years development has slowed down and numerious bugs have been introduced one of the larges i encounted that kicked off all the other issues was under Wayland multi-monitor support in RDP simply does not work, I use 3 Monitors to effeciently perform my work so this was a non-starter, luckly using the flatpak version you can set it to use X11 for the dispaly server using the Xwayland compositor the only issue with that is under flatpak Remmina wont pull all keyboard input propperly so key combos and keys such as the super key (Windows Key) simply do not get passed though to the remote machine. after suffering though this for 2 2 and a half weeks I discovered Thincast client which also is forced via flatpak to run under X11 but does propperly support multi-monitor and full keyboard input. It also appeared to be slightly more performant for audio passthough from the remote to local machines. I even got webcam pass though from my local workstation to my remote work PC working in Thincast


Honestly all in all things were going well but I was running into some really weird graphical issues and unfortunitly due to Gnomes signal process architecture if anything crashing one part of gnome the entire Desktop environment crashes. This lead me to around the half way point making the swithc to Fedora KDE

## Switching to KDE
