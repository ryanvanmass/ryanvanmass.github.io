---
title: "How To Create a Virtual Machine on XCP-NG from the Command Line (Bash)"
date: 2023-05-12 09:41:44 -04:00
categories: [Technology]
tags: []
---
## Creating the VM Image
### List Templates
```bash
xe template-list | grep "Windows Server 2022"
```

### Create the VM
```bash
xe vm-install template="Windows Server 2022 (64-bit)" new-name-label="Windows Server"
```

## Attaching the ISO
### View the Available ISO's
```bash
xe cd-list | grep 2022
```

### Attached the ISO
```bash
xe vm-cd-add uuid=426b9683-a34e-6a83-cee5-d131fa5d66bf cd-name=Windows-Server2022.iso device=1
```

## Configure the Networking
### List Configured Networks
```bash
xe network-list
```

### Create the Interface
```bash
xe vif-create vm-uuid=426b9683-a34e-6a83-cee5-d131fa5d66bf network-uuid=6740ed63-ab4b-e86a-01cb-b23c82fc6f12 device=0
```

## Resize Disk
### Get Disk UUID
```bash
xe vm-disk-list vm=426b9683-a34e-6a83-cee5-d131fa5d66bf
```

### Resize Disk
```bash
xe vdi-resize uuid=de14deea-cbad-4428-9edd-fca87e2c634d disk-size=64GiB
```

## Increase RAM
```bash
xe vm-memory-limits-set dynamic-max=4GiB dynamic-min=2GiB static-max=4GiB static-min=2GiB uuid=426b9683-a34e-6a83-cee5-d131fa5d66bf
```

## Start VM
```bash
xe vm-start uuid=426b9683-a34e-6a83-cee5-d131fa5d66bf
```

