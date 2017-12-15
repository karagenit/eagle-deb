#!/usr/bin/env bash

# First, extract the tarball, like 'tar -xvzf Autodesk_Eagle.tar.gz'
# This will give you a new directory like 'eagle-8.5.0'
# Call this script (from this repo - it needs the .desktop file found here) with 
# the extracted directory name as it's only argument.

files=$1

# Moves the program to a proper location
mv "$files" "/usr/local/lib/"

# Links the executable to your path
ln -s "/usr/local/lib/$files" "/usr/local/bin/eagle"

# Allows Window Managers like GNOME to find Eagle
cp "./eagle.desktop" "/usr/share/applications/"
