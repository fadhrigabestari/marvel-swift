//
//  Human+BeastCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class HumanBeastCharacterTest: XCTestCase {
    
    var character: HumanBeastCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        character = HumanBeastCharacter(name: "fadh", description: "testing", species: "monyed")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        character = nil
    }

    func testBeastify() {
        XCTAssertEqual(character.health, 90)
        XCTAssertEqual(character.damage, 20)
        XCTAssertEqual(character.abilities[0], "Half-beast")
    }
    
    func testHumanize() {
        XCTAssertEqual(character.abilities[1], "Half-human")
    }
}
