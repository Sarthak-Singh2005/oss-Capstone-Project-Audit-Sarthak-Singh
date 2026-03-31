#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Sarthak

PACKAGE="python3"

echo "=========================================="
echo "FOSS PACKAGE INSPECTOR"
echo "=========================================="

# Check if package is installed (Ubuntu uses dpkg)
if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."

    echo ""
    echo "Package Details:"
    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "Software Description:"
echo ""

# Case statement
case $PACKAGE in
    python3)
        echo "Python: a powerful open-source programming language used in many domains."
        ;;
    git)
        echo "Git: version control system for tracking code changes."
        ;;
    apache2)
        echo "Apache: open-source web server."
        ;;
    mysql)
        echo "MySQL: open-source relational database."
        ;;
    *)
        echo "No description available."
        ;;
esac

echo "==========================================" 
