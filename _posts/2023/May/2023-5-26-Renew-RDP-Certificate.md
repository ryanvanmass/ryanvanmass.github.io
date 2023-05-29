---
title: "How to Renew your Self-Signed Certificate for Windows RDP"
date: 2023-05-26 09:30:00 -04:00
categories: [Technology, "Windows Desktop"]
tags: [Windows, Certificate, "Remote Desktop"]
---
1. Open Windows Built in Cert Manager
2. Navigate to `Cert\LocalMachine\Remote Desktop`
3. Delete the Certificate
4. run the below commands
```
net stop SessionEnv
net start SessionEnv
```