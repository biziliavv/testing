xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6,OS=latest" -sdk iphonesimulator10.1 | xcpretty --report html

xcodebuild test -scheme LPSimpleExample -destination "platform=iOS Simulator,name=iPhone 6s,OS=latest" -sdk iphonesimulator10.1 | xcpretty --report html

