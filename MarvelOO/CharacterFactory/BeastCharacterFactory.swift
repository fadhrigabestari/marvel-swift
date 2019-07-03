//
//  BeastCharacterFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct BeastCharacterFactory: BeastProtocolFactory {
    var inputManager: InputManager
    
    func manufactureSpecies() -> String {
        print("Insert the type of beast can your character be considered as:")
        return inputManager.getInputString()
    }
    
    func manufacture() -> Character {
        let name = manufactureName()
        let description = manufactureDescription()
        let species = manufactureSpecies()
        
        return BeastCharacter(name: name, description: description, species: species)
    }
}
