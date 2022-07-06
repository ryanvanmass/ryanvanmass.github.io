---
title: "Docker"
date: 2021-05-08T18:42:56-04:00
draft: false
categories:
    - Technology
tags:
    - Linux
    - Docker
---

## What is Docker?
Docker is a containerization technology that allows you to utilize virtualization to create and run sandboxed environments based on the same kernel.

### Why is this better then traditional virtualization?
Docker allows you to avoid the overhead of traditional Virtualization by utilizing the same kernel across all the containers as well as your host allowing you to not have to virtualize the entire opperating system

## How to Install Docker
### Debian/Ubuntu
```
    curl -fsSL https://get.docker.com -o get-docker.sh

    sh get-docker.sh

    systemctl enable --now docker

    usermod -aG docker $USER
```

### Fedora/CentOS/RHEL
```
    curl -fsSL https://get.docker.com -o get-docker.sh

    sh get-docker.sh

    systemctl enable --now docker

    usermod -aG docker $USER
```

### Manjaro/Arch
```
    pacman -S docker

    systemctl enable --now docker

    usermod -aG docker $USER
```

### WSL2/Windows
To Install Docker on a WSL2 Instance you can follow the guide [here](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-containers)


## Docker Basics
### Run
__Syntax__
```
    docker run <Arguments> <Image>
```
| Common Arguments 	| Description                       	|
|------------------	|-----------------------------------	|
| --rm             	| Remove the container when stopped 	|
| -it              	| Make container interactive        	|
| -d               	| Start Detached                    	|
| -p               	| Bridge Ports                      	|
| -v               	| Bridge Filesystem as a file mount 	|
| --name           	| Name the Container                	|

### Pull/Push
__Syntax__
```
    docker pull <Image>

    docker Push <Image>
```
Works very similar to how git push and pull works allowing you to push and pull changes from repos on https://hub.docker.com

### Exec
__Syntax__
```
    docker exec --user <User in container> <Container name or ID> <Command>
```
Allows you to run a shell command within a running container

### Build
__Syntax__
```
    docker build -t <Image name> <path to Dockerfile>
```
Build allows you to build custom docker images based on Dockerfiles

## Docker Integrations
### WSL
With the introduction of the Windows Subsystem for Linux 2 you can now run Linux based Images on a Windows System. While getting it set up can be a little buggy once you have it set up. it is super easy to use for beginners with the Docker Desktop app almost making the CLI unneeded for most operations you would be doing.

### Visual Studio Code
Visual Studio Code allows you to easily push and pull Container Images from Docker Hub as well as run containers within the intigrated terminal. This can be useful for updating base images that you may be working with to build a custom Docker images, the abillity to run a container in the intigrated terminal can be use for insuring you have all the dendancies in your Dockerfile as well as testing your new shiney docker image 

## Use cases
### Useful Tools I have Created
I have created a few custom useful docker images while testing docker I have included them bellow
| Name           	| Repo                                         	| Description                                                                        	|
|----------------	|----------------------------------------------	|------------------------------------------------------------------------------------	|
| Youtube-DL     	| https://github.com/ryanvanmass/Youtube-DL    	| Automatically downloads the highest quality version of a Youtube video or playlist 	|
| CloudC2        	| https://github.com/ryanvanmass/CloudC2       	| Easy to deploy CloudC2 Docker Image                                                	|
| Upodder        	| https://github.com/ryanvanmass/Upodder       	| Quarries RSS feeds for new Podcast Episodes                                        	|
| VS Code Server 	| https://github.com/ryanvanmass/VSCode-Server 	| An Easy to Deploy VS Code Server                                                   	|

### Multi purpose web server
Since you have to bridge host network ports to container network ports you can more easily run multiple web applications on a single server by simply mapping additional web apps to different ports when creating the container

### Easily Deploy Applicaton
Since Program creators (or the community) creates ready to use out of the box images you can more easily deploy applications in a short period of time

## Conclusion
In closing the containerization technology that docker is based on allows a new and uniuqe way to deploy applications.