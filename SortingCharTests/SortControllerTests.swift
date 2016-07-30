//
//  SortControllerTests.swift
//  SortingChar
//
//  Created by Narat Suchartsunthorn on 7/30/16.
//  Copyright © 2016 mixth. All rights reserved.
//

import XCTest
@testable import SortingChar

class SortControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    func testDisplayResultShouldHaveBeenCalledWhenSorted() {
        let somkiatViewController = SomkiatViewController()
        let ctrl = SortController(controller: somkiatViewController)
        ctrl.sort("cat")
        XCTAssertTrue(somkiatViewController.spyCall)
    }

    func testDisplayResultShouldNotHaveBeenCalledWhenTextIsEmpty() {
        let somkiatViewController = SomkiatViewController()
        let ctrl = SortController(controller: somkiatViewController)
        ctrl.sort("")
        XCTAssertFalse(somkiatViewController.spyCall)
    }

    func testDisplayEmptyWhenInputEmpty() {
        let somkiatViewController = SomkiatViewController()
        let ctrl = SortController(controller: somkiatViewController)
        ctrl.sort("")
        XCTAssertTrue(somkiatViewController.spyDisplayEmpty)
    }

}
class SomkiatViewController: SortControllerProtocol {
    var spyCall: Bool = false
    var spyDisplayEmpty: Bool = false
    func displayResult(result: String) {
        spyCall = true
    }
    func displayEmpty() {
        spyDisplayEmpty = true
    }
}
