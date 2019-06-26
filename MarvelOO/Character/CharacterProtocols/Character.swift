//
//  Character.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

// MARK: OPEN/CLOSED PRINCIPLE
protocol Character: class, Named, Describable {
    var health: Int {get set}
    var damage: Int {get set}
    var abilities: [String] {get set}
    
    func attack(on character: Character)
}

extension Character {
    // MARK: Cannot override default implementation of extended functions
    
    func attack(on character: Character) {
        character.health -= damage
        
        print("Attacked \(character.name)")
        print("It damaged your enemy for \(damage) HP")
    }
}
