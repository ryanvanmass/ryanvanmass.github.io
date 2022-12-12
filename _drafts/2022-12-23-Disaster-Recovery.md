---
title: "Oh Shit something Broke... Now What?"
date: 2022-08-27 09:41:44 -04:00
categories: [Technology]
tags: []
---

## Background
For awhile now I have been testing TacticalRMM for a small number of devices that I use and maintain. Well I spent most of August and while away from home TacticalRMM decided to take a dumb and stop working. In this post I will be going over some of the troubleshooting steps I have taken as well as more broadly how I troubleshoot issues such as this

## The Issue
the backend service/service's responsible for any functionality other then the UI appear to have ceased communicating correctly

## So What first?
**Review any and all Logs** - This may seem obvious but time and time again I see people over look this logs are great for telling you what is happening and any/all errors messages to assist with troubleshopting.

In reviewing the Logs and error messages there appears to be a issue with how the TacticalRMM service communicates with the MeshCentral serivce. When checking the Configuration it appears to be blank now. Im honestly not sure what changed I'm the only person who has access to the platform so we can rule out user error since I have been traveling and not utilizing it

**Check for Backups** - again this should be obvious checked if you have backups and if so how recently they are from.

Luckily I do have a single backup from before I did the last upgrade. so it is a couple months old at this point but its worth a shot to see if I can use it to restore to a new machine

## So What Next?
So at this point I have determined that the best course of action is to restore the backup due to not having a copy of the credentials required to allow the two services to communicate together.

## Well how did it turn out?
So some time has past and unfortuntly in this particular case due to likely the backup being several versions behind and there restore utility auto installing the latest version I was unable to restore from backup and ended up deploying a new server