#!/bin/bash

#reset the content and settings of the iphone sim
rm -r ~/Library/Application\ Support/iPhone\ Simulator/

#open the iphonesimulator and kill it
#this is required after a system restart
#so the simulator knows to run iPad rather than iPhone apps
echo "Opening iphone simulator"
open "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneSimulator.platform/Developer/Applications/iPhone Simulator.app"
sleep 10
killall 'iPhone Simulator'
echo "iphone simulator killed"

#delete previous build folders
echo "Removing previous build folder"
rm -r ${WORKSPACE}/build
mkdir ${WORKSPACE}/build

#Start sinatra server in the background
ruby TestProject/server.rb &

#get the PID of the process
PID=$!

#save PID to file
echo $PID > ${WORKSPACE}/sinatra.pid
