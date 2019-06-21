//
//  Handler.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class BasicHandler: Handler {
    let inputManager: BasicInput = BasicInput()
    var action: Action = NoAction()
    
//    func handleInputInSetup() -> (Character, Character) {
//
//    }
    
    func handleInputInGame(playerOne: Character, playerTwo: Character, isPlayerOneTurn: Bool) {
        let input = inputManager.getInput()
        action = action.determineAction(action: input)
        
        if let soloAction = action as? SoloAction {
            if isPlayerOneTurn {
                soloAction.execute(by: playerOne)
            } else {
                soloAction.execute(by: playerTwo)
            }
        }
        
        if let duoAction = action as? DuoAction {
            if isPlayerOneTurn {
                duoAction.execute(by: playerOne, towards: playerTwo)
            } else {
                duoAction.execute(by: playerTwo, towards: playerOne)
            }
        }
    }
}
