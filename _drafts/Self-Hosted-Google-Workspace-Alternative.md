---
title: "Self Host your Own Google Workspace Alternative With Nextcloud"
date: 2024-1-18 09:41:44 -04:00
categories: [On-Premise, Nextcloud]
tags: []
---

For those who have been living under a rock Google Workspace is Googles Enterprise SAS cloud office suite of products consisting of 4 main components
* Email
* Document Editting
* Document Sharing/Browsing
* Chat/meeting

With the exception of email (which I recommend you use a SAS solution for( you can fairly easily reach feature parity with Google Workspace with a single VM running a couple of services. In this post we will be walking through how to set this up and a couple of configuration considerations.

## Basic Server Setup
1. Run the bellow Commnad to install the 2 server components we will require to get everything running
```
snap install nextcloud onlyoffice-ds
```


## Configuring nextcloud Talk