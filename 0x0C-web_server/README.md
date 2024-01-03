# Web Server Configuration

This repository contains various scripts and configurations for setting up and managing a web server using Nginx.

## Tasks

### 0. Transfer a File to Your Server

**Script:** `0-transfer_file`

This script transfers a file from a client to a server using `scp`. It accepts four parameters: the path to the file, the IP of the server, the username, and the path to the SSH private key. The script transfers the file to the user's home directory and disables strict host key checking.

### 1. Install Nginx Web Server

**Script:** `1-install_nginx_web_server`

A bash script to install and configure Nginx on a server. The script sets up Nginx to listen on port 80 and serve a page containing "Hello World!" when queried at its root with a GET request.

### 2. Setup a Domain Name

**File:** `2-setup_a_domain_name`

Configuration for setting up a domain name with DNS records. The domain name points to the server's IP address, with an A record for the root domain.

### 3. Redirection

**Script:** `3-redirection`

This script configures Nginx to redirect the path `/redirect_me` to another page with a "301 Moved Permanently" status. It builds upon the previous Nginx installation.

### 4. Not Found Page 404

**Script:** `4-not_found_page_404`

A configuration for Nginx to display a custom 404 page that contains the string "Ceci n'est pas une page". It returns an HTTP 404 error code.

### 5. Install Nginx Web Server with Puppet

**Puppet Manifest:** `7-puppet_install_nginx_web_server.pp`

A Puppet manifest to install and configure an Nginx server. It includes resources for the server to listen on port 80, return a "Hello World!" page at the root, and perform a 301 redirect when querying `/redirect_me`.

## Repository Information

**GitHub Repository:** alx-system_engineering-devops

**Directory:** 0x0C-web_server
