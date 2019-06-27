//
//  HumanCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class HumanCharacterTest: XCTestCase {
    
    var character: HumanCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        character = HumanCharacter(name: "Fadhriga", description: "Unit testing")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        character = nil
    }

    func testHumanize() {
        XCTAssertEqual(character.abilities[0], "Human")
    }
}
