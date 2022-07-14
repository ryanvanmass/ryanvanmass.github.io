---
title: "Hosting Your Own Website for Free"
date: 2021-06-14 21:14:47 -04:00
categories:
    - Technology
    - Self Hosted
tags:
    - Linux
    - How-To
---

## Prerequisites
- You have a Github account
- You have a Digital Ocean account
- You have a Linux Server (or VM) that you can use to run your local instance of Hugo

## Setting up Github
### Creating your Repo
1. Navigate to https://github.com and login
2. Select New

![1](/assets/2021/HostingYourOwnWebsiteforFree/Github/1.png)

3. Name the Repo, Set it to Private, and select Create Repository

![2](/assets/2021/HostingYourOwnWebsiteforFree/Github/2.png)

### Making your First Commit
1. On your Linux Machine create a directory to store the website in

```
	mkdir Websites
```

2. Create your new Repo within this directory

```
	cd Websites
	git init 
```

3. Create a Readme File and commit the change

```
	touch readme.md
	git add -a
	git commit -a -m "Commit Message"
```

4. Set the Branch to commit the changes to

```
	git branch -M main
```

5. Set where these changes should be sent to

```
	git remote add origin git@github.com:$GITHUB_USERNAME/$REPOSITORY_NAME.git
```

6. Push your changes to the remote repository

```
	git push -u origin main
```

## Creating Hugo Site Locally

### Installing Hugo
__Ubuntu__

```
	sudo apt install hugo
```

__RHEL/CentOS/Fedora__

```
	sudo dnf install hugo
```

### Creating your Website

1. Within the Directory we created run the bellow command to create the File structure that Hugo requires to function

```
	hugo new site .
```

### Adding a theme

__Note:__ This will very depending on the theme you select. I am using the mainroad theme for writing this walk though since that is what I use

1. Go to https://themes.gohugo.io/ to find a theme you like

2. go to that themes github page and locate the install instructions (often found in the ReadMe)

3. Follow the install instructions

4. Often the theme will have a preconfigured config file that acts as a good starting point. You can set Hugo to use this config file by runnng the following command

```
	#Backs up current config file
	cp config.toml config.backup
	rm config.toml
	#Copy the Example config to where your config.toml was
	cp theme/$Theme_Name/exampleSite/config.toml .
```

5. Edit the example config file to your liking

### Adding Posts to Hugo

1. Run the bellow command to create the new post

__Note:__ Make sure the command ends in `.md` otherwise the command will run but will not create the file correctly

```
	hugo new post/Whatever_You_Want/Whatever_You_Want.md
```

2. Edit this newly created markdown file in your editor of choice

## Setting up Digital Ocean

### Setting up your Web app

1. Log into DigitalOcean

2. Select Apps

![3](/assets/2021/HostingYourOwnWebsiteforFree/DigitalOcean/1.png)

3. Select Create App

![4](/assets/2021/HostingYourOwnWebsiteforFree/DigitalOcean/2.png)

4. Follow the onscreen prompts

### Adding a custom URL

__Note:__ This will very depending on your Domain provider

1. Login in to Digital Ocean

2. Select Apps

![5](/assets/2021/HostingYourOwnWebsiteforFree/DigitalOcean/1.png)

3. Select the App for your website

4. Select Settings

5. Select Apps

6. Select Settings

![6](/assets/2021/HostingYourOwnWebsiteforFree/DigitalOcean/3.png)

7. Select Edit for Domains

![7](/assets/2021/HostingYourOwnWebsiteforFree/DigitalOcean/4.png)

8. Select Add Domain 

![8](/assets/2021/HostingYourOwnWebsiteforFree/DigitalOcean/5.png)

9. Follow the Onscreen directions

## Pushing your Updates to Production

If you are following along you should now have a web app set up in DigitalOcean and a empty git repo that the web app is connected to on Github. Bellow is the steps to push any changes you want to make to this web app

Run the following commands in your local Git repo:
```
	git add -a
	git commit -a -m "Commit Message"
	git push
```