//
//  BasicInput.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct BasicInput {
    func getInput() -> String {
        let line = readLine()
        if let input = line {
            return input
        } else {
            return ""
        }
    }
}
