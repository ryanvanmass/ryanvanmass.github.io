---
title: "Self Hosted Speedtest.net"
date: 2025-3-23 09:30:00 -04:00
categories: [On-Premise,"Self Hosted"]
tags: []
---
Have you ever wanted the ability to know the exact speed from where ever you are to your self hosted apps? Meet LibreSpeed, a selfhosted speedtest webapp.
![Image1](/assets/2025/Selfhosted-speedtest/1.png)

## Setup
1. Install Docker
```bash
sudo apt installer docker.io docker-compose-v2
```

2. Create a `docker-compose.yml` file and add the below content

```dockerfile
  speedtest:
    container_name: speedtest
    image: ghcr.io/librespeed/speedtest:latest
    restart: always
    environment:
      MODE: standalone
      TITLE: "SpeedTest"
      TELEMETRY: "true"
      #ENABLE_ID_OBFUSCATION: "false"
      #REDACT_IP_ADDRESSES: "false"
      #PASSWORD: "Password"
      #EMAIL: "Email"
      #DISABLE_IPINFO: "false"
      #IPINFO_APIKEY: "your api key"
      #DISTANCE: "km"
      #WEBPORT: 8080
    ports:
      - "81:8080" # webport mapping (host:container)
```

3. Start the Docker Container
```bash
sudo docker compose up -d
```

4. Enjoy