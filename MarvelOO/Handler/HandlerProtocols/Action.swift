//
//  Action.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol Action {
    static func determineAction(action: String) -> Action
}

extension Action {
    static func determineAction(action: String) -> Action {
        switch action {
        case "status":
            return StatusAction()
        default:
            return NoAction()
        }
    }
}
