# Web Stack Monitoring with Datadog

This project focuses on setting up web stack monitoring using Datadog. It covers the initial setup of the Datadog account, installation of the Datadog agent, monitoring specific system metrics, and creating a comprehensive dashboard for visualizing these metrics.

## Task 0: Sign Up for Datadog and Install datadog-agent

### Steps:
1. **Sign Up**: Create a free account on [Datadog's US website](https://app.datadoghq.com).
2. **Region**: Use the US1 region during signup.
3. **Install Datadog-Agent**: Following the instructions provided on Datadog, install the Datadog agent on the server `web-01`.
4. **Application Key**: Create an application key in your Datadog account.
5. **API and Application Keys**: Update your Intranet user profile with your Datadog API key and application key.
6. **Hostname Visibility**: Ensure `web-01` is visible in Datadog under the host name `XX-web-01`.
7. **Hostname Update**: If necessary, update the hostname of your server to match Datadog's records.

## Task 1: Monitor Some Metrics

### Objective:
Set up monitors within the Datadog dashboard to alert on the number of read and write requests issued to the device per second.

### Monitors:
- **Read Requests per Second**: Monitor and alert on high read requests to identify potential I/O bottlenecks.
- **Write Requests per Second**: Monitor and alert on high write requests to prevent system overload and ensure smooth operation.

## Task 2: Create a Dashboard

### Goal:
Create a dashboard in Datadog to visualize various system metrics, providing insights into the system's health and performance.

### Steps:
1. **New Dashboard**: Create a dashboard titled "System Performance Overview."
2. **Widgets**: Add at least four widgets to the dashboard to monitor metrics such as CPU idle time, system load, memory usage, and read/write requests per second.
3. **Dashboard ID**: Use Datadog's API to retrieve the dashboard ID and save it in the file `2-setup_datadog` with the ID on the first line.

### Dashboard Widgets:
1. Timeseries for `system.cpu.idle`.
2. Heatmap for `system.load.1`.
3. Query value for `system.mem.used`.
4. Timeseries for both `system.io.r_s` and `system.io.w_s`.

---
