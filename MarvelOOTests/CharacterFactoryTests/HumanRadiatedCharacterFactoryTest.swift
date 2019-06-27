//
//  HumanRadiatedCharacterFactoryTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest

class HumanRadiatedCharacterFactoryTest: XCTestCase {
    
    var factory: HumanRadiatedCharacterFactory!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        factory = HumanRadiatedCharacterFactory()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        factory = nil
    }

    func shouldManufacture() {
        let character = factory.manufacture()
        XCTAssert(character === HumanRadiatedCharacter(name: "fadh", description: "wa", radiationLevel: 10))
    }
}
