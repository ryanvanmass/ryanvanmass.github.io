---
title: "Port forwarding on Fortigate"
date: 2023-2-03 09:30:00 -04:00
categories: [On-Premise, Networking]
tags: [Networking, Fortigate, NAT]
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
