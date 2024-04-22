---
title: "Consolidating your Cloud Deployments"
date: 2024-4-2 09:41:44 -04:00
categories: [Blog]
tags: []
---

If you are anything like me you have several cloud deployments deployed across sevaral different cloud providers. In this article I will be going over some of the benifits I have found of consolidating all these different cloud providers down to a single provider in this case GCP (Google Cloud).

Right off the bat a big advantage is not having to remember what is hosted where it is just a single dashboard for all your cloud resources, I am talking everything from your static websites to your software download server. Now that being said while this is very convenient it also poses a huge security risk I would highly reccomend having good logging and MFA configured on your Admin account.

By Transitioning from some of the smaller cloud providers such as Akamai Cloud Computing (formerly Linode) to more full featured cloud providers such as GCP. you gain additional functionality such as Cloud Workstations, GKE (Google Kuberneties Engine), Cloud Run with Scheduled Tasks, IAM, multiple billing accounts, etc. In the coming days you will likely see several posts about many of these features from me as I continue to fully transition to GCP from my various cloud providers.

