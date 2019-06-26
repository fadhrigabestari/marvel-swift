//
//  BasicCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class BasicCharacterTest: XCTestCase {
    var basicCharacter: BasicCharacter!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        basicCharacter = BasicCharacter(name: "Fadhriga", description: "Doing unit test on command line app")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        basicCharacter = nil
    }
    
    func testCharacterInitialized() {
        XCTAssertEqual(basicCharacter.name, "Fadhriga")
        XCTAssertEqual(basicCharacter.description, "Doing unit test on command line app")
    }
}
