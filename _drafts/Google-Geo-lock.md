---
title: "Restrict User Logins to a specific Geographic Region"
date: 2022-12-05 09:41:44 -04:00
categories: [Cloud, "Google Workspace"]
tags: ["Contact Aware Acccess", "Geolock"]
---
## Enable Context Aware Access
1. Navigate to the [Context Aware Access](https://admin.google.com/ac/security/context-aware) Page
2. Select `Turn On`.

## Configure Access Level
1. Select `Access Levels`
![Image1](/assets/2023/Google-Geo-Lock/1.png)
2. Select `Create Access Level`
![Image2](/assets/2023/Google-Geo-Lock/2.png)
3. Set the Name and select `Add Attribute`
![Image3](/assets/2023/Google-Geo-Lock/3.png)
4. Set the below feilds as indicated
![Image4](/assets/2023/Google-Geo-Lock/4.png)

## Configure App Policy
1. Navigate back to the [Context Aware Access](https://admin.google.com/ac/security/context-aware) Page
2. Select Assign Access Levels
![Image5](/assets/2023/Google-Geo-Lock/5.png)
3. Select The checkbox for all apps and assign
![Image6](/assets/2023/Google-Geo-Lock/6.png)
4. Select the GeoLock Access Level we created
![Image7](/assets/2023/Google-Geo-Lock/7.png)
5. Select Continue
6. Select `Block users from accessing Google desktop and mobile apps if access levels aren't met`
7. Select Continue
8. Select Assign