//
//  CharacterFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

// MARK: BUILDER X FACTORY PATTERN
protocol CharacterFactory {
    func determineFactory(option: Int) -> CharacterFactory
    func manufacture() -> Character
    func manufactureName() -> String
    func manufactureDescription() -> String
    func manufactureRadiationLevel() -> Int
    func manufactureSpecies() -> String
    func manufactureOrigin() -> String
}

extension CharacterFactory {
    func determineFactory(option: Int) -> CharacterFactory {
        switch option {
        case 1:
            return HumanCharacterFactory()
        case 2:
            return HumanRadiatedCharacterFactory()
        case 3:
            return AlienCharacterFactory()
        case 4:
            return BeastCharacterFactory()
        case 5:
            return HumanAlienCharacterFactory()
        case 6:
            return HumanBeastCharacterFactory()
        case 7:
            return BeastAlienCharacterFactory()
        default:
            return BasicCharacterFactory()
        }
    }
    
    func manufactureName() -> String {
        let inputManager = CommandLineInputManager()
        
        print("Insert the name of your character:")
        return inputManager.getInputString()
    }
    
    func manufactureDescription() -> String {
        let inputManager = CommandLineInputManager()
        
        print("Add a description for your character:")
        return inputManager.getInputString()
    }
    
    func manufactureRadiationLevel() -> Int {
        let inputManager = CommandLineInputManager()
        
        print("Input the radiation level of your character:")
        return inputManager.getInputInt()
    }
    
    func manufactureSpecies() -> String {
        let inputManager = CommandLineInputManager()
        
        print("Insert the type of beast can your character be considered as:")
        return inputManager.getInputString()
    }
    
    func manufactureOrigin() -> String {
        let inputManager = CommandLineInputManager()
        
        print("Input the planet of origin for your character")
        return inputManager.getInputString()
    }
}

