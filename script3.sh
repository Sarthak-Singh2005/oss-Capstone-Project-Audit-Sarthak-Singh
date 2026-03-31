#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Sarthak

DIRECTORIES=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "   DISK AND PERMISSION AUDIT REPORT"
echo "=========================================="

for DIR in "${DIRECTORIES[@]}"; do
    if [ -d "$DIR" ]; then
        DETAILS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions/Owner/Group : $DETAILS"
        echo "Size : $SIZE"
        echo ""
    else
        echo "$DIR does not exist"
    fi
done

echo "=========================================="
echo " Python Configuration Directory Check"
echo "=========================================="

if [ -d "/etc/python3" ]; then
    CONFIG_DETAILS=$(ls -ld /etc/python3 | awk '{print $1, $3, $4}')
    echo "/etc/python3 exists"
    echo "Permissions/Owner/Group : $CONFIG_DETAILS"
else
    echo "/etc/python3 does not exist"
fi

echo "=========================================="
