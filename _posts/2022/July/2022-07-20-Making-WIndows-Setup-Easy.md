---
title: "Making Windows Setup Easy"
date: 2022-07-20 09:41:44 -04:00
categories: [Technology, "Windows Desktop"]
tags: [Windows, Chocolatey, Powershell, "Tactical RMM"]
---
## Tools
If you are anything like me you spend a surprising amount of time configuring Windows after a new install and if you also hate how long it takes to complete this then this is the post for you I will be going over some of the techniques I use to automate this task

### Package Manager
Using a Package Manager such as Chocolaty will instantly cut down on the time required to complete the setup as it will handle downloading and running the installers with no input from you other then what packages it should install. You can find out more about Chocolatey [here](https://chocolatey.org/)

### RMM Platform
Most if not all of the RMM Platforms I have looked into offer some type of software staging and installation functionality personanly I use TacticalRMM which utilizes Chocolatey to install software. You can learn more about TacticalRMM [here](https://docs.tacticalrmm.com/)

### Powershell
Love it or hate it powershell allows you to edit a wide range of system settings and prefereances.

## My Strategy
### 1000 foot view
I Utilize Tactical RMM to run a Powershell Script every morning that not only configures my systems to my specifications but if I update the Powershell Script it also handles ensuring that all the system configs remain in sync with each other

### The details
I utilize Tactical RMM to run a script every day at 3am. this script pulls and runs a powershell script that is hosted on my github (you can check it out [here](https://github.com/ryanvanmass/Windows_Setup)) to install packages and customize configuration