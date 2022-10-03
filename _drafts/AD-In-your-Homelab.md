---
title: "Why you may want to run Active Directory in your homelab"
date: 2022-09-29 09:41:44 -04:00
categories: [Technology]
tags: []
---
Windows Active Directory is a very powerful Identity and system management set of utilities. In this post I will be exploring some of the core functions and how they may be useful in a homelab environment.

## Group Policy
What is Group Policy?

Group Policy is a set of policies that can be applied to groups of users or computers to allow you to customize or restrict the user experience.

### Software Instation
Within group policy you can define software deployments based on groups of Devices. One major limitation is that you can only deploy `MSI` installers not `exe`. This is primarily due to how the installers are built, there are workarounds for this limitation such as creating a powershell script that runs at login to install certain software.

### Roaming Profiles
Roaming Profiles allow you to automatically sync your user directory to a central SMB share at both Logon and log off allowing you to always have your same "local" files on any computer you login. While I did heavily test Roaming profiles when building out my deployment I ultimately didnt utilize them due to a few major (atleast for my usecase):
1. Longer Login times
    
    The Login time increased from around 30 Seconds to a Minute with minimal data being synced

2. Due to how the age of Roaming profiles it lacks certain more modern syncing features such as not completely over writing the content of the SMB share reguardless of if the content in the share is actually newer then the content on the Current PC
    
    Essentually You can only be logged into 1 PC at a time which for someone like me who is always logged into there desktop and frequently also using there laptop when not in there office this is not an option

### Drive Mounting


### Theming


## Multiple Users for different use cases




## SSO for all the things