---
title: "Self Host your Own Google Workspace Alternative With Nextcloud"
date: 2024-1-18 09:41:44 -04:00
categories: [On-Premise, Nextcloud]
tags: []
---

For those who have been living under a rock Google Workspace is Googles Enterprise SAS cloud office suite of products consisting of 4 main components
* Email
* Document Editting
* Document Sharing/Browsing
* Chat/meeting

With the exception of email (which I recommend you use a SAS solution for( you can fairly easily reach feature parity with Google Workspace with a single VM running a couple of services. In this post we will be walking through how to set this up and a couple of configuration considerations.

## Basic Server Setup
Install your Distribution of choice in this post I will be using Ubuntu 22.04

### Install Docker and Docker Compose
```bash
sudo apt install docker.io docker-compose -y
```

## Configuring your Docker Compose file for Nextcloud
1. use your file editor of choice to create a `docker-compose.yml` file and enter the below in it
```bash
---
services:
  nextcloud:
    image: lscr.io/linuxserver/nextcloud:latest
    container_name: nextcloud
    environment:
      - PUID=1000
      - PGID=1000
      - TZ=Etc/UTC
    volumes:
      - /path/to/appdata:/config
      - /path/to/data:/data
    ports:
      - 443:443
    restart: unless-stopped
```

Alright at this point we have our base Nextcloud platform that we can use to build out self hosted ecosystem on. By default Nextcloud will allow us to browse and share files lets next configure chat/meeting

## Configuring nextcloud Talk