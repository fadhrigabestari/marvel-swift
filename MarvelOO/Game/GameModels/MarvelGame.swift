//
//  MarvelGame.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 24/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class MarvelGame: Game {
    var isPlayerOneTurn: Bool = true
    var isGameOver: Bool = false

    var handler: Handler
    var playerOne: Character
    var playerTwo: Character
    
    init(handler: Handler, playerOne: Character, playerTwo: Character) {
        self.handler = handler
        self.playerOne = playerOne
        self.playerTwo = playerTwo
    }
    
    func gameLoop() {
        while !isGameOver {
            announceTurn(isPlayerOneTurn: isPlayerOneTurn)
            
            let input = handler.inputManager.getInputString()
            handler.handleInputInGame(input: input,
                                      playerOne: playerOne,
                                      playerTwo: playerTwo,
                                      isPlayerOneTurn: isPlayerOneTurn)
        }
    }
    
    func announceTurn(isPlayerOneTurn: Bool) {
        let message = isPlayerOneTurn ? "PLAYER ONE'S TURN" : "PLAYER TWO'S TURN"
        print(message)
    }
    
    func playerOneSetup() {
        
    }
}
