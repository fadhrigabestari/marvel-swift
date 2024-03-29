//
//  HumanAlienCharacterFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct HumanAlienCharacterFactory: CharacterFactory, AlienProtocolFactory {
    var inputManager: InputManager
    
    func manufacture() -> Character {
        let name = manufactureName()
        let description = manufactureDescription()
        let origin = manufactureOrigin()
        
        return HumanAlienCharacter(name: name, description: description, origin: origin)
    }
}
