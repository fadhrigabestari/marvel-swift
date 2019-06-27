//
//  AlienCharacterFactoryTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest

class AlienCharacterFactoryTest: XCTestCase {
    
    var factory: AlienCharacterFactory!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        factory = AlienCharacterFactory()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        factory = nil
    }

    func shouldManufacture() {
        let character = factory.manufacture()
        XCTAssert(character === AlienCharacter(name: "fadh", description: "wa", origin: "bumi"))
    }
}
