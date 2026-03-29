#!/bin/bas
# Script 1: System Identity Report
# Author: San Maria Job | Reg No: 24BCY10086
# Course: Open Source Software
# Purpose: Displays system information as a welcome/identity screen

# --- Variables ---
STUDENT_NAME= "San Maria Job" 
SOFTWARE_CHOICE="Git"             

# --- Gather system information using command substitution ---
KERNEL=$(uname -r)                 # Linux kernel version
USER_NAME=$(whoami)                # Currently logged-in user
HOME_DIR=$HOME                     # Home directory of current user
UPTIME=$(uptime -p)                # Human-readable uptime
CURRENT_DATE=$(date '+%d %B %Y')   # Formatted current date
CURRENT_TIME=$(date '+%H:%M:%S')   # Current time
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d= -f2 | tr -d '"')  # Distro name

# --- Display formatted output ---
echo "========================================================"
echo "        Open Source Audit — System Identity Report"
echo "========================================================"
echo "  Student     : $STUDENT_NAME"
echo "  Software    : $SOFTWARE_CHOICE"
echo "--------------------------------------------------------"
echo "  Distribution: $DISTRO"
echo "  Kernel Ver  : $KERNELSho"
echo "  Logged User : $USER_NAME"
echo "  Home Dir    : $HOME_DIR"
echo "  Uptime      : $UPTIME"
echo "  Date        : $CURRENT_DATE"
echo "  Time        : $CURRENT_TIME"
echo "--------------------------------------------------------"
echo "  License Note: The Linux kernel running this system"
echo "  is licensed under GNU GPL v2 — meaning its source"
echo "  code is freely available, modifiable, and shareable."
echo "======================================================












