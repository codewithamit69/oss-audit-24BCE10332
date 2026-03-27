#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "Open Source Manifesto Generator"
echo ""

read -p "Enter a tool you use: " TOOL
read -p "What does freedom mean to you? " FREEDOM
read -p "What will you build? " BUILD

FILE="manifesto_$(whoami).txt"
DATE=$(date)

echo "Open Source Manifesto" > $FILE
echo "Date: $DATE" >> $FILE
echo "" >> $FILE

echo "I use $TOOL daily. Freedom means $FREEDOM to me. I want to build $BUILD and share it with the world. Open source promotes collaboration and innovation." >> $FILE

echo ""
echo "Saved to $FILE"
cat $FILE

