//
//  SortingCharTests.swift
//  SortingCharTests
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import XCTest
@testable import SortingChar

class SortingCharTests: XCTestCase {

    var sorter: Sorter!

    override func setUp() {
        super.setUp()
        sorter = Sorter()
    }

    func testInputCatShouldBeAct() {
        let result = sorter.sort(input: "cat")
        XCTAssertEqual(result, "act")
    }

    func testInputDogShouldBeDgo() {
        let result = sorter.sort(input: "dog")
        XCTAssertEqual(result, "dgo")
    }

    func testInputHorseShouldBeEhors() {
        let result = sorter.sort(input: "horse")
        XCTAssertEqual(result, "ehors")
    }

    func testInputUpperHorseShouldBeEhors() {
        let result = sorter.sort(input: "Horse")
        XCTAssertEqual(result, "ehors", "upper case failed")
    }

    func testInputWithWhitespaceShouldNotContainWhitespace() {
        let result = sorter.sort(input: "hello world")
        XCTAssertEqual(result, "dehllloorw")
    }

}
