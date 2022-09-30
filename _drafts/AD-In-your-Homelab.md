---
title: ""
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


### Drive Mounting


## Multiple Users for different use cases


