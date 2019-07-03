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
    var inputManager: InputManager {get set}
    func determineFactory(inputManager: InputManager, option: Int) -> CharacterFactory
    func manufacture() -> Character
    func manufactureName() -> String
    func manufactureDescription() -> String
}

extension CharacterFactory {
    func determineFactory(inputManager: InputManager, option: Int) -> CharacterFactory {
        switch option {
        case 1:
            return HumanCharacterFactory(inputManager: inputManager)
        case 2:
            return HumanRadiatedCharacterFactory(inputManager: inputManager)
        case 3:
            return AlienCharacterFactory(inputManager: inputManager)
        case 4:
            return BeastCharacterFactory(inputManager: inputManager)
        case 5:
            return HumanAlienCharacterFactory(inputManager: inputManager)
        case 6:
            return HumanBeastCharacterFactory(inputManager: inputManager)
        case 7:
            return BeastAlienCharacterFactory(inputManager: inputManager)
        default:
            return BasicCharacterFactory(inputManager: inputManager)
        }
    }
    
    func manufactureName() -> String {
        print("Insert the name of your character:")
        return inputManager.getInputString()
    }
    
    func manufactureDescription() -> String {
        print("Add a description for your character:")
        return inputManager.getInputString()
    }
}

