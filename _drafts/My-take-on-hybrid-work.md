---
title: "Will Hybrid Work work in 2023?"
date: 2023-05-12 09:41:44 -04:00
categories: ["Blog"]
tags: []
---
Will Hybrid work work for companies in the long term? Personally I believe that if a company implements it correctly it can work very well. In this post I will be going over why and my thoughts on how company's should implement a Hybrid working environment

## The Advantages and disadvantages
### The Advantages
One of the main reason I believe that it will work well for companies is it allows employees to have the best of both being in the office with all the advantages that intales as well as the flexibility to work remotely when needed, for example say you need to get work done on your car or you need to travel briefly for personal reasons. 

Additionally it forces companies to re-evaluate there storage and networking strategies to allow both a more collaborative and more geodiverse functionality leveraging the cloud often times utilizing tools such as Google Drive and M365. That being said while these cloud platforms can be revolutionary from a collaborative standpoint they do leave a lot to be desired from a security standpoint, a great example of this is in google workspace you have very limitted options in how you can limit or allow uses to interact with or share files

Furthermore the strategies required to allow companies to effective implement Hybrid work also allow companies to more easily stand up and secure new office locations, where all that is really required is a internet connection, a firewall, and a WiFi solution.

### The Disadvantages
While many companies have been embracing the cloud there are some major limitations to the current cloud offerings, some of which are:
* no cloud platform offers the level of integration both user and machine managemeant that an on premises active directory deployment does
* You are adding a huge threat vector storing all your data in the cloud and you **must** have a rock solid security plan to avoid a breach
* you are trading larger single occurances upfronot costs for ever growing ongoing monthly/yearly license fees

## Tips for your technology stack for an effective Hybrid work environment
1. Utilize either google drive or M365 for your day to day file storage, but a NAS for your archival storage
    * this will allow you to be able to utilize all the collaborative features that these cloud platforms offer while still allowing you to keep costs down
    * 

2. Pick either M365 or Google workspace but dont mix both
    * The primary reason for this is simplify you will be doubling your cost
    * These platforms due to there nature do not play well together

3. When choosing a VPN to access any on premises infrastructure you may still have choose something modern
    * At the very minimum I would recommend utilizing an SSL based VPN but honestly with the introduction of the wireguard protocol and its vastly improved efficiency across the board I would recommend looking into a service such as Tailscale 