# SSH Configuration and Automation

This repository contains various scripts and configurations for managing SSH connections and automations. It's part of the `alx-system_engineering-devops` curriculum focusing on SSH, scripting, and automation using Puppet.

## General Requirements

- Editors used: vi, vim, emacs
- All files interpreted on Ubuntu 20.04 LTS
- All files end with a new line
- A `README.md` file at the root of the folder of the project
- All Bash script files are executable
- The first line of all Bash scripts: `#!/usr/bin/env bash`
- The second line of all Bash scripts contains a comment explaining the script


## Tasks

### 0. Use a private key

**File**: `0-use_a_private_key`

A Bash script to connect to the server using SSH with a specific private key (`~/.ssh/school`) and the user `ubuntu`.

### 1. Create an SSH key pair

**File**: `1-create_ssh_key_pair`

This script creates an RSA key pair with the following specifications:
- Private key named `school`
- Key strength of 4096 bits
- Key protected by the passphrase `betty`

### 2. Client configuration file

**File**: `2-ssh_config`

A configuration file for the SSH client. It is set up to use the private key `~/.ssh/school` and is configured to refuse password authentication.

### 3. Let me in!

A task to add a provided SSH public key to the server to allow connections using the `ubuntu` user.

### 4. Client configuration file (w/ Puppet)

**File**: `100-puppet_ssh_config.pp`

An advanced task using Puppet to automate the changes to the SSH client configuration file. It ensures the usage of the private key `~/.ssh/school` and disables password authentication for SSH.

## Usage

Each script or configuration file has specific usage instructions. Generally, for Bash scripts:
```bash
chmod +x script_name.sh
./script_name.sh

# For the Puppet manifest, apply it with:

sudo puppet apply 100-puppet_ssh_config.pp
```

## 5. AUTHOR

Samari Hamza
