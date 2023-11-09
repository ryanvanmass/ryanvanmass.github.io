---
title: "Snap on the Server"
date: 2023-6-9 09:30:00 -04:00
categories: ["Blog"]
tags: [snap, Ubuntu]
---
## What is Snap?
Snap packages are universal and secure applications that work across different Linux distributions. Essentually Snapd the daemon responsible for managing snap packages creates sandboxed enviroments that allow you to have just the dipendancies for the software you are attempting to run without having to worry about other software on the system requiring newer or older versions of those dipendancies. Additioanlly Snap's offer better security due to not having access to the full file system by default.

Unfortunitly due to how Snaps are packaged they can be slow to execute causing very noticable delays when utilized for a desktop application. Simply google anything releated to Firefox's transition to being a Snap by default on Ubuntu based systems and you will see how bad this can be, to Canonical's Credit they are active working on improving this and have made huge leaps forward on this front but personally I dont beleive it is ready for graphical desktop applications just yet. 

## Then what is Snap Good for?
I beleive that well the main focus for Snap has been desktop applications we may start seeing a shift to more server based software to allow Linux System Administrators to more easily deploy Server applications such as Nextcloud which is a perfect example of what I am talking about, Setting up the nextcloud snap is as easy as installing the package, ensuring your firewall ports are open, and creating a set of admin credentials. Snap offers a couple of key advanates for web applications such as this that traditional deployment methods dont offer

* Simplicity of deployment
* Isolating the web application for the base file system to help limit the privlege escalation possibilities
* Auto update allow you to always stay up to date when there are vulnerabilities are found and fixed
* No noticable performance difference between Snap and traditioanl deployments in many cases

## So if Snap is so great then why isn't more widely used?
Unfortunitly do to the closed source nature of certain aspects of Snap and the delays in launching graphical applications Snaps have gotten a bit of a bad rap. Which is very unfortune since the core technology has the possibility to revoloutionize software deployment on Linux.