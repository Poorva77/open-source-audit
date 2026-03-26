#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -l | grep $PACKAGE
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system for collaboration" ;;
    apache2) echo "Apache: web server powering the internet" ;;
    mysql-server) echo "MySQL: open-source database system" ;;
    vlc) echo "VLC: multimedia player supporting all formats" ;;
    *) echo "Unknown package" ;;
esac