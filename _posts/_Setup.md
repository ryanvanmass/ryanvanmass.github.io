---
title: Setup Enviroment
date: 2022-07-04 12:00:00 -500
---
## Docker Development Environmnet

```
docker build -t jekyll ./
docker run -it -v /home/ryan/Dev/ryanvanmass.github.io:/mnt -p 4000:4000 --rm jekyll:latest


```



## Local Development enviroment (Depricated)

```bash
sudo apt update
sudo apt install ruby-full build-essential zlib1g-dev git

echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

gem install jekyll bundler

gem install tzinfo "~> 1.2"

gem install tzinfo-data

gem install wdm -v "~> 0.1.1"

bundle 

jekyll serve
```
