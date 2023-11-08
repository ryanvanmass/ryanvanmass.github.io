---
title: "The Benifits of Running a Local DNS Server"
date: 2023-4-14 09:30:00 -04:00
categories: [On-Premise, Networking]
tags: [DNS]
---
So we all know that we heavily rely on DNS to connect to anything on the internet but why would you want to have your own local DNS server? In this post I am goign to be going over a couple of usecases I actually have for having a few different local DNS servers.

## Easily access Local Resources
If you are anything like me you are running multiple local services and cant keep the IP address's straight in your head, adding the ability to access services via nice clean URLs such as `plex.local` or `unifi.local` is a life changer for both you as well as anyone else who you may have given access to these services. Additionally if you are running a Active Directory at home (you can learn more [here](https://www.ryanvanmassenhoven.com/posts/AD-In-your-Homelab/)) being able to access your workstations or servers via there FQDN (Fully Qualified Domain Name) means that IP address become all but irelivent to managing systems.

## Content Filtering
While the first thing that may come to some peoples mind when the conversation of content filtering is brought up is ad blocking there is actually a entire industry around content filtering to block certain suject matters such as adult material or political content in certain enviroments. This used to be achived with softwares such as Net Nanny but now it is more often acheived by manipulating the DNS on your local network to allow you to more easily control the content your End users can view.