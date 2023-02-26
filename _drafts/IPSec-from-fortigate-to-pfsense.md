---
title: "How to Configure a Site to Site VPN from Fortigate to PFSense"
date: 2022-3-17 09:30:00 -04:00
categories: [Technology, Networking]
tags: [Fortigate, PFSense, VPN]
credit: "https://getlabsdone.com/how-to-configure-ipsec-site-to-site-vpn-between-fortigate-and-pfsense/Fortigate/"
---

## Overview
Today we will be going over how to create a Site to Site VPN between a Fortigate Appliance and a PFSense Firewall. Below is a overview of the Topology we are got to be using

![Topology](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/Topology.png)

## Fortigate
### VPN Tunnel
1. Login to your Fortigate Appliance
2. Under VPN > IPSec Wizard

Name the Tunnel your prefered name and select Custom
![Wizard](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/Step2.png)

3. Configure the VPN Tunnel settings

    a) Set the Remove Gateway to the WAN IP of your PFSense Firewall
    
    b) Set the Interface to your WAN interface
    
    c) Enable NAT Traversal

![Tunnel](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/step3.png)

4. Configure Authentication
    
    a) Set the Authentication Method to Pre-shared Key
    
    b) Enter a Pre-shared Key
    
    c) Select IKE version 2

![authentication](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/step4.png)

5. Configure Phase 1 Proposal

    a) Encryption: AES128
    
    b) Authentication: SHA256
    
    c) Diffie-Hellman Group: 14

    d) Key Lifetime: 28800

![phase1](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/step5.png)

6. Configure Phase2 Configuration

    a) Configure the Phase2 Name
    
    b) Configure the Local Address

    c) Configure the Remove Address

![phase2](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/step6.png)

7. Configure the Phase2 Proposal

    a) Encryption: AEC128

    b) Authentication: SHA2556

    c) Enable Replay Detection

    d) Enable Pefect Forward Secrecy (PFS)

    e) Diffie-Hellman Group: 14

    f) Enable Auto-negotiate

    g) Seconds: 3600

![phase2-proposal](/assets/2023/IPSec-from-fortigate-to-pfsense/Fortigate/step7.png)


### Security Policy










## PFSense
### VPN Tunnel
1. Log into PFSense and naviagte to VPN > IPSec
2. Select Add P1
3. Configure the Phase 1 Configuration
    
    a) Set Interface to WAN
  
    b) Set Remote Gateway to the WAN IP of your Fortigate Appliance

![PFPhase1](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step3.png)

4. Configure Phase 1 Authentication
    
    a) Authentication Method: Mutual PSK
    
    b) Enter the Pre-Shared key you created in Fortigate

    c) Confgigure the Encryption Algorithm as follows
        
    * Key Length: 128 bit
    * Hash: SHA256
    * DH Group: 14 (2048 bit)

![PFAuth](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step4.png)

5. Configure the Life Time

![PFLifeTime](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step5.png)

6. Add a P2

![PFP2](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step6.png)

7. Configure the P2 Network Configuration
    
    a) Mode: Tunnel IPv4
    
    b) Local Network: Configured to your LAN Network for this firewall
    
    C) Remote Network: Configure the LAN Network for your Fortigate Firewall
    
![PFNetwork](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step7.png)

8. Configure the Phase 2 Proposal

    a) Encryption Algorithms: AES 128 bits
    b) Hash Algorithms: SHA256
    c) PFS Key Group: 14 (2048bit)

![PFP2A](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step8.png)

9. Configure Life Time

![PFP2LifeTime](/assets/2023/IPSec-from-fortigate-to-pfsense/PFSense/step9.png)

