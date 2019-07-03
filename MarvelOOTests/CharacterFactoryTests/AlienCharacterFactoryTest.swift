//
//  AlienCharacterFactoryTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class AlienCharacterFactoryTest: XCTestCase {
    
    var factory: AlienCharacterFactory!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        factory = AlienCharacterFactory(inputManager: MockFileInputManager(file: "inputManagerTest"))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        factory = nil
    }

    func testManufacture() {
        let character = factory.manufacture()
        XCTAssert(character is AlienCharacter)
        XCTAssertEqual(character.abilities[0], "Alien")
    }
}
