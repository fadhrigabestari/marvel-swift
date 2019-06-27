//
//  NoActionTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest

class NoActionTest: XCTestCase {
    
    var action: NoAction!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        let printer = Printer()
        action = NoAction(printer: printer)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        action = nil
    }

    func testExecute() {
        let character = HumanCharacter(name: "fadh", description: "testing")
        XCTAssertFalse(action.execute(by: character))
    }
}
