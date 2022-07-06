---
title: "Nextcloud Spotlight"
date: 2021-08-13T21:02:10-04:00
draft: true
categories:
    - Technology
tags:
    - Spotlight
    - Linux
    - Docker
    - Nextcloud
---

## Overview
Nextcloud is selfhosted cloud platform that gives almost feature parity to platforms such as Google's Workspace platform.

## Installation
Nextcloud can be easily installed via the following ansible playbook
```
    apt install ansible
    ansible-pull -U https://github.com/ryanvanmass/Nextcloud_Ansible Deploy.yml
```

## Key Features
All of these Key features can be easily installed and configured via the Apps Store within the Web UI and integrate with each other.

### Tasks and Deck
#### Tasks
Tasks is your traditional ToDo List with the added ability of being able to share Tasks and ToDo lists with other users

#### Deck
Deck is your traditional Kanban Board software that fully integrates with tasks as well as your Calendar allowing you to easily manage tasks you or your team are working on as well as tasks you have assigned to other users

### Files
Allows you to backup and manage your files from an easy to use Web UI

### Calendar/Mail/Contacts
Gives you all the functionality of a software such as outlook but with a modern design and from a web browser

### OnlyOffice
With an easy to Configure OnlyOffice Document Server Integration you can edit and collaborate on Documents from either the Nextcloud directory via the web browser or from the Onlyoffice Desktop editor which can also connect to Nextcloud

### File Sharing
File Sharing allows you to easily share files both internally and externally via easy to manage Download and collaboration links

## Advantages over services such as Google Drive or Microsoft 365
The biggest advantage of a platform such as Nextcloud is obviously cost aside from the cost of running the server to host Nextcloud there are no mandatory license fees. There are Options offered by Nextcloud for Enterprise Support for those who would like to run this in a business environment