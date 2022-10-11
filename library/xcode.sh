#!/bin/bash

XCODE_BUILD=$1
XIP=$2

echo "will install from location: $XIP"

cd /Applications
xip --expand $XIP 
$XCODE_BUILD -license accept
$XCODE_BUILD -runFirstLaunch

exit $?
