//
//  SortingCharUITests.swift
//  SortingCharUITests
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import XCTest

class SortingCharUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()

    }

    override func tearDown() {
        super.tearDown()
    }

    func testDisplaySortedCharWhenClcikSort() {
        let app = XCUIApplication()
        app.textFields["inputField"].tap()
        app.textFields["inputField"].typeText("zad")
        app.buttons["sortButton"].tap()

        XCTAssertEqual(app.staticTexts["sortedLabel"].label, "adz")
    }

    func testDisplayEmptyWhenEnterEmptyString() {
        let app = XCUIApplication()

        app.textFields["inputField"].tap()
        app.textFields["inputField"].typeText("zad")
        app.buttons["sortButton"].tap()

        let deleteKey = XCUIApplication().keys["delete"]
        deleteKey.tap()
        deleteKey.tap()
        deleteKey.tap()
        app.buttons["sortButton"].tap()

        XCTAssertTrue(app.staticTexts["sortedLabel"].label == "")
    }

}
