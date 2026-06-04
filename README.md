# Coding-lab-Group12

# Team Member Roles

Kabi – Member 1 – System Initialization

The environment was set up by Kabi using the function `initialize_system()` in the hospital_admin.sh script. The script creates the necessary 'active_logs', 'archived_logs' and 'reports' folders to store, archive and report data using Bash commands like 'mkdir -p' and checking whether these folders exist or not ('[ -d ]'). This allows having the required structure of the system before generating or processing sensor data.

Mathiang - Member 2 - Security Lead

Mathiang is tasked with putting security measures in place for hospital log data. The `active_logs` directory was secured by applying permissions to it using the command chmod. The script also prints out the permissions after the changes are made with the output of the command 'ls -l', so administrators can confirm that data protection has been applied. This ensures that the hospital monitoring data is safeguarded against accidental changes or unauthorized access.

Achol Garang - Member 3 - The Orchestrator

Achol Garang designed the interactive administration dashboard that unites all work of the team into one management tool. The script utilizes a `while` loop, a `case` statement, and input from the user via the `read` command to enable a range of operations including system startup and configuration, security measures, or the execution of several functions simultaneously. This layer of orchestration makes it more user-friendly by automating the execution of various administrative tasks through a menu.

Joshua Hotay – Member 4 (Log Archiving)

Joshua Hotay was responsible for the log archiving process. The archive script monitors and performs hospital sensor logs by using commands like `mv` to copy finished log files from the `active_logs` folder to the `archived_logs` folder. The `date` command is used to assign a time stamp to the file names, to be able to keep historical records and to avoid overwriting archived data. The new empty log files are then created again with the touch command and the hospital monitoring system can continue to collect sensor data without interruption, while at the same time maintaining the historical data for later analysis.

Ezra Situma – Member 5 (Data Analysis)

Ezra Situma was in charge of collating and analyzing the data from the sensors that were collected. The analysis script is based on Linux text-processing tools like `grep`, `awk`, `sort`, `wc` and similar utilities, which it uses to look for abnormal readings, critical alerts, and usage patterns in the hospital log files. The statistics generated gives insight into the heart rate activity, temperature changes and water usage pattern which assists administrators to keep track of the overall health of the hospital environment.

Lucky Umoka – Member 6 (Reporting)

The analyzed sensor data was used to generate reports (actually done by Lucky Umoka). The reporting component gathers the results generated in the analysis stage and compile them in structured report files that are stored in the `reports` directory. These reports provide an overview of the main results, major incidents, and system activity that may be reviewed by hospital management for system operation monitoring and decision-making.

# Project Overview

To simulate a secure hospital monitoring environment using Linux administration, Bash scripting, Python, Git and GitHub, the KNH Digital Infrastructure Project was developed. The system generates sensor data (heart rate, temperature, water usage) continuously from the various sensors by using the `hospital_system.py` script. This information is stored in log files in the `active_logs` directory and can be secured, analyzed, archived and reported on using a suite of administrative scripts.

The successful completion of this project was largely driven by the use of two tools: Git and GitHub.Two tools played a big role in the success of this project – Git and GitHub. Using repositories, branches, commits, pulls, merges and version tracking each member had the ability to develop and test their functionality before adding it to the project. This collaborative workflow eliminated conflicts during development, preserved code history, and guaranteed all contributions were merged into a complete working hospital data management system.
