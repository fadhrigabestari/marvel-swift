//
//  main.swift
//  MarvelOO
//
//  Created by PT. GOJEK INDONESIA on 21/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

let character: Character = HumanRadiatedCharacter(name: "Fadhriga", description: "tralala", radiationLevel: 30)
let char: Character = HumanAlienCharacter(name: "wiwi", description: "wowo", origin: "Asgard")

let action: Action = StatusAction()
let action2: StatusAction = StatusAction()
action2.execute(by: char)
