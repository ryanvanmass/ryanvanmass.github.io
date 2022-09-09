---
title: "How to set up SSH on Windows"
date: 2022-09-8 09:41:44 -04:00
categories: [Technology]
tags: []
---
## What is SSH?
The Secure Shell Protocol or SSH is a cryptographic network protocol for operating network services securely over an unsecured network

## Setup

``` powershell
# Add the SSH Server "Feature" to Windows
Add-WindowsCapability -Online -Name OpenSSH.Server~~~~0.0.1.0

# Start the service and set it to auto start
Start-Service sshd
Set-Service -Name sshd -StartupType 'Automatic'

# Adds a firewall rule to allow the ssh connections
New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH SSH Server' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22 -Program "C:\Windows\System32\OpenSSH\sshd.exe"

# Set Powershell as default shell
New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force
```

**Note:** When connecting to a user account accociated with a Microsoft account run `whoami` to get your local username and use your microsoft account password to authenticate