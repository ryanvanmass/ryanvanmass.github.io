---
title: "Why you may want to run Active Directory in your homelab"
date: 2023-01-06 09:30:00 -04:00
categories: [On-Premise, "Self Hosted"]
tags: ["Windows", "Active Directory"]
---
Windows Active Directory is a very powerful Identity and system management set of utilities. In this post I will be exploring some of the core functions and how they may be useful in a homelab environment.

## Group Policy

### What is Group Policy?
Group Policy is a set of policies that can be applied to groups of users or computers to allow you to customize or restrict the user experience.

### Software Instation
Within group policy you can define software deployments based on groups of Devices. One major limitation is that you can only deploy `MSI` installers not `exe`. This is primarily due to how the installers are built, there are workarounds for this limitation such as creating a powershell script that runs at login to install certain software.

### Roaming Profiles
Roaming Profiles allow you to automatically sync your user directory to a central SMB share at both Logon and log off allowing you to always have your same "local" files on any computer you login. While I did heavily test Roaming profiles when building out my deployment I ultimately didnt utilize them due to a few major (atleast for my usecase) issues:
1. Longer Login times
    
    The Login time increased from around 30 Seconds to a Minute with minimal data being synced

2. Due to the age of Roaming profiles it lacks certain more modern syncing features such as not completely over writing the content of the SMB share reguardless of if the content in the share is actually newer then the content on the Current PC
    
    Essentually You can only be logged into 1 PC at a time which for someone like me who is always logged into there desktop and frequently also using there laptop when not in there office this is not an option

### Drive Mounting
This is simple but extremely helpful you can auto mount SMB Network shares

### Theming
You can apply a base theme on a per user bases to help expedite the proccess of customizing and personalizing your Workstations.


## SSO for all the things
Between LDAP and native Active directory authentication options for SSO with other products you will have a hard time finding a enterprise grade application that you wont be able to set up SSO for, additionally with the use of Azure AD sync you can integrate with Microsoft SSO to allow you to utilize the same login credentials for online services as well.