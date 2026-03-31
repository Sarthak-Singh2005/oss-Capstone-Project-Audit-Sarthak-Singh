#!/bin/bash
# Script 1: System Identity Report
# Author: Sarthak

# Storing user-defined values
NAME="Sarthak"
SOFTWARE="Python"

# Fetching system information using commands
KERNEL=$(uname -r)        # Gets kernel version
USER=$(whoami)            # Gets current logged-in user
HOME_DIR=$HOME            # Gets home directory path
UPTIME=$(uptime -p)       # Gets system uptime
DATE=$(date '+%d-%m-%Y %H:%M:%S')   # Gets current date and time
DISTRO=$(hostnamectl | grep "Operating System" | cut -d ':' -f2)  # Gets OS name

# Displaying output
echo "=========================================="
echo "        SYSTEM IDENTITY REPORT"
echo "=========================================="

# Printing user and software info
echo "Name            : $NAME"
echo "Software        : $SOFTWARE"
echo ""

# Printing system details
echo "OS              : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER"
echo "Home Directory  : $HOME_DIR"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $DATE"
echo ""

# Displaying license information
echo "License         : GPL (Open Source License)"

echo "=========================================="
