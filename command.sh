#!/bin/bash

xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6,OS=10.1" -sdk iphonesimulator10.1 | xcpretty --report html
xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6s,OS=10.1" -sdk iphonesimulator10.1 | xcpretty --report html

#delete previous build folders

