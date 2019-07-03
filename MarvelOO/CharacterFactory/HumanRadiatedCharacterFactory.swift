//
//  HumanRadiatedCharacterFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct HumanRadiatedCharacterFactory: CharacterFactory, RadiatedProtocolFactory {
    var inputManager: InputManager
    
    func manufacture() -> Character {
        let name = manufactureName()
        let description = manufactureDescription()
        let radiationLevel = manufactureRadiationLevel()
        
        return HumanRadiatedCharacter(name: name, description: description, radiationLevel: radiationLevel)
    }
}
