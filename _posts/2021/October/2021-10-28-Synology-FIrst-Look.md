---
title: "Synology First Look and Thoughts"
date: 2021-10-28 18:42:56 -04:00
categories:
    - Technology
tags:
    - NAS
    - Synology
    - First Look
---

## Disclaimer
All Testing was done on a DS120j

## Install/Setup
The Install and Setup was as simple as attaching the hardrive to the mount, Connecting power and network, and following the simple onscreen prompts.
While being more then capable of Installing and setup TrueNAS or a Linux server with file shares the simplicity of setting up the Synology was very refreshing

## Configuration
Creating a File share is as simple as clicking create under the File Share tab in the control center and assigning the users or user groups you want to either have read only or read and write permissions.

## File Shares
You have the option to individually encrypt your File shares allowing Data at rest protection. This is invaluable for two reasons one being if the device is ever stolen as long as they don’t crack your key your data is secure. The second is if your NAS is in a hostile network it adds one extra layer of security for your data.

### SMB/Samba
The SMB File Shares are simple but get the job done, You can easily manage individual user permissions as well as group permissions. You can also prevent users from users from editing existing files or downloading files off the network share. The Ladder of these features would be very useful to ensure employees or your family isnt downloading the file to there PC circumventing the NAS’s Redundancy and security entirely.

### NFS
Getting the Network File Sharing Protocol (NFS) working is as easy as enabling the service in settings and adding a host to the allowed device list (Whitelist) for the share you would like to make available

## User Management
If you have ever administered a Windows Active Directory then the User creation and management will be very familiar to you. You only need a username and password to create a account but you can also add a email to allow password resets via email (if the feature is enabled and configured). Once the User account is created you are given quite a few QoS features such as:
* Per volume storage quota
* Per service Bandwidth limit
* Share permission Management
* Per application permission Management
* Data Redundancy

## Cloud Backup
Very much like TrueNAS you are able to back up your Synology NAS to most popular cloud platforms including several S3 Storage Providers. You can find a full link of the support platforms here: https://www.synology.com/en-ca/dsm/6.2/software_spec/cloud_sync.

## Data Scrubs
While I was unable to test the Data Scrubbing due to it not being support on my model of NAS. My Understanding is that Synology is utilizing BtrFS to Scan your Data at the block level to ensure data integrity so that you wont fall victim to what is known as bit-rot.

## Shared Folder Snapshots
Again Unfortunately I was unable to test this due to it not being support on my configuration, but what this allows you to do is essentially take snapshots in time of the Shared folder so that you can easily roll back to it to either recover from Malware or recover a deleted file. This is utilizing the BtrFS filesystem to allow this to work.

## Additional Apps
In addition to the core functionality of being a File Server. Synology offers a verity of Apps that add additional functionality such as being able to easily back up all the Photos on your phone (Yes this works on iPhone), or a Google Drive Replacement, or add a VPN Connection so that you can access it securely remotely without opening any firewall ports

## Overall UI and UX
The UI is very Gnome like in that everything is a a app that you open on a desktop environment that lives in your web browsers. To be honest at first I hated it but it has grown on me the more I have used it to the point where now that I am familiar with it I almost prefer it over other web based UI’s such as cockpit, While at first glance it appears to be super simple upon further inspection it has most of the advanced features you would expect and require.

## Closing Thoughts
In Closing I am looking forward to when I can replace my Primary NAS with a Synology NAS with btrfs so that I can still take advantage of the File Integrity checking and Snapshotting. If you need an easy to use and manage NAS I would highly suggest taking a look at Synology they have some very competitive options when it comes to price and performance

## Useful Links:
Full Walktough for setting up Synology DSM 7: https://www.youtube.com/watch?v=MyQy4Wj679A&t=4s&ab_channel=WunderTech

Live Demo of DSM 6.2 and 7.0:
https://demo.synology.com/en-ca/dsm?utm_source=feature&utm_medium=CloudSync&_ga=2.268495158.656428049.1634853140-2023181413.1634853140