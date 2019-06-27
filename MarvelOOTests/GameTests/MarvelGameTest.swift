//
//  MarvelGameTest.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import XCTest
@testable import MarvelOO

class MarvelGameTest: XCTestCase {
    
    var game: MarvelGame!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
        let gameHandler = GameHandler(inputManager: InputManager(),
                                      printer: Printer(),
                                      factory: BasicCharacterFactory(),
                                      action: NoAction(printer: Printer()))
        let isPlayerOneTurn = true
        let isGameOver = false
        game = MarvelGame(handler: gameHandler, isPlayerOneTurn: isPlayerOneTurn, isGameOver: isGameOver)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        game = nil
    }
    
    //how to test?
}
