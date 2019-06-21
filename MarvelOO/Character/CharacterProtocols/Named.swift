//
//  Named.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol Named {
    var name: String {get set}
    
    func printName()
}

extension Named {
    func printName() {
        print("Name: \(name)")
    }
}
