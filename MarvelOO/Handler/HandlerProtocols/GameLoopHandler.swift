//
//  GameLoopHandler.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 26/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol GameLoopHandler {
    func handleInputInGame(input: String, playerOne: Character, playerTwo: Character, isPlayerOneTurn: Bool) -> Bool
}
