//
//  HumanRadiatedCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class HumanRadiatedCharacter: HumanCharacter, GammaRadiated {
    var radiationLevel: Int
    
    init(name: String, description: String, radiationLevel: Int) {
        self.radiationLevel = radiationLevel
        super.init(name: name, description: description)
        radiate()
    }
    
    func radiate() {
        self.health += radiationLevel
        self.damage += radiationLevel
    }
    
    override func status() {
        super.status()
        print("Radiation level: \(radiationLevel)")
    }
}
