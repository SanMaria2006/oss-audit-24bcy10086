#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: SAN MARIA JOB | Reg No: 24BCY10086
# Course: Open Source Software
# Purpose: Interactively generates a personal open source philosophy statement

# Note on aliases: In a real workflow, you might alias this script as
# 'manifesto' using: alias manifesto='bash ~/scripts/script5_manifesto.sh'
# Aliases make long commands shorter — a key shell productivity concept.

echo "========================================================"
echo "       Open Source Manifesto Generator"
echo "========================================================"
echo "  Answer three questions to generate your manifesto."
echo ""

# --- Read user input interactively ---
read -p "  1. Name one open-source tool you use every day: " TOOL
read -p "  2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "  3. Name one thing you would build and share freely: " BUILD

# --- Get current date for the manifesto ---
DATE=$(date '+%d %B %Y')

# --- Output filename using whoami for personalization ---
OUTPUT="manifesto_$(whoami).txt"

# --- String concatenation to build the manifesto paragraph ---
MANIFESTO="Open Source Manifesto — $DATE

Every day, I rely on $TOOL — a tool I did not pay for, did not build alone,
and could not have imagined without the thousands of contributors who gave
their time freely. To me, freedom in software means $FREEDOM. Not just the
absence of a price tag, but the presence of trust — the trust that I can
look inside, understand, and improve what I use.

One day, I want to build $BUILD and release it openly. Not because I have
to, but because that is how the best things in this world get made.
Someone shared their work with me. I intend to pass it forward.

— $(whoami) | Open Source Software Course"

# --- Write manifesto to file using > (overwrite) ---
echo "$MANIFESTO" > "$OUTPUT"

echo ""
echo "========================================================"
echo "  [✔] Manifesto saved to: $OUTPUT"
echo "========================================================"
echo ""

# --- Display the generated manifesto using cat ---
cat "$OUTPUT"
