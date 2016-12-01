#!/bin/bash

#reset the content and settings of the iphone sim
rm -r ~/Library/Application\ Support/iPhone\ Simulator/

#open the iphonesimulator and kill it
#this is required after a system restart
#so the simulator knows to run iPad rather than iPhone apps
echo "Opening iphone simulator"
open "open -a "Simulator" --args -CurrentDeviceUDID EBCEBBA3-C329-45E5-B991-28541FF1540A"
sleep 10
killall 'iPhone Simulator'
echo "iphone simulator killed"

#delete previous build folders
echo "Removing previous build folder"
rm -r ${WORKSPACE}/build
mkdir ${WORKSPACE}/build

