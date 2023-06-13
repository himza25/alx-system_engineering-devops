## 0-hello_world

Write a script that prints "Hello, World", followed by a new line to the standard output.
## 2-hellofile:

Write a script that displays the content of the /etc/passwd file.
## 3-twofiles

Write a script that displays the content of /etc/passwd and /etc/hosts.
## 4-lastlines

Write a script that displays the last 10 lines of /etc/passwd.
## 5-firstlines

Write a script that displays the first 10 lines of /etc/passwd.
**Task 6:**
Script that displays the third line of the file iacta.

**Task 7:**
Script that creates a file named exactly \*\'"Best School"\'\*$\?\*\*\*\*\*: containing the text Best School ending by a new line.

**Task 8:**
Script that writes into the file ls_cwd_content the result of the command ls -la.

**Task 9:**
Script that duplicates the last line of the file iacta.

**Task 10:**
Script that deletes all the regular files (not the directories) with a .js extension that are present in the current directory and all its subfolders.
**Task 11:**
Script that counts the number of directories and sub-directories in the current directory.

**Task 12:**
Script that displays the 10 newest files in the current directory.

**Task 13:**
Script that takes a list of words as input and prints only words that appear exactly once.

**Task 14:**
Script that display lines containing the pattern “root” from the file /etc/passwd.

**Task 15:**
Script that display the number of lines that contain the pattern “bin” in the file /etc/passwd.
16: Display lines containing the pattern 'root' and 3 lines after them in the file /etc/passwd.
17: Display all the lines in the file /etc/passwd that do not contain the pattern 'bin'.
18: Display all lines of the file /etc/ssh/sshd_config starting with a letter.
19: Replace all characters 'A' and 'c' from input to 'Z' and 'e' respectively.
20: Create a script that removes all letters 'c' and 'C' from input.
21: Write a script that reverse its input.
22: Write a script that displays all users and their home directories, sorted by users.
### [23. Empty casks make the most noise](./100-empty_casks)
A script that finds all empty files and directories in the current directory and all sub-directories.
* Only the names of the files and directories should be displayed (not the entire path)
* Hidden files should be listed
* One file name per line
* The listing should end with a new line
* You are not allowed to use basename, grep, egrep, fgrep or rgrep

### [24. A gif is worth ten thousand words](./101-gifs)
A script that lists all the files with a .gif extension in the current directory and all its sub-directories.
* Hidden files should be listed
* Only regular files (not directories) should be listed
* The names of the files should be displayed without their extensions
* The files should be sorted by byte values, but case-insensitive (file aaa should be listed before file bbb, file .b should be listed before file a, and file Rona should be listed after file jay)
* One file name per line
* The listing should end with a new line
* You are not allowed to use basename, grep, egrep, fgrep or rgrep

### [25. Acrostic](./102-acrostic)
A script that decodes acrostics that use the first letter of each line.
* The ‘decoded’ message has to end with a new line
* You are not allowed to use grep, egrep, fgrep or rgrep

### [26. The biggest fan](./103-the_biggest_fan)
A script that parses web servers logs in TSV format as input and displays the 11 hosts or IP addresses which did the most requests.
* Order by number of requests, most active host or IP at the top
* You are not allowed to use grep, egrep, fgrep or rgrep
* Format: host, logname, time, method, url, response, bytes
