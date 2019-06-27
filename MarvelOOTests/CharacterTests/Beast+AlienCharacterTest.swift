//
//  Beast+AlienCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class BeastAlienCharacterTest: XCTestCase {
    
    var character: BeastAlienCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        character = BeastAlienCharacter(name: "fadh", description: "testing", origin: "bumi", species: "monyed")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        character = nil
    }

    func testAlienateAndBeastify() {
        XCTAssertEqual(character.health, 115)
        XCTAssertEqual(character.damage, 22)
        XCTAssertEqual(character.abilities, ["Half-alien", "Half-beast"])
    }
}
