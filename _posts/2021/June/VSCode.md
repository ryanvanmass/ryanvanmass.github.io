---
title: "Visual Studio Code"
date: 2021-06-01T13:33:52-04:00
draft: false
categories:
    - Technology
tags:
    - Linux
    - Windows
    - Docker
---

## What is Visual Studio Code
At its roots Visual Studio Code (VSCode) is an opensource IDE or Integrated Development Enviroment developed and maintianed by Microsoft. While at its roots it is just an IDE both the opensource community as well as Microsoft have turned it into so much more. This post will go over some of my favorite features and use cases of VSCode

## Windows Subsystem for Linux 2 (WSL2) Intigration
VSCode has the unique ability to launch instances of itself that live within a WSL2 Contianer allowing you to easily develop Software using the same IDE that you are used to while being able to take advatage of the awesomeness that is Linux.

## Docker Integration
The Docker integration allows developers to more easily develop docker instances. The Integration allows you to pull and push docker images as well as launch contianers from within VSCode

## Multiple Supported Languages
VSCode Supports all the traditional programming languages such as C, C++, C#, Python, etc. it also supports scripting Languages such as Bash and Powershell. In addition to all this it also support certain file formats such as Dockerfile and Markdown allowing you to more easily build these files. But what I believe makes VSCode uniuqe is that it does all this plus provides easy to install and use pluggins that assist you in writing the best possible code. 

## Visual Studio Code Server
Thanks to the Opensource community we have a amazing project called [Code-Server](https://github.com/cdr/code-server.git). You can host an instance of VSCode that can be accessed from Multiple devices via a network connection.

### Multiple Instances on one Server
With containerization softwares such as Docker you could run multiple instances of Code-Server allowing you to have one server that all your developers connect to to do there development work

### Accessing Code-Server on the go
Thanks to the Opensource nature of Code-Server and VSCode in addition to being able to access it from any device that has a web browser you can also ge apps such as the one im using to write this post called servediter on my Ipad. While this app does have a paid subscription for them to host your Code-Server, if you are hosting your own it is free and while i did just discover this app and havent used it for long it seems to work really well