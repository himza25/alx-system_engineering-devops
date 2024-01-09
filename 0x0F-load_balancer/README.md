# Load Balancer and Web Server Configuration Project

This repository contains scripts and configurations for automating web server setup and load balancing using Bash and Puppet.

## Project Overview

This project involves configuring multiple web servers and a load balancer to distribute traffic efficiently. It also includes automating the setup of custom HTTP headers for tracking server responses.

## Repository Contents

- `0x0F-load_balancer` directory
  - `0-custom_http_response_header`: Bash script for configuring Nginx with a custom HTTP header.
  - `1-install_load_balancer`: Bash script for installing and configuring HAproxy.
  - `2-puppet_custom_http_response_header.pp`: Puppet manifest for automating the setup of a custom HTTP header in Nginx.

## Tasks

### Task 0: Double the Number of Webservers

**Objective:** Configure `web-02` to mirror the setup of `web-01`, ensuring that both servers are behind a load balancer and have a custom Nginx response header.

**Requirements:**
- Configure Nginx to include a custom `X-Served-By` header with the server's hostname.
- File: `0-custom_http_response_header`

### Task 1: Install Your Load Balancer

**Objective:** Install and configure HAproxy on the `lb-01` server to distribute traffic between `web-01` and `web-02`.

**Requirements:**
- Configure HAproxy to use a round-robin algorithm for traffic distribution.
- Ensure HAproxy management via an init script.
- Configure correct hostnames for the servers.
- File: `1-install_load_balancer`

### Task 2: Add a Custom HTTP Header with Puppet (Advanced)

**Objective:** Automate the configuration of a custom HTTP header in Nginx using Puppet.

**Specifications:**
- Custom HTTP header name: `X-Served-By`
- Header value: Hostname of the server where Nginx is running.
- File: `2-puppet_custom_http_response_header.pp`
