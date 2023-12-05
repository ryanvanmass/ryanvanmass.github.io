---
title: "Enabling MFA Enforcement"
date: 2024-1-4 09:41:44 -04:00
categories: [Cloud, Google Workspace]
tags: [GAM, MFA]
---

## Overview
Enabling Google Workspace's MFA enforcement will remove users ability to disable 2-Step Verification (MFA). This is useful to ensure users do not enable the feature when speaking with you and then disable it after you leave.

## Enabling MFA Enforcement
1. Navigate to [Security Settings](https://admin.google.com/ac/security/2sv?journey=32)
2. Select enforce and set the New User Enrollement Period
![Image1](/assets/2023/MFA-Enforcement/image1.png)
3. Select Save

## Caveats
* Unfortunitly when you enable this feature it only effects new user logins and not existing sessions. This can be resovle by terminating any existing user session forcing the users that do not have MFA configured to reauthenticate and thus starting a new session ([Download Script](https://www.ryanvanmassenhoven.com/assets/2023/MFA-Enforcement/lockout.ps1))
```powershell
 Write-Output "primaryEmail,isEnrolledIn2Sv" >> users.csv
 gam print users is2svenrolled | Select-String False | Out-File users.csv -Append
 gam csv users.csv gam user ~primaryEmail signout
 Remove-Item users.csv
```
* Ensure you have Backup Codes Generated for all users prior to enabling this feature to ensure they can still sign in once the feature is enabled this can be done with the below command
```powershell
gam all users update backupcodes
```
* Depending on where you look in the Google Workspace Admin Dashboard you could be looking at recent data to rather outdated data on who has MFA enabled in your Organization. To get realtime data you can run the below command to see the status of who does not have it enabled
```powershell
gam print users is2svenrolled | Select-String "False"
```
