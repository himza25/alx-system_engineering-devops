# Puppet Projects Overview

This repository contains Puppet projects for configuration management. These projects are designed to be run on Ubuntu 20.04 LTS and are part of the ALX System Engineering DevOps track.

## General Requirements

- All files are interpreted on Ubuntu 20.04 LTS.
- All files end with a new line.
- A `README.md` file at the root of the folder of the project is mandatory.
- Puppet manifests must pass `puppet-lint` version 2.1.1 without any errors.
- Puppet manifests must run without error.
- Puppet manifest files must end with the `.pp` extension.
- The first line of Puppet manifests must be a comment explaining the purpose of the manifest.

## Note on Versioning

Your Ubuntu 20.04 VM should have Puppet 5.5 preinstalled. The basic level syntax is virtually identical in newer versions of Puppet.

### Install Puppet

```bash
apt-get install -y ruby=1:2.7+1 --allow-downgrades
apt-get install -y ruby-augeas
apt-get install -y ruby-shadow
apt-get install -y puppet
```

### Install puppet-lint

```bash
gem install puppet-lint
```

## Tasks

### 0. Create a File

**Requirements:**

- Create a file in `/tmp` using Puppet.
- File path: `/tmp/school`
- File permission: `0744`
- File owner: `www-data`
- File group: `www-data`
- File contents: "I love Puppet"

**Repo:**

- Directory: `0x0A-configuration_management`
- File: `0-create_a_file.pp`

### 1. Install a Package

**Requirements:**

- Install Flask version 2.1.0 using Puppet and pip3.

**Repo:**

- Directory: `0x0A-configuration_management`
- File: `1-install_a_package.pp`

### 2. Execute a Command

**Requirements:**

- Create a Puppet manifest to kill a process named `killmenow`.
- Must use the `exec` Puppet resource.
- Must use `pkill`.

**Repo:**

- Directory: `0x0A-configuration_management`
- File: `2-execute_a_command.pp`
