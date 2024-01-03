# Web Stack Debugging Series

This repository contains scripts and solutions for debugging web stacks. The series involves identifying and fixing issues in webstack configurations, with an emphasis on practical, hands-on problem solving.


## Debugging Projects

### 0. Give me a page!

**File:** `0-give_me_a_page`

The task involves getting Apache running on a Docker container and returning a page with the content "Hello Holberton" when querying the root. 

**Issue:** 
After starting the Docker container, querying port 8080 mapped to the Docker container port 80 returned an error message or an empty reply from the server.

**Resolution:**
The commands used to resolve this issue and get Apache to serve the expected page are detailed in the answer file.

## Requirements

- Editors: vi, vim, emacs
- All files interpreted on Ubuntu 14.04 LTS
- All files end with a new line
- A README.md file at the root of the folder of the project
- All Bash script files must be executable
- Bash scripts pass Shellcheck without errors
- Bash scripts run without errors
- The first line of all Bash scripts: `#!/usr/bin/env bash`
- The second line of all Bash scripts: a comment explaining the script's function

## Repository Information

**GitHub Repository:** alx-system_engineering-devops

**Directory:** 0x0D-web_stack_debugging_0
