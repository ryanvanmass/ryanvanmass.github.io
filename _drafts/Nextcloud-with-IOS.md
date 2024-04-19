---
title: "Sync Nextcloud Reminders and Calendars on IOS"
date: 2024-3-24 09:41:44 -04:00
categories: [On-Premise, Nextcloud]
tags: []
---
## Prep Work
In order to utilize Nextcloud to Sync Nextcloud Tasks to Reminders and Nextcloud Calendars to Calendars you must be using HTTPs with a valid SSL Certificate. you can learn more about that [here](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-nextcloud-on-ubuntu-20-04#step-4-securing-the-nextcloud-web-interface-with-ssl).

## Setup
1. On your IOS device open the settings app
2. Navigate to `Calendars > Accounts`
3. Select Add account
4. Select Other
5. Add CalDAV account
6. Enter your Server and Login Infomation and select Next
7. Select `Calendars` and `Reminders` to Sync
8. Select Save

## Setting Nextcloud Tasks as the default reminders list
1. On your IOS device open the Settings app
2. Naviate to `Reminders`
3. Set `Default List` to your prefered Nextcloud Tasks List

## Settint Nextcloud Calendar as your Default Calendar
1. On your IOS device open the Settings app
2. Naviate to `Calendar`
3. Set your `Default Calendar` to your prefered Nextcloud Calendar