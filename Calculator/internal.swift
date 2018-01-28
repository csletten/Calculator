//
//  internal.swift
//  Calculator
//
//  Created by Christian Sletten on 27.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

protocol Internal {
    func displayResult(string: String)
    func changeClearButton(isAC: Bool)
    func makeOrange(tag: Int)
    func makeWhite(tag: Int)
    func getDisplayValue() -> String
    
}
