//
//  StatusAction.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct StatusAction: SoloAction {
    var printer: Printer

    func execute(by character: Character) -> Bool {
        printer.printStatus(by: character)
        return false
    }
}
