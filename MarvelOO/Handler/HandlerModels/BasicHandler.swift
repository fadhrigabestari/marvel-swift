//
//  Handler.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

struct BasicHandler: Handler {
    let input: BasicInput = BasicInput()
    let output: BasicOutput = BasicOutput()
    let action: Action = NoAction()
    
    func handleInput(character: Character) {
        
    }
    
    func handleInput(characters: [Character]) {
        
    }
}
