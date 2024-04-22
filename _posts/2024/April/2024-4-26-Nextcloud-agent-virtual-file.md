---
title: "Virtaul File Support on Linux for the Nextcloud Desktop Agent"
date: 2024-4-26 09:30:00 -04:00
categories: [On-Premise, Nextcloud]
tags: [Linux, Windows, "File Sharing"]
---
## What is Virtual File Support?
Virtual file support is a feature common to services such as Onedrive or Dropbox where all the files stored on the service cloud storage provider appear in your file system but are never actually downloaded until you open the file. This is done in an effort to save space on your local disk.

## Setup
### Install
#### Fedora
```bash
sudo dnf install nextcloud-client-devel
```

#### Ubuntu
```bash
sudo apt install nextcloud-desktop
```

### Enable Experiment Features
1. Open `~/.config/Nextcloud/nextcloud.cfg`
2. add `showExperimentalOptions=true` under `[General]`
3. Save and close the file

### copy librarys to where Nextcloud expects them to be (Fedora specific)
```bash
sudo cp /usr/lib64/nextcloudsync_vfs_suffix.so /usr/lib64/qt5/plugins
sudo cp /usr/lib64/nextcloudsync_vfs_xattr.so /usr/lib64/qt5/plugins
```

### Sign in
1. Launch the app
2. Sign in with your nextcloud credentials
3. Tick `Use virtual files instead of downloading content immediately`