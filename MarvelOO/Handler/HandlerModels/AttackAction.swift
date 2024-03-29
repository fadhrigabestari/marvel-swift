//
//  AttackAction.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct AttackAction: DuoAction {
    var printer: Printer

    func execute(by main: Character, towards opponent: Character) -> Bool {
        opponent.health -= main.damage
        printer.printAttack(by: main, towards: opponent)
        return true
    }
}
