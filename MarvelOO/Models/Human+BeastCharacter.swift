//
//  Human+BeastCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class HumanBeastCharacter: BeastCharacter, Human {
    override init(name: String, description: String, species: String) {
        super.init(name: name, description: description, species: species)
        humanize()
    }
    
    override func beastify() {
        health += Int(BEAST_HEALTH / 2)
        damage += Int(BEAST_DAMAGE / 2)
        abilities.append("Half-beast")
    }
    
    func humanize() {
        abilities.append("Half-human")
    }
}
