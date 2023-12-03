---
title: "LDAP authentication for Active Directory on Fortigate"
date: 2023-3-17 09:30:00 -04:00
categories: [Networking]
tags: [Fortigate, LDAP, "Active Directory"]
---
## Prerequisets
Have a "Service" user account setup in active directory to allow your firewall to perform LDAP authentication

## Setup
1. Login to firewall
2. Naviate to Users & Devices > LDAP Servers
3. Select Create New
4. Set the following feilds as bellow

        Name: Active Directory
        Server IP/Name: IP of your Domain Controller
        Server Port: 389
        Common Name Identifier: sAMAccountName
        Distinguished Name: The Distinguished Name of your root domain (dc=,dc=)
        Bind Type: Regular
        User DN: The Distinguished Name of the "Service" Account you created (CN=,OU=,DC=,DC=)
        Password: Password of your "Service" Account