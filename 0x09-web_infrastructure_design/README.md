# Web Infrastructure Design

This repository contains the web infrastructure design tasks that demonstrate the understanding of various server management and deployment strategies.

## Tasks Overview

### 0. Simple Web Stack
A basic web infrastructure was designed to be hosted on a single server. This design includes the following components:
- 1 server
- 1 web server (Nginx)
- 1 application server
- 1 set of application files (code base)
- 1 database (MySQL)
- 1 domain name configured for `www.foobar.com`

**Challenges**:
- Single Point Of Failure (SPOF)
- Downtime during maintenance
- Inability to scale under high traffic

![Simple Web Stack Diagram](https://imgur.com/aZvbFt0)

### 1. Distributed Web Infrastructure
This task extends the simple web stack into a distributed three-server setup with the following additions:
- 2 additional servers
- 1 load balancer (HAproxy)

**Key Points**:
- Load balancing algorithms
- Active-Active vs Active-Passive load balancer setup
- Primary-Replica database clustering

**Concerns**:
- SPOFs within the infrastructure
- Security issues without firewalls and HTTPS
- Lack of monitoring

![Distributed Web Infrastructure Diagram](https://imgur.com/zqmU0oU)

### 2. Secured and Monitored Web Infrastructure
The infrastructure is further enhanced for security and monitoring with these components:
- 3 firewalls
- 1 SSL certificate for HTTPS
- 3 monitoring clients (e.g., for Sumologic)

**Focus**:
- Role of firewalls
- Importance of HTTPS
- Monitoring strategies and data collection

**SSL Termination**:
- Issues with SSL termination at the load balancer
- Risks of a single writable MySQL server
- Challenges with identical servers

![Secured and Monitored Web Infrastructure Diagram](https://imgur.com/ZPJk897)

### 3. Scale Up
The advanced task involves scaling up the infrastructure by adding more servers and splitting components for better performance and reliability:
- 1 additional server
- 1 additional load balancer (HAproxy) configured in a cluster

**Objective**:
- Explain the need for each additional element and its purpose.

![Scaled Up Infrastructure Diagram](https://imgur.com/RyMZ883)
