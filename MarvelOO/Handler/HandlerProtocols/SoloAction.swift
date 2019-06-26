//
//  SoloAction.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

// MARK: COMMAND PATTERN
protocol SoloAction: Action {
    func execute(by character: Character) -> Bool
}
