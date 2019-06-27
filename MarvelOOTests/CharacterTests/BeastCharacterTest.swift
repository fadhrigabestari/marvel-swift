//
//  BeastCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class BeastCharacterTest: XCTestCase {
    
    var character: BeastCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        character = BeastCharacter(name: "fadh", description: "testing", species: "monyed")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        character = nil
    }
    
    func testBeastify() {
        XCTAssertEqual(character.health, 80)
        XCTAssertEqual(character.damage, 30)
        XCTAssertEqual(character.abilities[0], "Beast")
    }
}
