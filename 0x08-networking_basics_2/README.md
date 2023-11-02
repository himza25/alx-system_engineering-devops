# Networking Basics #2

This repository contains scripts for basic networking tasks as part of the ALX system engineering devops track.

## Tasks

### 0. Change your home IP

**Filename**: `0-change_your_home_IP`

This script configures an Ubuntu server to resolve `localhost` to `127.0.0.2` and `facebook.com` to `8.8.8.8`. It's important to revert these changes after running the script if you are using a persistent machine to ensure other services continue to work correctly.

### 1. Show attached IPs

**Filename**: `1-show_attached_IPs`

A simple Bash script that displays all active IPv4 IPs on the machine. It's a useful script for quickly checking the IP configurations on a machine.

### 2. Port listening on localhost (Advanced Task)

**Filename**: `100-port_listening_on_localhost`

This advanced Bash script sets up a listener on port 98 on localhost using `netcat`. It can receive and display messages sent to this port, useful for debugging and testing network connections and firewall rules.

---

These tasks are designed to give a practical introduction to networking concepts and command-line network management on Ubuntu 20.04 LTS. They have been thoroughly tested to ensure they function as intended.
