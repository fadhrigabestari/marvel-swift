//
//  Handler.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol Handler {
    // MARK: INTERFACE SEGREGATION PRINCIPLE
    var inputManager: InputManager {get set}
    var printer: Printer {get set}
}
