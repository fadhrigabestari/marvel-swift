//
//  HumanCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class HumanCharacter: BasicCharacter, Human {
    override init(name: String, description: String) {
        super.init(name: name, description: description)
        humanize()
    }
    
    func humanize() {
        self.abilities.append("Human")
    }
}
