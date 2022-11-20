---
title: "MYSQL 101"
date: 2022-10-31 09:41:44 -04:00
categories: [Technology]
tags: []
---
In this post we will be going over the basics of how to set up an interact with a MySQL Database

## Instalation
### Debian
``` bash


```

### CentOS Stream 9
``` bash


```

## Basic Setup
**Either find or create a video walking user through the `mysql_secure_installation` script**

## Creating your first database
1. Log into your Database
``` bash
sudo mysql -u root
```

2. Creating your first database
``` mysql
CREATE DATABASE first_db;
```

**Note:** ensure you exclude `;`

3. Creating your first Table
``` mysql 
USE first_db;
CREATE TABLE first_table (
    column1 datatype,
    column2 datatype,
    column3 datatype,
);
```

# Insert Table of datatype here ->