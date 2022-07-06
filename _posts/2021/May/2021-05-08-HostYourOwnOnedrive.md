---
title: "Host Your Own OneDrive"
date: 2021-05-08 10:43:54 -04:00
categories:
    - Technology
tags:
    - Linux
    - Docker
---

## Introduction
Have you ever wanted the connivance of OneDrive but without the need to trust someone else with your Data. NextCloud allows you to do just that and in this article we will be going over how to install and configure it.

## Prerequisites 
### Docker
1. Download the Docker install script
```bash
    curl -fsSL https://get.docker.com -o get-docker.sh
```

2. Run the Docker install script
```bash
    sh get-docker.sh
```

3. Enable the Docker Service to run at startup
```bash
    systemctl enable --now docker
```

4. Add your User to the Docker group
```bash
    usermod -aG docker $USER
```

5. Restart your System


## Install 
1. To Install NextCloud we will first need to get the latest NextCloud Docker image. This can be done by running the bellow command
```bash
    docker pull nextcloud:latest
```

2. Next we need to create our Docker container with a couple arguments
```bash
    docker run -d -p 8080:80 --name NextCloud nextcloud:latest
```
__Command Breakdown__
| Argument         	| Meaning                                                 	|
|------------------	|---------------------------------------------------------	|
| docker run       	| Creates a container with the specified arguments        	|
| -d               	| Create the container detached                           	|
| -p 8080:80       	| Connect Container port 80 to host port 8080             	|
| --name           	| Names the Container to more easily manage it later      	|
| nextcloud:latest 	| Selects the docker image to use to create the container 	|

3. Navigate to https://localhost:8080 to begin setup

4. You should be greeted with a page similar to the one bellow if not refresh the page it may take a couple minutes to load

![Image1](/assets/2021/HostYourOwnOnedrive/AdminCreate.png)

5. Enter your desired Username and Password and Select Finish Setup

## Configuration

### Basic Config
__Installing Programs__

Programs are installed via Apps. 
1. You can access apps by selecting the user icon in the top right of the screen

![Image2](/assets/2021/HostYourOwnOnedrive/UserIcon.png)

2. Select Apps

![Image3](/assets/2021/HostYourOwnOnedrive/Dropdown.png)

3. Locate an App you want to "Install" and select Enable 

__Uninstalling Programs__

Very similar to how we Install Programs you can also Uninstall them
1. You can access apps by selecting the user icon in the top right of the screen

![Image2](/assets/2021/HostYourOwnOnedrive/UserIcon.png)

2. Select Apps

![Image3](/assets/2021/HostYourOwnOnedrive/Dropdown.png)

3. Locate an App you want to "Uninstall" and select Disable

### User Management
__Adding Users__

1. To add a new User select your user icon in the top right of the screen

![Image4](/assets/2021/HostYourOwnOnedrive/UserIcon.png)

2. Select Users

![Image5](/assets/2021/HostYourOwnOnedrive/Dropdown2.png)

3. Select New User

![Image6](/assets/2021/HostYourOwnOnedrive/NewUserButton.png)

4. Fill in the Provided Fields and select the Check Mark

![Image7](/assets/2021/HostYourOwnOnedrive/NewUserForm.png)

__Removing User__

1. To remove a User select your user icon in the top right of the screen

![Image4](/assets/2021/HostYourOwnOnedrive/UserIcon.png)

2. Select Users

![Image5](/assets/2021/HostYourOwnOnedrive/Dropdown2.png)

3. Select the `...` 

![Image8](/assets/2021/HostYourOwnOnedrive/userdotdotdot.png)

4. Select Delete User

**Note**: You can also disable a user instead of deleting it from this menu 

![Image9](/assets/2021/HostYourOwnOnedrive/UserDropdown.png)

### Trusted Domain Management
To add another trusted domain that you can connect to the Nextcloud site from run the following command
```bash
    docker exec --user www-data NextCloud php occ config:system:set trusted_domains 1 <IP:Port>
```

__Command Breakdown__
| Argument                                      	| Meaning                                                    	|
|-----------------------------------------------	|------------------------------------------------------------	|
| docker exec                                   	| Tells docker to run the following in a specified container 	|
| --user www-data                               	| Tells Docker to run the following command as `www-data`    	|
| NextCloud                                     	| Name of the Docker Container to run the command in         	|
| php occ                                       	| invokes the commandline configuration tool for Nextcloud   	|
| config:system:set trusted_domains 1 `<IP:Port>` 	| Add's the new trusted domain to the Nextcloud config       	|

## Recommendations
Bellow is a list of apps I recommend to give you full Onedrive like functionality

| App                                                          	| Reason                                                                                                            	|
|--------------------------------------------------------------	|-------------------------------------------------------------------------------------------------------------------	|
| Accessibility                                                	| It allows you to Set a Theme for the site                                                                         	|
| Breeze Dark                                                  	| A nice Dark Theme                                                                                                 	|
| Custom Menu                                                  	| Cleans up the UI by putting all the apps in a drop down menu that can be accessed from the top left of the screen 	|
| External Storage Support*                                    	| Allows you to add External Storage locations that the users can access                                            	|
| Password Policy                                              	| Prevents users from making very weak passwords                                                                    	|
| Theme                                                        	| Allows you to set Custom Website name and Themeing (including Logo)1q                                             	|
| Collabora Online and  Collabora online -built-in CODE Server 	| Provides a in Browser file Editor                                                                                 	|

*I would also recommend installing `smbclient` if you are installing this (you can install it using `docker exec --user root Nextcloud apt install smbclient -y`)