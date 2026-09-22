# Royal Technology Solutions - AWS Web Application

## Overview

The Royal Technology Solutions hybrid infrastructure was extended with an application layer hosted on AWS. The application provides an IT Service Management Portal that connects the AWS web tier to the migrated RoyalDB PostgreSQL database.

The application was deployed on **Royal-Web-01** and validated from an on-premises Windows client across the hybrid network.

## Application Architecture

```text
On-Premises Windows Client
        |
        | HTTP :80
        v
Royal-Web-01
10.20.1.102
        |
        v
Apache HTTP Server
        |
        | Reverse Proxy
        v
Gunicorn
127.0.0.1:5000
        |
        v
        |
        v
psycopg2
        |
        | PostgreSQL 5432 / TLS
        v
Amazon RDS
royal-db-01
        |
        v
RoyalDB
```

## AWS Web Server

Server: Royal-Web-01

Private IP: 10.20.1.102

Operating System: Amazon Linux 2023

The web server provides the application entry point through Apache HTTP Server on TCP port 80.

## Application Stack

The application stack consists of:

Amazon Linux 2023
Apache HTTP Server
Gunicorn 23.0.0
Python 3.9.25
Flask 3.1.3
psycopg2 2.9.12
PostgreSQL 18.3 on Amazon RDS

The Python application is isolated inside a virtual environment located at:

/opt/royaltech/venv

The application is located at:

/opt/royaltech/app
## Apache Reverse Proxy

Apache receives HTTP requests on TCP port 80 and forwards application traffic to Gunicorn on localhost TCP port 5000.

The Apache configuration uses:

ProxyPreserveHost On

ProxyPass        / http://127.0.0.1:5000/
ProxyPassReverse / http://127.0.0.1:5000/

This keeps Gunicorn bound to localhost while Apache provides the external web interface.

## Gunicorn Service

Gunicorn runs the Flask application with two workers.

The application is managed by systemd using:

royaltech.service

The service is configured to:

Run as ssm-user
Use the RoyalTech Python virtual environment
Bind Gunicorn to 127.0.0.1:5000
Restart automatically if the application stops
Start automatically with the system

The service was validated as:

Active: active (running)
Loaded: loaded (...; enabled)
## Flask Application

The application provides the Royal Technology Solutions IT Service Management Portal.

Current operational routes include:

/
/customers
/devices
/contracts
/tickets
/technicians

The dashboard reports live information retrieved from RoyalDB.

## RoyalDB Integration

The Flask application connects to the migrated AWS RoyalDB PostgreSQL database using psycopg2.

The connection uses:

Database: royaldb
User: royaladmin
Port: 5432
SSL mode: require

The application successfully connected to the private RDS endpoint:

royal-db-01
10.20.11.48:5432

The application was also able to enumerate the RoyalDB public schema tables:

contract
customer
device
location
technician
ticket
ticket_assignment
## Live Service Data

The application dashboard currently displays:

Entity	Records
Customers	3
Locations	3
Devices	4
Contracts	3
Tickets	5
Technicians	3
Ticket Assignments	4

These values are retrieved from the live RoyalDB database rather than being static dashboard values.

## End-to-End Validation

The application was validated from an on-premises Windows client.

The Windows client successfully established a TCP connection to:

Destination: 10.20.1.102
Port: 80

Validation result:

TcpTestSucceeded : True

The Windows browser then successfully displayed the Royal Technology Solutions IT Service Management Portal.

The portal reported:

Application: Online
RoyalDB: Connected

and displayed live RoyalDB service data.

## Deployment Flow

The completed application path is:

On-Premises Client
        |
        v
Hybrid Network
        |
        v
AWS VPC
        |
        v
Royal-Web-01
        |
        v
Apache :80
        |
        v
Gunicorn :5000
        |
        v
Flask
        |
        v
psycopg2
        |
        v
Amazon RDS PostgreSQL
        |
        v
RoyalDB
## Current Status

AWS Web Application Layer: Operational

The application layer is now integrated with the previously established hybrid infrastructure and AWS RoyalDB environment.
