//
//  RadiatedProtocolFactory.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 03/07/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol RadiatedProtocolFactory: CharacterFactory {}

extension RadiatedProtocolFactory {
    func manufactureRadiationLevel() -> Int {
        print("Input the radiation level of your character:")
        return inputManager.getInputInt()
    }
}
