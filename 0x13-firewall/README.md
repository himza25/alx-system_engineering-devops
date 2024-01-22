# Firewall Configuration - ALX System Engineering DevOps

This repository contains tasks for setting up and configuring firewalls, specifically focusing on UFW (Uncomplicated Firewall) on a web server.

## Tasks

### Task 0: Block All Incoming Traffic But

**Objective**: Install and set up UFW on `web-01` to block all incoming traffic except on specified TCP ports.

**Requirements**:
- Configure UFW to block all incoming traffic except on the following TCP ports:
  - 22 (SSH)
  - 443 (HTTPS SSL)
  - 80 (HTTP)

**Implementation**:
Commands used for setting up UFW rules are listed in the `0-block_all_incoming_traffic_but` file.

**File**:
- GitHub Repository: `alx-system_engineering-devops`
- Directory: `0x13-firewall`
- File: `0-block_all_incoming_traffic_but`

---

### Task 1: Port Forwarding

**Objective**: Configure the firewall on `web-01` to redirect traffic from port 8080/TCP to port 80/TCP.

**Requirements**:
- Set up port forwarding to redirect traffic from port 8080/TCP to 80/TCP.
- Ensure the web server nginx is listening only on port 80.
- Validate the setup using `curl` from another server.

**Terminal Output**:
- Netstat output and nginx configuration verification commands are provided.
- Curl tests showing successful responses from both ports 80 and 8080.

**File**:
- The answer file is a copy of the modified UFW configuration file, demonstrating the port forwarding setup.

**File**:
- GitHub Repository: `alx-system_engineering-devops`
- Directory: `0x13-firewall`
- File: `100-port_forwarding`

---

## Additional Information

This project is part of the ALX System Engineering DevOps curriculum, aimed at configuring network security and firewall settings on web servers.
