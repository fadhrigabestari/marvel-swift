//
//  Game.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 24/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol Game {
    var handler: Handler {get set}
    func gameLoop()
}
