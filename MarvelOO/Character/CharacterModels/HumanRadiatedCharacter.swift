//
//  HumanRadiatedCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class HumanRadiatedCharacter: BasicCharacter, Human, GammaRadiated {
    var radiationLevel: Int
    
    init(name: String, description: String, radiationLevel: Int) {
        self.radiationLevel = radiationLevel
        super.init(name: name, description: description)
        radiate()
        humanize()
    }
    
    func radiate() {
        self.health += radiationLevel
        self.damage += radiationLevel
        abilities.append("Gamma radiated")
    }
    
    func humanize() {
        abilities.append("Semi-human")
    }
}
