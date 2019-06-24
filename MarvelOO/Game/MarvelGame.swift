//
//  MarvelGame.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 24/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class MarvelGame {
    var isPlayerOneTurn: Bool = true
    var isGameOver: Bool = false
    var handler: Handler = GameHandler()
    var factory: CharacterFactory = BasicCharacterFactory()

    
    func setup() -> (Character, Character) {
        let playerOne = characterCreation()
        let playerTwo = characterCreation()
        
        return (playerOne: playerOne, playerTwo: playerTwo)
    }
    
    func gameLoop(playerOne: Character, playerTwo: Character) {
        while !isGameOver {
            announceTurn()
            handler.printer.printGameLoop()
            
            let input = handler.inputManager.getInputString()
            handler.handleInputInGame(input: input,
                                      playerOne: playerOne,
                                      playerTwo: playerTwo,
                                      isPlayerOneTurn: &isPlayerOneTurn)
            checkGameOver(playerOne: playerOne, playerTwo: playerTwo)
            if isGameOver {
                reverseTurn()
            }
        }
        announceWinner()
    }
    
    func characterCreation() -> Character {
        announceTurn()
        handler.printer.printCharacterCreation()
        let input = handler.inputManager.getInputInt()
        factory = factory.determineFactory(option: input)
        let character = factory.manufacture()
        reverseTurn()
        
        return character
    }
    
    func announceTurn() {
        let message = isPlayerOneTurn ? "PLAYER ONE'S TURN" : "PLAYER TWO'S TURN"
        print(message)
    }
    
    func reverseTurn() {
        isPlayerOneTurn = !isPlayerOneTurn
    }
    
    func checkGameOver(playerOne: Character, playerTwo: Character) {
        if playerOne.health <= 0 || playerTwo.health <= 0 {
            isGameOver = true
        }
    }
    
    func announceWinner() {
        let message = isPlayerOneTurn ? "PLAYER ONE WINS" : "PLAYER TWO WINS"
        print(message)
    }
}
