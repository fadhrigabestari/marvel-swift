//
//  BasicOutput.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct Printer {
    func printUnknown() {
        print("Unknown command!??!??")
    }
    
    func printStatus(by character: Character) {
        print("Name: \(character.name)")
        print("Description: \(character.description)")
        print("Ability: ", terminator: "")
        for index in character.abilities.indices {
            if index < character.abilities.count - 1 {
                print("\(character.abilities[index]), ", terminator: "")
            } else {
                print("\(character.abilities[index])")
            }
        }
        printAdditionalStatus(by: character)
    }
    
    func printAdditionalStatus(by character: Character) {
        if let char = character as? Alien {
            print("Origin: \(char.origin)")
        }
        if let char = character as? Beast {
            print("Species: \(char.species)")
        }
        if let char = character as? GammaRadiated {
            print("Radiation level: \(char.radiationLevel)")
        }
    }
    
    func printAttack(by main: Character, towards opponent: Character) {
        print("\(main.name) attacked \(opponent.name)")
        print("It damaged your enemy for \(main.damage) points")
        print("\(opponent.name) remaining health: \(opponent.health)")
    }
    
    func printCharacterCreation() {
        print("Select the type of character you want to make!")
        print("(1) Human character")
        print("(2) Gamma radiated human character")
        print("(3) Alien character")
        print("(4) Beast character")
        print("(5) Human with alien ancestors")
        print("(6) Human with beast ancestors")
        print("(7) Beast with alien ancestors")
    }
}
