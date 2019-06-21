//
//  CharacterFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol CharacterFactory {
    static func manufactureCharacter(option: Int) -> CharacterFactory
}

extension CharacterFactory {
    static func manufactureCharacter(option: Int) -> CharacterFactory {
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
}

