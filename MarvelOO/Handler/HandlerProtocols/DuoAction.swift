//
//  DuoAction.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol DuoAction: Action {
    func execute(by main: Character, towards opponent: Character) -> Bool
}
