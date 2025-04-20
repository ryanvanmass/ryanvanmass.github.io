---
title: "Setting up Bridge Interfaces for KVM"
date: 2025-6-06 09:30:00 -04:00
categories: [On-Premise, KVM]
tags: [KVM, Networking, Bridge]
source: https://ostechnix.com/install-and-configure-kvm-in-ubuntu-20-04-headless-server/
---
1. Update your `/etc/netplan/00-installer-config.yaml` file based on the below template
``` yml
network:
    ethernets:
        ens18:
            dhcp4: false
    bridges:
      br0:
        interfaces: [ens18]
        addresses: [Interface IP/Subnet]
        gateway4: gateway IP
        mtu: 1500
        nameservers:
          addresses: [8.8.8.8,8.8.4.4]
        parameters:
          stp: true
          forward-delay: 4
        dhcp4: no
        dhcp6: no
    version: 2
```

2. Run `sudo netplan apply` to apply the network changes you just made
3. create `host-bridge.xml`
``` xml
    <network>
      <name>host-bridge</name>
      <forward mode="bridge"/>
      <bridge name="br0"/>
    </network>
```

4. Run `sudo virsh net-define host-bridge.xml` to create the KVM Bridge Interface
5. Run `virsh net-start host-bridge` to start the interface
6. Run `virsh net-autostart host-bridge` to enable the interface to run at start