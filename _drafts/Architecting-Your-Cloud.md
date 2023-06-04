---
title: "Arcitecting your Cloud Deployment"
date: 2023-6-2 09:41:44 -04:00
categories: [Technology]
tags: []
---
One of the largerst and most important desisions you will have to make is if you want to base your cloud deployment on Google workspace or Microsoft's M365. Both platforms have there advantages but as the world pushes more and more to a cloud only environment I suspect we will see Google's Workspace to win more and more market share especially due to the wide product offering that is under the workspace umbrella. Once you have desided what Identity manager you want to utilize your next big choice is what mobile device manager (MDM) you would like to utilize, a few key features I would recommend looking for are:
* Device Account Management
* Windows Update Management
* LDAP Server for Authenticating Legacy Applications
* Software Management

One well rounded option would be Jumpcloud, they check all the boxes I meantioned as well as a few more, additionally they also are constantly adding new features to improve there product offering. Ok so you have your MDM and Identity management sorted now we can start looking at applications, while this will largerly depended on your needs a couple of good choices are Tailscale for your VPN Client to allow you to acces any on-premise applications and resources that you may still utilize. I would also recommend checking out OnlyOfice Desktop Document edittor as a free alternative to Microsoft office that is of course unless you choice M365 as your identity manager

Personally I do not believe that all the tooling is there just yet for a fully cloud architecture but with a service like tailscale which can seemlessly link your on-premise infrastructure with the services that are available in the cloud with a efficient and modern VPN that utilizes OAuth2 for athentication. Below is an example of a hybrid deployment that would work for most small to medium development or IT businesses

# Insert Diagrma of my hybrid deployment