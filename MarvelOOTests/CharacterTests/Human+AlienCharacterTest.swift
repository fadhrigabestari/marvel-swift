//
//  Human+AlienCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class HumanAlienCharacterTest: XCTestCase {
    
    var character: HumanAlienCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        character = HumanAlienCharacter(name: "fadh", description: "testing", origin: "asgard")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        character = nil
    }

    func testAlinate() {
        XCTAssertEqual(character.health, 125)
        XCTAssertEqual(character.damage, 12)
        XCTAssertEqual(character.abilities[0], "Half-alien")
    }
    
    func testHumanize() {
        XCTAssertEqual(character.abilities[1], "Half-human")
    }
}
