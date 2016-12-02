//
//  LPSimpleExampleUITests.swift
//  LPSimpleExampleUITests
//
//  Created by Vitaliy Bizilia on 10/21/16.
//  Copyright © 2016 Calabash. All rights reserved.
//

import XCTest

class LPSimpleExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRemove() {
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Second"].tap()
        tabBarsQuery.buttons["Third"].tap()
        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.swipeLeft()
        
        
        
        
    
    }
    func testRest() {
        
        let app = XCUIApplication()
        app.switches["switch"].tap()
        app.buttons["login"].tap()
        
    }
    func testingTabs(){
        
        let tabBarsQuery = XCUIApplication().tabBars
        tabBarsQuery.buttons["Second"].tap()
        tabBarsQuery.buttons["Third"].tap()
        tabBarsQuery.buttons["Fourth"].tap()
        tabBarsQuery.buttons["First"].tap()
        
    }
    
    func testFirstScreen(){
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["First"].tap()
        app.buttons["tl"].tap()
        app.buttons["tr"].tap()
        app.buttons["bl"].tap()
        app.buttons["br"].tap()
        app.buttons["BAL:42"].tap()
    }
    func testLastScreen(){
        
        let app = XCUIApplication()
        app.tabBars.buttons["Fourth"].tap()
        sleep(8)
        app.buttons["Toggle the Secret"].tap()
        sleep(2)
        app.staticTexts["An internal link. Touch!"].tap()
        
    }
}
    


