//
//  BasicCharacter.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class BasicCharacter: Character {
    var health: Int = 100
    var damage: Int = 10
    var abilities: [String] = []
    var name: String
    var description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    func status() {
        printName()
        printDescription()
        print("Health: \(health)")
        print("Damage: \(damage)")
        print("Ability: ", terminator: "")
        for index in abilities.indices {
            if index < abilities.count - 1{
                print("\(abilities[index]), ", terminator: "")
            } else {
                print("\(abilities[index])")
            }
        }
    }
}
