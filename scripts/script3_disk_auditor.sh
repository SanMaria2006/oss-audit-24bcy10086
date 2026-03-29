#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: SAN MARIA JOB | Reg No: 24BCY10086
# Course: Open Source Software
# Purpose: Loops through key system directories and reports permissions and disk usage

# --- List of important system directories to audit ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================================"
echo "         Directory Audit Report"
echo "========================================================"
echo "  Format: Permissions | Owner | Group | Size"
echo "--------------------------------------------------------"

# --- For loop: iterate over each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner, group using awk on ls output
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        GROUP=$(ls -ld "$DIR" | awk '{print $4}')
        # Get directory size, suppress permission errors with 2>/dev/null
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "  $DIR"
        echo "    Permissions : $PERMS"
        echo "    Owner       : $OWNER | Group: $GROUP"
        echo "    Size        : $SIZE"
        echo "--------------------------------------------------------"
    else
        # Directory does not exist on this system
        echo "  [!] $DIR does not exist on this system"
        echo "--------------------------------------------------------"
    fi
done

# --- Check Git's config directory specifically ---
GIT_CONFIG="$HOME/.gitconfig"
echo ""
echo "  Git-Specific Config Check:"

if [ -f "$GIT_CONFIG" ]; then
    # Git config file found — show its permissions
    PERMS=$(ls -l "$GIT_CONFIG" | awk '{print $1, $3, $4}')
    echo "  [✔] Git config found at $GIT_CONFIG"
    echo "      Permissions: $PERMS"
else
    echo "  [!] No .gitconfig found. Run: git config --global user.name 'Your Name'"
fi

echo "========================================================"
