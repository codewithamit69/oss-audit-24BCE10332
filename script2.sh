#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

echo "Checking package: $PACKAGE"
echo "--------------------------"

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."

    dpkg -s $PACKAGE | grep -E 'Version|Description'
else
    echo "$PACKAGE is NOT installed."
fi

echo ""

case $PACKAGE in
    git)
        echo "Git is a distributed version control system."
        ;;
    *)
        echo "Unknown package."
        ;;
esac
