//
//  Action.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

// MARK: LISKOV SUBSTITUTION PRINCIPLE
protocol Action {
    var printer: Printer {get set}
    
    // MARK: DEPENDENCY INVERSION PRINCIPLE
    func determineAction(action: String, printer: Printer) -> Action
}

extension Action {
    func determineAction(action: String, printer: Printer) -> Action {
        switch action {
        case "status":
            return StatusAction(printer: printer)
        case "attack":
            return AttackAction(printer: printer)
        default:
            return NoAction(printer: printer)
        }
    }
}
