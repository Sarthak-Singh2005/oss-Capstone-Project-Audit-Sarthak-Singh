# VITyarthi | Open Source Software  
## The Open-Source Audit

A capstone project for the **OSS NGMC** course.

This project presents a structured audit of the open-source software **Python**, along with five Linux shell scripts that demonstrate practical command-line skills and connect software freedom with real system administration tasks.

## Project Details

- **Course:** Open Source Software | Unit Coverage: 1–5
- **Student Name:** Sarthak Singh
- **Registration Number:** 24BAI10648
- **Slot:** A13
- **Date of Submission:** 31/03/2026
- **Chosen Software:** Python

## About the Project

The report explores Python as an open-source project from multiple angles:

- its origin and the problem it was created to solve
- the PSF License and the freedoms it grants
- ethical questions around open source
- Linux system integration and package analysis
- the open-source ecosystem around Python
- a comparison with the proprietary alternative MATLAB

The project also includes five shell scripts that demonstrate scripting, file handling, looping, conditionals, and interactive input.

## Report Structure

### Part A — Origin and Philosophy
Covers Python’s purpose, history, license, the four freedoms of free software, and ethical questions around open source.

### Part B — Linux Footprint
Covers installation, binary location, permissions, configuration files, libraries, logs, users, and update mechanisms on Linux.

### Part C — The FOSS Ecosystem
Covers dependencies, tools built on Python, community governance, and Python’s relation to the LAMP/LAPP stack.

### Part D — Open Source vs Proprietary
Compares Python with MATLAB across cost, security, support, freedom to modify, and control.

## Shell Scripts Included

1. **System Identity Report**  
   Displays Linux distribution details, kernel version, user information, uptime, and date/time.

2. **FOSS Package Inspector**  
   Checks whether Python is installed, shows version details, and prints a short package description.

3. **Disk and Permission Auditor**  
   Loops through important directories and reports size, permissions, owner, and group.

4. **Log File Analyzer**  
   Reads a log file line by line, counts keyword matches, and prints a summary.

5. **Open Source Manifesto Generator**  
   Prompts the user with three questions and generates a personalized manifesto text file.

## Requirements

- Linux system (Ubuntu/Debian recommended)
- Bash shell
- Python 3
- Standard command-line tools such as:
  - `uname`
  - `whoami`
  - `uptime`
  - `ls`
  - `du`
  - `grep`
  - `awk`
  - `dpkg`
  - `apt`

## How to Run the Scripts

Make each script executable:
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

Run a script with:

```bash
./script1.sh
```

For the log analyzer, provide a log file and keyword:

```bash
./script4.sh /var/log/syslog error
```

For the manifesto generator, run it interactively:

```bash
./script5.sh
```

## Suggested Folder Structure

```text
OSSCapstoneProject/
├── README.md
├── report/
│   └── OSSCapstoneProject.docx
└── scripts/
    ├── script1.sh
    ├── script2.sh
    ├── script3.sh
    ├── script4.sh
    └── script5.sh
```

## License

This project is an academic submission based on open-source software concepts. Python itself is distributed under the **Python Software Foundation License**.

## Acknowledgements

- Python Software Foundation
- Open-source community contributors
- OSS NGMC course materials
