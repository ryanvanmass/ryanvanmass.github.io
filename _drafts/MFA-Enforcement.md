---
title: "Enabling MFA Enforcement"
date: 2023-12-03 09:41:44 -04:00
categories: [Cloud, Google Workspace]
tags: []
---

## Overview
Enabling Google Workspace's MFA enforcement will remove users ability to disable 2-Step Verification (MFA). This is useful to ensure users do not enable the feature when speaking with you and then disable it after you leave.

## Enabling MFA Enforcement
1. Navigate to [Security Settings](https://admin.google.com/ac/security/2sv?journey=32)
2. Select enforce and set the New User Enrollement Period
![Image1](/assets/2023/MFA-Enforcement/image1.png)
3. Select Save

## Caveats
* Unfortunitly when you enable this feature it only effects new user logins and not existing sessions. This can be resovle by terminating any existing user session forcing the users that do not have MFA configured to reauthenticate and thus starting a new session ([Exmaple Script](https://www.ryanvanmassenhoven.com/assets/2023/MFA-Enforcement/lockout.ps1))