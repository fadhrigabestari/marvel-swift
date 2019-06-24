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
    
    func handleInputInGame(input: String, playerOne: Character, playerTwo: Character, isPlayerOneTurn: Bool) -> Bool {
        action = action.determineAction(action: input)
        if let soloAction = action as? SoloAction {
            if isPlayerOneTurn {
                return soloAction.execute(by: playerOne)
            } else {
                return soloAction.execute(by: playerTwo)
            }
        }
        
        if let duoAction = action as? DuoAction {
            if isPlayerOneTurn {
                return duoAction.execute(by: playerOne, towards: playerTwo)
            } else {
                return duoAction.execute(by: playerTwo, towards: playerOne)
            }
        }
        
        return false
    }
}
