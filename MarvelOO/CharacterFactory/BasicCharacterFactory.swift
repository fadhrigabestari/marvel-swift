//
//  BasicCharacterFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct BasicCharacterFactory: CharacterFactory {
    var inputManager: InputManager
    
    func manufacture() -> Character {
        let name = manufactureName()
        let description = manufactureDescription()
        
        return BasicCharacter(name: name, description: description)
    }
}
