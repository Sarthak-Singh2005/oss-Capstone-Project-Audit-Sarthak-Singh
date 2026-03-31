#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sarthak

# List of important system directories to audit
DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

# Print report header
echo "=========================================="
echo "   DISK AND PERMISSION AUDIT REPORT"
echo "=========================================="

# Loop through each directory in the list
for DIR in "${DIRECTORIES[@]}"; do
    
    # Check if the directory exists
    if [ -d "$DIR" ]; then
        
        # Get permissions, owner, and group using ls and awk
        DETAILS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        
        # Get total size of the directory (human-readable)
        # Suppress permission errors using 2>/dev/null
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        # Display collected information
        echo "Directory : $DIR"
        echo "Permissions/Owner/Group : $DETAILS"
        echo "Size : $SIZE"
        echo ""
    
    else
        # If directory does not exist, print message
        echo "$DIR does not exist"
    fi
done

# Section header for Python configuration directory check
echo "=========================================="
echo " Python Configuration Directory Check"
echo "=========================================="

# Check if Python config directory exists
if [ -d "/etc/python3" ]; then
    
    # Get permissions, owner, and group info
    CONFIG_DETAILS=$(ls -ld /etc/python3 | awk '{print $1, $3, $4}')
    
    # Print details
    echo "/etc/python3 exists"
    echo "Permissions/Owner/Group : $CONFIG_DETAILS"
else
    # If directory is missing
    echo "/etc/python3 does not exist"
fi

# End of script output
echo "=========================================="
