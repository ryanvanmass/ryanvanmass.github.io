---
title: "Migrating from the Cloud to on Premises"
date: 2024-9-6 09:30:00 -04:00
categories: [Blog]
tags: ["XCP-NG", "Linux", "Linode" ]
---
So you have made the decision to migrate from the cloud back on premise but are wondering where to start. Well I recently made this exact same decision mainly because I was tired on how expensive cloud storage was for the few web services I manage.

## Background
For any of this to make sense I guess I should give you a little background before the migration I had two main services I ran in Linode, a Pfsense firewall for a full tunnel "Privacy" VPN for my parents as well as a nextcloud server that my wife uses for software downloads for her customers and it was this nextcloud instance that was the catolice for the migration as well as Linode being aquired by Akimia and me having concerns how long it will remain as a service they offer but that is a conversation for another day.

## Planning your Migration
There are a few main considerations that you should take into account when beginning to plan your migration
### 1. What services are you migrating and was are you depricating
The only service I planned on Migrating was my wifes nextcloud instance since my parents had shown intrest in no longer wanting the "Privacy" VPN

### 2. Downtime length/Customer Impact
Since the only service I was migrating is the nextcloud instance I choose a day that the business was closed so that the impact would be minimal

### 3. Service Level Post Migration
While I cant match Linodes SLA which appears to be between 99.9% and 99.99% (8.77 Hours to 52.60 Min per yerar) I do have fairly relyable internet and power and with the addition of DDNS (Dynamic DNS Client) I can likely come close

### 4. Tech stack
I choose to deploy a XCP-NG pool that was specific to External services managed by my existing Xen Orchestra Instance. I did this mainly because then it would be fully integrated with my backup and managmenet systems.

### 5. Backups
Make sure you have a plan for both local and offsite backups. For me this is all managed via my primary TrueNAS Server

## Testing before your Migration
I have found regardless of the project it is always wise to test and test and test and keep testing ontil your confident you could do the migration in your sleep and that if you do encounter any issues you have the knownelege and skill to overcome them. Personally when prepping for this migration I ran through this migration probobly a half dozen to a dozen times before the final migration. I went as far as to run a migrated version fo the serivices under a slighly different URL (eg. dev.example.com) to allow me to test and ensure that all types of clients will still be able to access the files on the migrated service once the migration is complete.


### Migration Plan
I would reccomend running though and testing/updating your migration plan enough times that you can follow said migration plan word by word and it be idiot proof for lack of a better way of putting it.

## Migration Day
Give yourself enough time to migarate all of the config and data I would reccomend if you have to give a estimate for how long it is going to take estimate 1.5X as long as you actually expect it to take that way you have some wiggle room for if it takes longer then you though or if you need to take a 5-10 min break to cool your nerves

for me the data transfer from starting the backup to service being back up I expected to take roughly 2 hours but i was quoting 3.5 to allow me for that extra time for if something took longer then i was expecting

With any luck if all goes well you will successfully be able to migrate back to on premise
