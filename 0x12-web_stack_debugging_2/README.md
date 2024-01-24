# 0x12-web_stack_debugging_2

This document provides an overview of the tasks for the "Web Stack Debugging" project, part of the ALX System Engineering and DevOps track.

## Tasks

### 0. Run software as another user

**File**: `0x12-web_stack_debugging_2/0-iamsomeoneelse`

#### Description
A Bash script that runs the `whoami` command under a user passed as an argument. It emphasizes the importance of not being permanently logged in as the root user for security reasons.

#### Requirements
- Accept one argument.
- Execute `whoami` under the user provided as an argument.

---

### 1. Run Nginx as Nginx

**File**: `0x12-web_stack_debugging_2/1-run_nginx_as_nginx`

#### Description
A Bash script that configures a container to run Nginx as the less privileged nginx user and listen on port 8080. This practice enhances server security by limiting the potential impact of a security breach.

#### Requirements
- Nginx must run as the nginx user.
- Nginx must listen on all active IPs on port 8080.
- Do not use `apt-get remove`.

---

### 2. 7 lines or less (Advanced)

**File**: `0x12-web_stack_debugging_2/100-fix_in_7_lines_or_less`

#### Description
A concise version of the script from task #1, fitting all the necessary commands into 7 lines or less.

#### Requirements
- The Bash script must be 7 lines long or less.
- Include a new line at the end of the file.
- Respect Bash script requirements.
- Do not use `;`, `&&`, or `wget`.
- Do not execute the script from the previous task.

---

## Repository Information

**GitHub Repository**: `alx-system_engineering-devops`
**Directory**: `0x12-web_stack_debugging_2`

