//
//  BeastProtocolFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 03/07/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol BeastProtocolFactory: CharacterFactory {}

extension BeastProtocolFactory {
    func manufactureSpecies() -> String {
        print("Insert the type of beast can your character be considered as:")
        return inputManager.getInputString()
    }
}
