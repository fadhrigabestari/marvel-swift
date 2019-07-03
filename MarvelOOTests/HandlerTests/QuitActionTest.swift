//
//  QuitActionTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 03/07/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest

class QuitActionTest: XCTestCase {
    
    var action: QuitAction!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        action = QuitAction(printer: Printer())
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExecute() {
        let character = HumanCharacter(name: "fadh", description: "testing")
        XCTAssertFalse(action.execute(by: character))
    }
}
