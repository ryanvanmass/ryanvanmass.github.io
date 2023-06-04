---
title: "Arcitecting your Cloud Deployment"
date: 2023-6-2 09:41:44 -04:00
categories: [Technology]
tags: []
---
# Intro/Overview
One of the largerst and most important desisions you will have to make is if you want to base your cloud deployment on Google workspace or Microsoft's M365. Both platforms have there advantages but as the world pushes more and more to a cloud only environment I suspect we will see Google's Workspace to win more and more market share especially due to the wide product offering that is under the workspace umbrella. Once you have desided what Identity manager you want to utilize your next big choice is what mobile device manager (MDM) you would like to utilize, a few key features I would recommend looking for are:
* Device Account Management
* Windows Update Management
* LDAP Server for Authenticating Legacy Applications
* Software Management

One well rounded option would be Jumpcloud, they check all the boxes I meantioned as well as a few more, additionally they also are constantly adding new features to improve there product offering. Ok so you have your MDM and Identity management sorted now we can start looking at applications, while this will largerly depended on your needs a couple of good choices are Tailscale for your VPN Client to allow you to acces any on-premise applications and resources that you may still utilize. I would also recommend checking out OnlyOfice Desktop Document edittor as a free alternative to Microsoft office that is of course unless you choice M365 as your identity manager

Personally I do not believe that all the tooling is there just yet for a fully cloud architecture but with a service like tailscale which can seemlessly link your on-premise infrastructure with the services that are available in the cloud with a efficient and modern VPN that utilizes OAuth2 for athentication. Below is an example of a hybrid deployment that would work for most small to medium development or IT businesses

## Insert Diagrma of my hybrid deployment

In this particular example I am utilizing Google Workspace due to its web first methodology and the ability to seamlessly leverage Googles wide product offerings via the use of there API's in GCP (Google Cloud Platform). Additioannly I have chosen Jumpcloud for my MDM primary due to its ability to ability to both act as a MDM but also an Identity management bridge allowing you to utilize the same login on both on-premise applications and services via LDAP as you do in the cloud with Googles oauth2 "login with Google" system. While there are many NAS offerings I personally really like the versitility that ZFS offers which is natively supported by TrueNAS. It allows you to easily backup your cloud data as well as have a system to rollback changes if there was ever to me a cryptolocker incident.

# On-Premise Considerations
primarily due to cost it is not feasible for a lot of organizations to host everything in the cloud this is where need to be really causes when planning out what part of your cloud architecture is going to be locally hosting and what technology's you utilize. Some guiding questions that I have found help me in determining if the software I am looking at is a good fit for my deployment needs are:
* Will User authentication integrate with our existing authentication requirements?
* How long has the software been around and is it widely used by other organizations?
* What is the Cost of the software?
* Is there vendor offered support available?
* How will users access the software? (eg via a web page, a desktop app, etc)

