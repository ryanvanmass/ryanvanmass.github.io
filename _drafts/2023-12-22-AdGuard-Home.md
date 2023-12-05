---
title: "AdGuard Home Overview"
date: 2023-12-2 09:30:00 -04:00
categories: [Networking, DNS]
tags: []
---
## What is AdGuard Home?
AdGuard Home is a network-wide software for blocking ads & tracking. After you set it up, it’ll cover ALL your home devices, and you don’t need any client-side software for that. With the rise of Internet-Of-Things and connected devices, it becomes more and more important to be able to control your whole network.

## AdGuard vs PiHole

| Feature                                                                 | AdGuard&nbsp;Home | Pi-Hole                                                   |
|-------------------------------------------------------------------------|-------------------|-----------------------------------------------------------|
| Blocking ads and trackers                                               | ✅                | ✅                                                       |
| Customizing blocklists                                                  | ✅                | ✅                                                       |
| Built-in DHCP server                                                    | ✅                | ✅                                                       |
| HTTPS for the Admin interface                                           | ✅                | Kind of, but you'll need to manually configure lighttpd   |
| Encrypted DNS upstream servers (DNS-over-HTTPS, DNS-over-TLS, DNSCrypt) | ✅                | ❌ (requires additional software)                         |
| Cross-platform                                                          | ✅                | ❌ (not natively, only via Docker)                        |
| Running as a DNS-over-HTTPS or DNS-over-TLS server                      | ✅                | ❌ (requires additional software)                         |
| Blocking phishing and malware domains                                   | ✅                | ❌ (requires non-default blocklists)                      |
| Parental control (blocking adult domains)                               | ✅                | ❌ (requires non-default blocklists)                      |
| Force Safe search on search engines                                     | ✅                | ❌                                                        |
| Per-client (device) configuration                                       | ✅                | ✅                                                        |
| Access settings (choose who can use AGH DNS)                            | ✅                | ❌                                                        |
| Running [without root privileges][wiki-noroot]                          | ✅                | ❌                                                        |

[Source](https://github.com/AdguardTeam/AdGuardHome/blob/master/README.md)

## Setup
1. Install Docker and Docker Compose
```bash
sudo apt update
sudo apt install docker.io docker-compose
sudo systemctl enable --now docker.socket
```

2. Deactivate DNSStubListener and update the DNS server address. Create a new file, `/etc/systemd/resolved.conf.d/adguardhome.conf` (creating the `/etc/systemd/resolved.conf.d` directory if needed) and add the following content to it:

```
[Resolve]
DNS=127.0.0.1
DNSStubListener=no
```
Specifying `127.0.0.1` as the DNS server address is necessary because otherwise the nameserver will be `127.0.0.53` which doesn't work without DNSStubListener.


3. Activate a new resolv.conf file:
```bash
sudo mv /etc/resolv.conf /etc/resolv.conf.backup
sudo ln -s /run/systemd/resolve/resolv.conf /etc/resolv.conf
```

4. Stop DNSStubListener:
```bash
sudo systemctl restart systemd-resolved
```

5. Download the compose File and run it
```bash
wget https://www.ryanvanmassenhoven.com/assets/2023/AdGuard-Home/docker-compose.yml
sudo docker-compose up -d
```

6. Follow the Onscreen prompts

7. Once the setup wizard is complete set your DHCP server to use AdGuard as your DNS server