//
//  AlienCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class AlienCharacterTest: XCTestCase {
    
    var character: AlienCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        character = AlienCharacter(name: "fadh", description: "testing", origin: "bumi")
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        character = nil
    }
    
    func testAlienate() {
        XCTAssertEqual(character.health, 150)
        XCTAssertEqual(character.damage, 15)
        XCTAssertEqual(character.abilities[0], "Alien")
    }
}
