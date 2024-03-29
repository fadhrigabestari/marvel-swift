//
//  AlienCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class AlienCharacter: BasicCharacter, Alien {
    var origin: String
    
    init(name: String, description: String, origin: String) {
        self.origin = origin
        super.init(name: name, description: description)
        alienate()
    }
    
    func alienate() {
        health += ALIEN_HEALTH
        damage += ALIEN_DAMAGE
        abilities.append("Alien")
    }
}
