//
//  Handler.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class GameHandler: Handler {
    var inputManager: InputManager = InputManager()
    var printer: Printer = Printer()
    
    var factory: CharacterFactory = BasicCharacterFactory()
    var action: Action = NoAction()
    
    func handleInputInSetup(input: Int) -> Character {
        factory = factory.determineFactory(option: input)
        
        return factory.manufacture()
    }
    
    func handleInputInGame(input: String, playerOne: Character, playerTwo: Character, isPlayerOneTurn: inout Bool) {
        action = action.determineAction(action: input)
        if var soloAction = action as? SoloAction {
            soloAction.execute(by: playerOne, isPlayerOneTurn: &isPlayerOneTurn)
            soloAction.execute(by: playerTwo, isPlayerOneTurn: &isPlayerOneTurn)
        }
        
        if var duoAction = action as? DuoAction {
            if isPlayerOneTurn {
                duoAction.execute(by: playerOne, towards: playerTwo, isPlayerOneTurn: &isPlayerOneTurn)
            } else {
                duoAction.execute(by: playerTwo, towards: playerOne, isPlayerOneTurn: &isPlayerOneTurn)
            }
        }
    }
}
