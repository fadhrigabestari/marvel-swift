//
//  main.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

// Game setup
let gameHandler = GameHandler(inputManager: CommandLineInputManager(),
                          printer: Printer(),
                          factory: BasicCharacterFactory(inputManager: CommandLineInputManager()),
                          action: NoAction(printer: Printer()))

var isPlayerOneTurn = true
var isGameOver = false
var playerOne: Character
var playerTwo: Character

// Game functions
func setup() -> (Character, Character) {
    let playerOne = characterCreation()
    let playerTwo = characterCreation()
    
    return (playerOne: playerOne, playerTwo: playerTwo)
}

func gameLoop(playerOne: Character, playerTwo: Character) {
    while !isGameOver {
        announceTurn()
        gameHandler.printer.printGameLoop()
        
        let input = gameHandler.inputManager.getInputString()
        let shouldReverseTurn = gameHandler.handleInputInGame(input: input,
                                                              playerOne: playerOne,
                                                              playerTwo: playerTwo,
                                                              isPlayerOneTurn: isPlayerOneTurn)
        checkGameOver(playerOne: playerOne, playerTwo: playerTwo)
        
        if shouldReverseTurn {
            reverseTurn()
        }
        
        if isGameOver {
            reverseTurn()
        }
    }
    announceWinner()
}

func characterCreation() -> Character {
    announceTurn()
    gameHandler.printer.printCharacterCreation()
    let input = gameHandler.inputManager.getInputInt()
    gameHandler.factory = gameHandler.factory.determineFactory(inputManager: CommandLineInputManager(), option: input)
    let character = gameHandler.factory.manufacture()
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

// main
(playerOne, playerTwo) = setup()
gameLoop(playerOne: playerOne, playerTwo: playerTwo)

