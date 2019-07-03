//
//  QuitAction.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 03/07/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct QuitAction: SoloAction {
    var printer: Printer
    
    func execute(by character: Character) -> Bool {
        printer.printQuit(by: character)
        character.health = 0
        return false
    }
}
