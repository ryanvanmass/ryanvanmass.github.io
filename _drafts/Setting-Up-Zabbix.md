---
title:"Setting Up Zabbix on Ubuntu 24.04" 
date:2025-5-4 09:30:00 -04:00 
categories:[On-Premise, Zabbix]
tags:[Zabbix, Linux, Ubuntu, Monitoring]
---

## What is Zabbix

Zabbix is an enterprise-class open-source monitoring solution that allows you to monitor various IT infrastructure components, including:

*   **Networks:** Track bandwidth usage, packet loss, interface errors, device availability, and more using SNMP and other protocols.
*   **Servers:** Monitor CPU and memory utilization, disk space, operating system performance, and application-specific metrics.
*   **Virtual Machines:** Monitor the performance and resource usage of virtualized environments like VMware.
*   **Cloud Services:** Monitor the availability and performance of cloud platforms and services.
*   **Applications:** Monitor the performance and availability of web applications, databases, and custom applications.
*   **IoT Devices:** Collect and analyze data from IoT sensors and devices.

## Setup

1.  Setup Zabbix Repo
    
    ```
    wget https://repo.zabbix.com/zabbix/7.0/ubuntu/pool/main/z/zabbix-release/zabbix-release_latest_7.0+ubuntu24.04_all.deb
    apt install ./zabbix-release_latest_7.0+ubuntu24.04_all.deb
    apt update
    ```
2.  Install Zabbix Server

```
apt install zabbix-server-pgsql zabbix-frontend-php php8.3-pgsql zabbix-apache-conf zabbix-sql-scripts zabbix-agent
```

3.  Install Database

```
apt install postgresql
```

3.  Setup Database

```
sudo -u postgres createuser --pwprompt zabbix
sudo -u postgres createdb -O zabbix zabbix
zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | sudo -u zabbix psql zabbix
```

4.  Set the `DBPassword` value in`/etc/zabbix/zabbix_server.conf` to the value you set in the previous step
5.  Navigate to [http://host-ip/zabbix](http://host-ip/zabbix)