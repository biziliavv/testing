#!/bin/bash

#reset the content and settings of the iphone sim
xcrun simctl erase all

#open the iphonesimulator and kill it
#this is required after a system restart
#so the simulator knows to run iPad rather than iPhone apps
open /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app
sleep 10


