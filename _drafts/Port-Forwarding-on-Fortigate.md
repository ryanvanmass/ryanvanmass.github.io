---
title: "Port forwarding on Fortigate"
date: 2022-12-05 09:41:44 -04:00
categories: [Technology, Networking]
tags: [Networking, fortigate]
---
## Create the NAT Rule
1. Login to the firewall and Navigate to Policy & Objects > Virtual IPs
2. Select Create New > Virtual IP
3. Fill out all the fields for your required NAT Rule and ensure you enable port forwarding




## Create the Access Policy
1. Login to the firewall and navigate to Policy & Objects > IPv4 Policy
2. Select Create New
3. Set the following fields as described bellow
    
        Incoming Interface: WAN
    
        Outgoing Interface: your LAN/VLAN interface
    
        Source: ALL
    
        Destination: The Virtual IP we created earlier
    
        Service: ALL
    
        Action: ACCEPT