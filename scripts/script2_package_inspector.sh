#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: SAN MARIA JOB | Reg No: 24BCY10086
# Course: Open Source Software
# Purpose: Checks if a given OSS package is installed and describes its philosophy

# --- Define the package to inspect ---
PACKAGE="git"   # Our chosen open-source software

echo "========================================================"
echo "         FOSS Package Inspector — $PACKAGE"
echo "========================================================"

# --- Check if package is installed using dpkg (Debian/Ubuntu) ---
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "[✔] $PACKAGE is installed on this system."
    echo ""
    echo "--- Package Details ---"
    # Extract version, license info, and description using grep
    dpkg -s "$PACKAGE" | grep -E 'Version|Homepage|Description'
else
    # Package not found — inform user
    echo "[✗] $PACKAGE is NOT installed."
    echo "    Install it using: sudo apt install $PACKAGE"
    exit 1
fi

echo ""
echo "--- Open Source Philosophy Note ---"

# --- Case statement: prints philosophy note based on package name ---
case $PACKAGE in
    git)
        echo "Git: Born from Linus Torvalds' frustration with proprietary tools."
        echo "It gave the world distributed version control — free and open forever."
        ;;
    apache2 | httpd)
        echo "Apache: The web server that powered the early open internet."
        ;;
    mysql | mariadb)
        echo "MySQL: Open source at the heart of millions of web applications."
        ;;
    firefox)
        echo "Firefox: A nonprofit's fight to keep the web open and free."
        ;;
    vlc)
        echo "VLC: Built by students in Paris — plays anything, costs nothing."
        ;;
    python3 | python)
        echo "Python: Shaped entirely by community consensus for decades."
        ;;
    *)
        # Default case if package name is unrecognized
        echo "$PACKAGE: An open-source tool built on the principles of freedom and sharing."
        ;;
esac

echo "========================================================"
