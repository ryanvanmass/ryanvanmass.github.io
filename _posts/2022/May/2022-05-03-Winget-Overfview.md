---
title: "Winget Overview"
date: 2022-05-03 18:42:56 -04:00
categories:
    - Technology
    - Windows Desktop
tags:
    - Windows
    - Package Manager
---
## What is it?
winget is a powershell based package manager for Windows 10 and 11

## What is a Package Manager?
If you have ever used Linux you will already be familiar with what a package manager is but for those who haven’t, a package manager is a software package that allows you to download/ install and update programs.

## What makes winget Better Then its Alternatives?
While there are a couple of alternatives to winget for windows. winget does have the bellow advantages above its alternatives:

1. Native support from Microsoft
2. Integrates both winget native packages as well as packages from the 3. Microsoft store
3. Easy to use and install

## Installation and Configuration
### Windows 10
1. Open Microsoft Store
2. Download App Installer
3. Select yes to agree to all the source agreement terms

### Windows 11
1. Open Microsoft Store
2. Download App Installer
3. Select yes to agree to all the source agreement terms

## General Use
### Search
```powershell
winget search vscode
```

### Install
```powershell
winget install --id Microsoft.VisualStudioCode
```

Upgrade
```powershell
winget upgrade --all
```

Uninstall
```powershell
winget uninstall --id Microsoft.VisualStudioCode
```

## Closing Thoughts
In closing if you are a Linux user I dough I even need to tell you to check out winget since you probably already have but if you are a Windows user i would strongly recommend checking it out as it makes managing your programs easier then you could ever imagine