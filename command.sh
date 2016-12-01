#!/bin/bash

#reset the content and settings of the iphone sim
xcrun simctl erase all

#open the iphonesimulator and kill it
#this is required after a system restart
#so the simulator knows to run iPad rather than iPhone apps
echo "Opening iphone simulator"
open "open -a "Simulator"
sleep 10
killall 'iPhone Simulator'
echo "iphone simulator killed"

#delete previous build folders
echo "Removing previous build folder"
rm -r ${WORKSPACE}/build
mkdir ${WORKSPACE}/build

