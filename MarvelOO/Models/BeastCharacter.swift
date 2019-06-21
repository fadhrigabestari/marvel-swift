//
//  Beast.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class BeastCharacter: BasicCharacter, Beast {
    var species: String
    
    init(name: String, description: String, species: String) {
        self.species = species
        super.init(name: name, description: description)
        beastify()
    }
    
    func beastify() {
        health += BEAST_HEALTH
        damage += BEAST_DAMAGE
        abilities.append("Beast")
    }
    
    override func status() {
        super.status()
        print("Species: \(species)")
    }
}
