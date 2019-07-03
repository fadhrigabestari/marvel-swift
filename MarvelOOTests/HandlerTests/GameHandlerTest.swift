//
//  GameHandlerTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest

class GameHandlerTest: XCTestCase {
    
    var handler: GameHandler!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        handler = GameHandler(inputManager: MockFileInputManager(file: "inputManagerTest"),
                              printer: Printer(),
                              factory: BasicCharacterFactory(inputManager: MockFileInputManager(file: "inputManagerTest")),
                              action: NoAction(printer: Printer()))
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        handler = nil
    }

    func testHandleInputInSetup() {
        let factory = handler.handleInputInSetup(input: 1)
        XCTAssert(factory is HumanCharacter)
    }
    
    func testHandleInputInGame() {
        let character = HumanCharacter(name: "fadh", description: "testing")
        XCTAssertFalse(handler.handleInputInGame(input: "status", playerOne: character, playerTwo: character, isPlayerOneTurn: true))
    }
}
