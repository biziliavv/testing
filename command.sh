#!/bin/bash

xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6,OS=10.1" -sdk iphonesimulator10.1
xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6s,OS=10.1" -sdk iphonesimulator10.1

#delete previous build folders

