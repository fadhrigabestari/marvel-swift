//
//  InputManagerTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class InputManagerTest: XCTestCase {
    
    var inputManager: MockFileInputManager!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        inputManager = nil
    }
    
    func testGetInputString() {
        inputManager = MockFileInputManager(file: "inputManagerTest")
        let result = inputManager.getInputString()
        XCTAssertEqual(result, "test\n")
    }
    
    func testGetInputInt() {
        inputManager = MockFileInputManager(file: "inputManagerIntTest")
        let result = inputManager.getInputInt()
        XCTAssertEqual(result, 123)
    }
}
