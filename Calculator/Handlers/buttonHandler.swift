//
//  buttonHandler.swift
//  Calculator
//
//  Created by Christian Sletten on 27.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

protocol ButtonHandler {
    func handle(context: inout Context, tag: Int, ui: Internal)
}

