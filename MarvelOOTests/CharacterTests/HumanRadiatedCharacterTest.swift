//
//  HumanRadiatedCharacterTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest

class HumanRadiatedCharacterTest: XCTestCase {
    
    var character: HumanRadiatedCharacter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        character = HumanRadiatedCharacter(name: "Fadhriga", description: "Unit testing", radiationLevel: 20)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        character = nil
    }
    
    func shouldRadiate() {
        XCTAssertEqual(character.health, 120)
        XCTAssertEqual(character.damage, 30)
        XCTAssertEqual(character.abilities[0], "Gamma radiated")
    }
    
    func shouldHumanize() {
        XCTAssertEqual(character.abilities[1], "Semi-human")
    }
}
