//
//  AlienProtocolFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 03/07/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol AlienProtocolFactory: CharacterFactory {}

extension AlienProtocolFactory {
    func manufactureOrigin() -> String {
        print("Input the planet of origin for your character")
        return inputManager.getInputString()
    }
}
