//
//  Beast+AlienCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class BeastAlienCharacter: AlienCharacter, Beast {
    var species: String
    
    init(name: String, description: String, origin: String, species: String) {
        self.species = species
        super.init(name: name, description: description, origin: origin)
        beastify()
    }
    
    override func alienate() {
        health += 25
        damage += 3
        abilities.append("Half-alien")
    }
    
    func beastify() {
        health -= 10
        damage += 10
        abilities.append("Half-beast")
    }
    
    
}
