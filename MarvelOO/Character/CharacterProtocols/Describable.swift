//
//  Describable.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

protocol Describable {
    var description: String {get set}
    
    func printDescription()
}

extension Describable {
    func printDescription() {
        print("Description: \(description)")
    }
}
