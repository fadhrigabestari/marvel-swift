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
                          factory: BasicCharacterFactory(),
                          action: NoAction(printer: Printer()))
let isPlayerOneTurn = true
let isGameOver = false

var game = MarvelGame(handler: gameHandler, isPlayerOneTurn: isPlayerOneTurn, isGameOver: isGameOver)

var playerOne: Character
var playerTwo: Character

(playerOne, playerTwo) = game.setup()
game.gameLoop(playerOne: playerOne, playerTwo: playerTwo)
