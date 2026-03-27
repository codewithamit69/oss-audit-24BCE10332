#!/bin/bash
# Script 1: System Identity Report

STUDENT_NAME="Sai Amit"
ROLL_NO="24BCE10332"
SOFTWARE="Git"

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
DATE=$(date)

echo "===================================="
echo " Open Source Audit Project"
echo "===================================="
echo "Name: $STUDENT_NAME"
echo "Roll No: $ROLL_NO"
echo "Software: $SOFTWARE"
echo "------------------------------------"
echo "Distro: $DISTRO"
echo "Kernel: $KERNEL"
echo "User: $USER_NAME"
echo "Uptime: $UPTIME"
echo "Date: $DATE"


