#!/bin/bash

#reset the content and settings of the iphone sim
xcrun simctl erase all

#open the iphonesimulator and kill it
#this is required after a system restart
#so the simulator knows to run iPad rather than iPhone apps
xcrun instruments -w "iPhone 6s (10.1 Simulator)"
sleep 10
xcodebuild test -scheme LPSimpleExampleUITests -destination "platform=iOS Simulator,name=iPhone 6,OS=latest" -sdk iphonesimulator10.1

#delete previous build folders
echo "Removing previous build folder"
rm -r ${WORKSPACE}/build
mkdir ${WORKSPACE}/build

