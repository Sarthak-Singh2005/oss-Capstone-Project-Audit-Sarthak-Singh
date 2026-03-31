#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose paragraph and save to file
echo "OPEN SOURCE MANIFESTO" > $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT
echo "I regularly use $TOOL in my daily work." >> $OUTPUT
echo "To me, freedom represents $FREEDOM." >> $OUTPUT
echo "I believe in sharing knowledge and building for the community." >> $OUTPUT
echo "In the future, I aim to create $BUILD and make it freely available." >> $OUTPUT
echo "" >> $OUTPUT
echo "-- $(whoami)" >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT 
