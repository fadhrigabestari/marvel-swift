//
//  NoAction.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct NoAction: SoloAction {
    var printer: Printer = Printer()

    func execute(by character: Character, isPlayerOneTurn: inout Bool) {
        printer.printUnknown()
    }    
}
