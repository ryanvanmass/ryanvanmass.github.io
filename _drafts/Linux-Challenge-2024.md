---
title: "30 Day Linux Challenge 2024"
date: 2024-3-24 09:41:44 -04:00
categories: [On-Premise, Nextcloud]
tags: []
---


With the Recent Announcement of Windows Recall I decided to give Windows the boot and give Linux another go as my daily driver. Since the last time I attempted this a few key things have changed, the largest of which is that I separated out my gaming machine from my main workstation and am utilizing game streaming to be able to play games on my desktop. So i've spent the last 31 on Linux




## Starting on Gnome
Out of the gate we had a strong start. I choose Fedora 40 Workstation as my Distribution of choice. Once I did the In my opinion the tweaks that should really be default to Gnome such as enabling the Maximize and Minimize buttons in the top bar I was left with a very usable Mac adjacent Desktop. After getting the basics set up I had 2 main objectives:


### Gaming
Obviously I wanted to be able to relax and play some video games after long days at work. For quite some time now I have been using Moonlight, an open source gaming streaming client that utilizes Nvidia's gamecast functionality built into their driver to stream games at extremely low latency over a network. You can learn more about Moonlight [here](https://moonlight-stream.org/). Unfortunately I very quickly ran into issues with moonlight which I had installed via flatpak crashing Gnome. I went down many rabbit holes attempting to troubleshoot this, I tried everything from networking tweaks to swapping out hardware in my workstation. Unfortunately I would end up battling this issue until the very last day of the Challenge when I finally tried the app image and discovered it appears to be an issue with how flatpak is sandboxing the program.


### Work
In order to access my work machine I am utilizing RDP to access it without having to plug it into all my monitors and peripherals. Unfortunately this was a fairly bumpy road historically I have used remmina for remote desktop connections on Linux but in recent years development has slowed down and numerous bugs have been introduced one of the largest i encountered that kicked off all the other issues was under Wayland multi-monitor support in RDP simply does not work, I use 3 Monitors to efficiently perform my work so this was a non-starter, lucky using the flatpak version you can set it to use X11 for the display server using the X-Wayland compositor the only issue with that is under flatpak Remmina won't pull all keyboard input properly so key combos and keys such as the super key (Windows Key) simply do not get passed through to the remote machine. After suffering through this for 2 2 and a half weeks I discovered the Thincast client which also is forced via flatpak to run under X11 but does properly support multi-monitor and full keyboard input. It also appeared to be slightly more performant for audio passthrough from the remote to local machines. I even got webcam pass through from my local workstation to my remote work PC working in Thincast




Honestly all in all things were going well but I was running into some really weird graphical issues and unfortunately due to Gnomes signal process architecture if anything crashed one part of gnome the entire Desktop environment crashes. This lead me to around the halfway point making the swithc to Fedora KDE


## Switching to KDE
At the time of switching from Gnome to KDE I was still having issues with both Remmina and Moonlight. I was very sad that switching to KDE did not immediately resolve all my issues but to be fair I didn't expect it to. Since I was switching out my desktop environment I figured I would also ensure I was using the best software which is when I discovered ThinCast Client which completely resolved my work issue sadly Moonlight Crashing my desktop environment would continue right though until the latter half of the last day. That said the transition to KDE was not in vain I have always prefered KDE over Gnome for its level of customizability the perfect example of this is my desktop is setup to look similar to windows with a bottom task bar with a similar layout to the windows 7/10 taskbar while my Laptop has a more MacOS feel with its App Dock and top bar. On other big use case I have for my main workstation is development, while I do have a XCP-NG Cluster for virtualizing anything I may need it is still handy being able to spin up a ephemeral VM or Docker Container on my workstation to quickly test something and I gotta say being back on Linux was so nice with projects such as [QuckEMU](https://github.com/quickemu-project/quickemu) and good old [Docker](https://developer.fedoraproject.org/tools/docker/docker-installation.html) it made quick and dirt development work a breze. Also shout out to Dolphin (KDE's File Manager) for supporting mounting multiple different types of File Shares directly in the file bar as well as being able to open a embedded terminal window, honestly Windows could learn a thing or two on how a modern File Manager should perform


## Final Thoughts
All in all the 30 Linux Challenge was a success. I will be remaining on Linux quite happily moving forward. It has everything I require from a workstation OS and more. That said it does still have room to improve its Graphical subsystem but to be fair wayland has come leaps and bounds since I last tested it

