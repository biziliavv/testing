#!/bin/bash

xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6,OS=10.1" -sdk iphonesimulator10.1 | xcpretty --report html --output build/reports/iphone6.html
xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6s,OS=10.1" -sdk iphonesimulator10.1 | xcpretty --report html --output build/reports/iphone6s.html

#delete previous build folders

