//
//  MockFileInputManager.swift
//  MarvelOOTests
//
//  Created by PT. GOJEK INDONESIA on 27/06/19.
//  Copyright © 2019 PT. GOJEK INDONESIA. All rights reserved.
//

import Foundation

class MockFileInputManager: InputManager {
    var file: String
    
    init(file: String) {
        self.file = file
    }
    
    func getInputString() -> String {
        if let url = Bundle(for: type(of: self)).url(forResource: file, withExtension: "txt") {
            do {
                let contents = try String(contentsOf: url)
                return contents
            } catch let error {
                print(error)
            }
        }
        print("Directory not found")
        return ""
    }
    
    func getInputInt() -> Int {
        if let url = Bundle(for: type(of: self)).url(forResource: file, withExtension: "txt") {
            do {
                let stringContents = try String(contentsOf: url)
                let trimmed = stringContents.trimmingCharacters(in: .newlines)
                if let intContents = Int(trimmed) {
                    return intContents
                }
                return -1
            } catch let error {
                print(error)
            }
        }
        print("Directory not found")
        return -1
    }
}
