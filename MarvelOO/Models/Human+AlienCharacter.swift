//
//  Human+AlienCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class HumanAlienCharacter: AlienCharacter, Human {
    override init(name: String, description: String, origin: String) {
        super.init(name: name, description: description, origin: origin)
        humanize()
    }
    
    override func alienate() {
        health += 25
        damage += 3
        abilities.append("Half-alien")
    }
    
    func humanize() {
        abilities.append("Half-human")
    }
}
