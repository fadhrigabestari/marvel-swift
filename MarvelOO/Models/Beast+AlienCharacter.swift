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
        health += Int(ALIEN_HEALTH / 2)
        damage += Int(ALIEN_DAMAGE / 2)
        abilities.append("Half-alien")
    }
    
    func beastify() {
        health += Int(BEAST_HEALTH / 2)
        damage += Int(BEAST_DAMAGE / 2)
        abilities.append("Half-beast")
    }
    
    override func status() {
        super.status()
        print("Species: \(species)")
    }
}
