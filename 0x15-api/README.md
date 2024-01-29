# 0x15. API

## Background Context

In the evolving landscape of system administration, the transition from traditional Bash scripting to more versatile programming languages is evident. System Administrators and Site Reliability Engineers (SREs) are adopting languages like Python for efficient system management. This project showcases the use of Python scripts to interact with an API, demonstrating the retrieval and organization of employee data, a task less suited for Bash scripting.

## Tasks

### Task 0: Gather Data from an API
Write a Python script that, using this REST API, for a given employee ID, returns information about his/her TODO list progress.

**Requirements:**
- Use urllib or requests module
- The script must accept an integer as a parameter, which is the employee ID
- The script must display on the standard output the employee TODO list progress in this exact format:
  - First line: Employee EMPLOYEE_NAME is done with tasks(NUMBER_OF_DONE_TASKS/TOTAL_NUMBER_OF_TASKS):
    - EMPLOYEE_NAME: name of the employee
    - NUMBER_OF_DONE_TASKS: number of completed tasks
    - TOTAL_NUMBER_OF_TASKS: total number of tasks, which is the sum of completed and non-completed tasks
  - Second and N next lines display the title of completed tasks: TASK_TITLE (with 1 tabulation and 1 space before the TASK_TITLE)

### Task 1: Export to CSV
Extend your Python script to export data in the CSV format.

**Requirements:**
- Records all tasks that are owned by this employee
- Format must be: "USER_ID","USERNAME","TASK_COMPLETED_STATUS","TASK_TITLE"
- File name must be: USER_ID.csv

### Task 2: Export to JSON
Extend your Python script to export data in the JSON format.

**Requirements:**
- Records all tasks that are owned by this employee
- Format must be: { "USER_ID": [{"task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS, "username": "USERNAME"}, ... ]}
- File name must be: USER_ID.json

### Task 3: Dictionary of list of dictionaries
Extend your Python script to export data in the JSON format.

**Requirements:**
- Records all tasks from all employees
- Format must be: { "USER_ID": [ {"username": "USERNAME", "task": "TASK_TITLE", "completed": TASK_COMPLETED_STATUS}, ... ]}
- File name must be: todo_all_employees.json

## Contributing
This project is a part of the System Engineering and DevOps track at ALX. Contributions,
