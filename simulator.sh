#!/bin/bash

#reset the content and settings of the iphone sim
xcrun simctl erase all

#open the iphonesimulator and kill it
#this is required after a system restart
#so the simulator knows to run iPad rather than iPhone apps
xcrun instruments -w "iPhone 6s (10.1) [404602A6-7722-485A-BB64-11DE7EE45A42] (Simulator)"
sleep 10


