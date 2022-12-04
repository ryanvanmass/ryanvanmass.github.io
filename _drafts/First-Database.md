---
title: "MYSQL 101"
date: 2022-10-31 09:41:44 -04:00
categories: [Technology]
tags: []
---
In this post we will be going over the basics of how to set up an interact with a MySQL Database

## Instalation
### Debian/Ubuntu
``` bash
sudo apt install mariadb-server

```


## Basic Setup
**Either find or create a video walking user through the `mysql_secure_installation` script**

## Creating your first database
1. Log into your Database
``` bash
sudo mysql -u root
```

2. Creating your first database
``` sql
CREATE DATABASE first_db;
```

**Note:** ensure you include `;` in all sql commands

3. Creating your first Table
``` sql 
USE first_db;
CREATE TABLE first_table (
    column1 datatype,
    column2 datatype,
    column3 datatype
);
```

**Example**
``` sql
CREATE TABLE first_table (
    id int,
    first_name varchar(255),
    last_name varchar(255)
);
```

4. Add Data to a table

<u>SQL Statemen</u>
``` sql
INSERT INTO first_table (id, first_name, last_name) 
  VALUES  ("1", "Ryan", "Van Massenhoven"); 
```

**Tip:** you can find online generators such as [this](https://w3codegenerator.com/generators/sql/insert-query-mysql) to help you create these statements


<u>Shell Command</u>
``` bash
mysql -u root -p -e "INSERT INTO first_table (id, first_name, last_name) VALUES  ("1", "Ryan", "Van Massenhoven")"
```

## Datatypes
### String Datatypes

| Data Type        | Max Size                         |
|------------------|----------------------------------|
| CHAR(size)       | 255 characters.                  |
| VARCHAR(size)    | 255 characters.                  |
| TINYTEXT(size)   | 255 characters.                  |
| Text(size)       | 65,535 characters.               |
| MEDIUMTEXT(size) | 16,777,215 characters.           |
| LARGETEXT(size)  | 4GB or 4,294,967,295 characters. |
| BINARY(size)     | 255 characters.                  |
| VARBINARY(size)  | 255 characters.                  |

### Numeric Datatypes

| Data Type    | Description                                                                           | Storage      |
|--------------|---------------------------------------------------------------------------------------|--------------|
| bit          | Integer that can be 0, 1, or NULL                                                     |              |
| tinyint      | Allows whole numbers from 0 to 255                                                    | 1 byte       |
| smallint     | Allows whole numbers between -32,768 and 32,767                                       | 2 bytes      |
| int          | Allows whole numbers between -2,147,483,648 and 2,147,483,647                         | 4 bytes      |
| bigint       | Allows whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807 | 8 bytes      |
| decimal(p,s) | Unpacked fixed-point number.                                                          | 5-17 bytes   |
| numeric(p,s) | Unpacked fixed-point number.                                                          | 5-17 bytes   |
| smallmoney   | Monetary data from -214,748.3648 to 214,748.3647                                      | 4 bytes      |
| money        | Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807              | 8 bytes      |
| float(n)     | Floating point number.                                                                | 4 or 8 bytes |
| real         | Floating precision number data from -3.40E + 38 to 3.40E + 38 4                       |              |

### Data Datatypes

| Data Type      | Description                                                                                                                                                                                                                   | Storage    |
|----------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------|
| datetime       | From January 1, 1753 to December 31, 9999 with an accuracy of 3.33 milliseconds                                                                                                                                               | 8 bytes    |
| datetime2      | From January 1, 0001 to December 31, 9999 with an accuracy of 100 nanoseconds                                                                                                                                                 | 6-8 bytes  |
| smalldatetime  | From January 1, 1900 to June 6, 2079 with an accuracy of 1 minute                                                                                                                                                             | 4 bytes    |
| date           | Store a date only. From January 1, 0001 to December 31, 9999                                                                                                                                                                  | 3 bytes    |
| time           | Store a time only to an accuracy of 100 nanoseconds                                                                                                                                                                           | 3-5 bytes  |
| datetimeoffset | The same as datetime2 with the addition of a time zone offset                                                                                                                                                                 | 8-10 bytes |
| timestamp      | Stores a unique number that gets updated every time a row gets created or modified. The timestamp value is based upon an internal clock and does not correspond to real time. Each table may have only one timestamp variable |            |