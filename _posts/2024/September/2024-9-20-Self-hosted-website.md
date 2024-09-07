---
title: "Self Hosted Website CI/CD Pipeline"
date: 2024-9-20 09:30:00 -04:00
categories: [On-Premise, Docker]
tags: [Docker, DevOpps]
---
Have you ever wished that you could have a static website but also have the ability to easily schedule posts. Well its easier then you may think in this post we will be going over the 2 Docker containers you need to achive this

## Web host
Starting out simple we need a Nginx container to host our final build of the website. We have 2 options for setting this up both are shown bellow

### Docker Run
```bash
sudo docker run --name nginx -v /Path/to/Site/Builds:/usr/share/nginx/html:ro --rm -it -p 8080:80 nginx
```

### Docker Compose
```dockerfile
version: '3'
services:
  nginx:
    image: 'nginx:latest'
    restart: unless-stopped
    ports:
      - 80:80
    volumes:
      - /Path/to/Site/Builds:/usr/share/nginx/html:ro
```

## Jekyll Worker
### Building the Container
For the Worker Container we have a little more work to do. Mainly we have to build our own container that will build the site and output it to a directory for us. This can be done by running the bellow command in a directory with this [Dockerfile](https://www.ryanvanmassenhoven.com/assets/2024/Website-Pipeline/Dockerfile), your Gemfile, and [update.sh](https://www.ryanvanmassenhoven.com/assets/2024/Website-Pipeline/update.sh) which handles the actual building of the site. (You may need to tweak the dockerfile slightly to ensure you are downloading your own website to build)

``` bash
docker build -t jekyll-worker:latest ./
```

### Running the Container
#### Docker Run
```
sudo docker run -it --rm -v /path/to/nginx/volume:/target jekyll-worker:latest
```


## Automating Everything
While running everything manually is great and all lets automate it. We have a couple of options for acheiving this
### Crontab
```
@hourly docker run --rm -v /path/to/nginx/volume:/target jekyll-worker:latest
```

### Systemd
Copy the below example files to `/etc/systemd/system` and run `sudo systemctl enable --now jekyll-worker.timer`
#### jekyll-worker.service
```systemd
[Unit]
Description=jekyll-worker

[Service]
Type=oneshot
ExecStart=docker run --rm -v /path/to/nginx/volume:/target jekyll-worker
WorkingDirectory=/

```

#### jeykll-worker.timer
```systemd
[Unit]
Description=jekyll-worker

[Timer]
OnBootSec=5min
OnUnitActiveSec=6h
Persistent=true

[Install]
WantedBy=timers.target

```