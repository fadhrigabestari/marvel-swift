//
//  Handler.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class GameHandler: Handler, GameSetupHandler, GameLoopHandler {
    var inputManager: CommandLineInputManager
    var printer: Printer
    
    var factory: CharacterFactory
    var action: Action
    
    // MARK: DEPENDENCY INVERSIONS PRINCIPLE
    init(inputManager: CommandLineInputManager, printer: Printer, factory: CharacterFactory, action: NoAction) {
        self.inputManager = inputManager
        self.printer = printer
        self.factory = factory
        self.action = action
    }
    
    func handleInputInSetup(input: Int) -> Character {
        factory = factory.determineFactory(option: input)
        
        return factory.manufacture()
    }
    
    func handleInputInGame(input: String, playerOne: Character, playerTwo: Character, isPlayerOneTurn: Bool) -> Bool {
        action = action.determineAction(action: input, printer: action.printer)
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
