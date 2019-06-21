//
//  Beast.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class BeastCharacter: Character, Beast {
    var health: Int = 100
    var damage: Int = 10
    var abilities: [String] = []
    var name: String
    var description: String
    var species: String
    
    init(name: String, description: String, species: String) {
        self.name = name
        self.description = description
        self.species = species
        beastify()
    }
    
    func beastify() {
        health -= 20
        damage += 20
        abilities.append("Beast transform")
    }
}
