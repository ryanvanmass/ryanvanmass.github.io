---
title: "System Failure"
date: 2020-10-19 11:44:04 -04:00
categories:
    - Blog
tags:
    - PSA
    - Linux
    - Windows
---
## A Little Background
So a little insight into why I am writing this post. About 3 days ago I had a System Failure and it got me thinking about how easy it is to be prepared for a system failure yet so few people are ready for it.

## Recovering from an OS Failure
### In General
Regardless of what your Operating System is make sure you know what is running on your system before you have a system failure if nothing else it will give you a great starting point for rebuilding the system

### Linux
On Linux recovering from a OS failure is simple if you spent the 5 minutes to install a backup tool such as timeshift that will automatically make snapshots of your system on a set schedule. if you have done this recovering from a OS failure is as simple as booting into a liveUSB environment installing your chosen backup tool and restore the most recent snapshot.

If you didn't set up a automatic backup system then recovering on Linux is still rather easy all you need to do is still boot into a liveUSB environment and copy any config files and data you need to keep to a different drive then reinstall your chosen distribution then copy the config files and data back followed by a reboot.

__Common Config Files to save__
* Fstab
* Crontab
* Application Specific Config

### Windows
Honestly on Windows i have never found an easy to use backup tool that worked particularly well. so instead what i recommend is insure you have any data you don't want to loose either backed up on a cloud service such as Dropbox or OneDrive or to have it stored on a different drive then the OS and to just reinstall Windows and start fresh

## TLDR
Take a little bit of time and plan on how you will recover from a system failure be it hardware or software so that it doesn't come back to bite you in the ass down the road. Luckily i had done this and was back up and running within 2 hours and at that most of the time was waiting for updates to run