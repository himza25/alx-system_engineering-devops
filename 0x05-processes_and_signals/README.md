# Advanced Bash Scripting Tasks

This repository contains various advanced Bash scripting tasks. Each task comes with its own set of instructions and requirements.

## Table of Contents

- [Task 0: What is my PID](#task-0-what-is-my-pid)
- [Task 1: List your processes](#task-1-list-your-processes)
- [Task 2: Show your Bash PID](#task-2-show-your-bash-pid)
- [Task 3: Show your Bash PID made easy](#task-3-show-your-bash-pid-made-easy)
- [Task 4: To infinity and beyond](#task-4-to-infinity-and-beyond)
- [Task 5: Don't stop me now!](#task-5-dont-stop-me-now)
- [Task 6: Stop me if you can](#task-6-stop-me-if-you-can)
- [Task 7: Highlander](#task-7-highlander)
- [Task 8: Beheaded process](#task-8-beheaded-process)
- [Task 9: Process and PID file](#task-9-process-and-pid-file)
- [Task 10: Manage my process](#task-10-manage-my-process)
- [Task 11: Zombie](#task-11-zombie)

---

## Task 0: What is my PID

Create a Bash script that displays its own PID.
- Usage example: `./0-what-is-my-pid`
- The script should update a README.md file with a brief description.
- The script should be executable, pass Shellcheck, and have the appropriate shebang and comments.

---

## Task 1: List your processes

Create a Bash script that displays a list of currently running processes.
- Show all processes, including those without a TTY.
- Display in a user-oriented format with process hierarchy.
- Usage example: `./1-list_your_processes`

---

## Task 2: Show your Bash PID

Create a Bash script that displays lines containing the word "bash" and their PIDs.
- Cannot use `pgrep`.
- Usage example: `./2-show_your_bash_pid`

---

## Task 3: Show your Bash PID made easy

Write a Bash script that displays the PIDs and process names containing the word "bash."
- Cannot use `ps`.
- Usage example: `./3-show_your_bash_pid_made_easy`

---

## Task 4: To infinity and beyond

Write a Bash script that displays "To infinity and beyond" indefinitely with a 2-second pause between iterations.
- Usage example: `./4-to_infinity_and_beyond`

---

## Task 5: Don't stop me now!

Create a Bash script to stop the process from Task 4 using the `kill` command.
- Usage example: `./5-dont_stop_me_now`

---

## Task 6: Stop me if you can

Create a Bash script to stop the process from Task 4 without using `kill` or `killall`.
- Usage example: `./6-stop_me_if_you_can`

---

## Task 7: Highlander

Write a Bash script that displays "To infinity and beyond" with pauses, and when it receives a SIGTERM signal, it displays "I am invincible!!!"
- Create a script to stop this process.
- Usage example: `./7-highlander` and `./67-stop_me_if_you_can`

---

## Task 8: Beheaded process

Create a Bash script to kill the process from Task 7.
- Usage example: `./8-beheaded_process`

---

## Task 9: Process and PID file

Create a Bash script that:
- Creates a PID file.
- Displays messages and handles signals (SIGTERM, SIGINT, SIGQUIT).
- Deletes the PID file.
- Usage example: `sudo ./100-process_and_pid_file`

---

## Task 10: Manage my process

Create a Bash script to manage a process that writes to a file.
- Accepts `start`, `stop`, and `restart` commands.
- Creates and deletes a PID file.
- Usage example: `sudo ./101-manage_my_process`

---

## Task 11: Zombie

Write a C program that creates 5 zombie processes.
- Displays messages for each zombie process created.
- Usage example: Compile and execute the C program.

---
