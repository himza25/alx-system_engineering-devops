# MySQL Project - alx-system_engineering-devops

This repository contains a series of tasks related to setting up and managing MySQL servers, including replication and backup strategies.

## Tasks Overview

### 0. Install MySQL

- **Objective**: Install MySQL version 5.7.x on both `web-01` and `web-02` servers.
- **Requirements**:
  - Ensure SSH configuration (task #3 from the SSH project) is complete for both servers.
  - Verify the installation using `mysql --version`.

### 1. Let Us In!

- **Objective**: Create a MySQL user `holberton_user` with specific privileges.
- **Details**:
  - User created on both `web-01` and `web-02`.
  - Hostname set to `localhost`.
  - Password: `projectcorrection280hbtn`.
  - User granted permissions to check replication status.

### 2. If Only You Could See What I've Seen with Your Eyes

- **Objective**: Set up a database and table in the primary MySQL server for replication.
- **Details**:
  - Database: `tyrell_corp`.
  - Table: `nexus6` with at least one entry.
  - `holberton_user` granted SELECT permissions on the table.

### 3. Quite an Experience to Live in Fear, Isn't It?

- **Objective**: Create a new user `replica_user` on the primary MySQL server (`web-01`).
- **Details**:
  - Hostname set to `%`.
  - User granted appropriate replication permissions.
  - `holberton_user` granted SELECT privileges on `mysql.user` table.

### 4. Setup a Primary-Replica Infrastructure Using MySQL

- **Objective**: Establish a primary-replica MySQL replication setup.
- **Details**:
  - Primary server on `web-01`.
  - Replica server on `web-02`.
  - Replication setup for `tyrell_corp` database.
  - Configuration files: `4-mysql_configuration_primary` and `4-mysql_configuration_replica`.

### 5. MySQL Backup

- **Objective**: Write a Bash script to generate a MySQL dump and create a compressed archive.
- **Details**:
  - The dump contains all MySQL databases.
  - Dump file named `backup.sql`.
  - Compressed to `tar.gz` archive named with the format `day-month-year.tar.gz`.
  - Script accepts MySQL root password as an argument.

## Repository Files

- `4-mysql_configuration_primary`
- `4-mysql_configuration_replica`
- `5-mysql_backup`

---
Directory: `0x14-mysql`
