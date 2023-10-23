ALX System Engineering & DevOps: Command Line for the Win
Project Overview
This project involves completing a series of tasks using command line interfaces. Screenshots are taken upon the completion of specific sets of tasks and are transferred to a sandbox environment using Secure File Transfer Protocol (SFTP). Finally, these screenshots are pushed to this GitHub repository.

Directory Structure
Copy code
command_line_for_the_win/
│
├── 0-first_9_tasks.png
├── 1-next_9_tasks.png
├── 2-next_9_tasks.png
└── README.md
Tasks
0. First 九 tasks
Complete the first 9 tasks.
File: 0-first_9_tasks.png
1. Reach חי completed tasks
Complete the next 9 tasks, making it 18 in total.
File: 1-next_9_tasks.png
2. Reach the perfect cube, 27
Complete the next 9 tasks, making it 27 in total.
File: 2-next_9_tasks.png
SFTP File Transfer Steps
Open Terminal: Open a Git Bash terminal on your local machine.
Connect to Sandbox: Use the command sftp username@hostname to connect to the sandbox environment.
Navigate to Directory: Change directory to /root/alx-system_engineering-devops/command_line_for_the_win/ using the command cd /root/alx-system_engineering-devops/command_line_for_the_win/.
Upload Files: Use the put command to upload each screenshot. For example, put 0-first_9_tasks.png.
Confirm Transfer: Use the ls command to list the files in the directory and confirm the successful transfer of screenshots.
GitHub Steps
Clone Repository: Clone this repository to your local machine if you haven't done so.
Add Files: Navigate to the command_line_for_the_win directory and add the screenshots using git add ..
Commit Changes: Commit the changes using git commit -m "Added screenshots for completed tasks".
Push to GitHub: Push the changes to GitHub using git push origin main.
