//
//  Character.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol Character: class, Named, Describable {
    var health: Int {get set}
    var damage: Int {get set}
    var abilities: [String] {get set}
    
    func status()
    func attack(on character: Character)
}

extension Character {
    func status() {
        printName()
        printDescription()
        print("Health: \(health)")
        print("Damage: \(damage)")
        print("Ability: ", terminator: "")
        for index in abilities.indices {
            if index < abilities.count {
                print("\(abilities[index]), ", terminator: "")
            } else {
                print("\(abilities[index])")
            }
        }
    }
    
    func attack(on character: Character) {
        character.health -= damage
        
        print("Attacked \(character.name)")
        print("It damaged your enemy for \(damage) HP")
    }
}
