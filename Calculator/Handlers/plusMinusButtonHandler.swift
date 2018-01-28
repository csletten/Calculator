//
//  plusMinusButtonHandler.swift
//  Calculator
//
//  Created by Christian Sletten on 27.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

class PlusMinusButtonHandler: ButtonHandler {
    func handle(context: inout Context, tag: Int, ui: Internal) {
        if context.result == "Feil"{
            hapticError()
        } else {
            if context.rightOperand == "0"{
                hapticError()
            } else{
                context.rightOperand = String(Double(context.rightOperand)! * -1)
                ui.displayResult(string: truncate(stringValue: context.rightOperand))
                hapticSuccess()
            }
            
        }
    }
    
}
