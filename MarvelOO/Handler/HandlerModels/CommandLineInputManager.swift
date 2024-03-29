//
//  BasicInput.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

// MARK: SINGLE RESPONSIBILITY PRINCIPLE
struct CommandLineInputManager: InputManager {
    func getInputString() -> String {
        let line = readLine()
        if let input = line {
            return input
        } else {
            return ""
        }
    }
    
    func getInputInt() -> Int {
        let input = Int(getInputString())
        if let num = input {
            return num
        } else {
            return -1
        }
    }
}
