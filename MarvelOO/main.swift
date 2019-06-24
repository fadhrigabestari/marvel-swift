//
//  main.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

let handler = GameHandler()
var game = MarvelGame()

var playerOne: Character
var playerTwo: Character

(playerOne, playerTwo) = game.setup()
game.gameLoop(playerOne: playerOne, playerTwo: playerTwo)
