//
//  BasicInput.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct InputManager {
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
