//
//  AlienCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class AlienCharacter: Character, Alien {
    var health: Int = 100
    var damage: Int = 10
    var abilities: [String] = []
    var name: String
    var description: String
    var origin: String
    
    init(name: String, description: String, origin: String) {
        self.name = name
        self.description = description
        self.origin = origin
        alienate()
    }
    
    func alienate() {
        health += 50
        damage += 5
        abilities.append("Breathe in outerspace")
    }
}
