//
//  numberButtonHandler.swift
//  Calculator
//
//  Created by Christian Sletten on 27.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

class NumberButtonHandler: ButtonHandler {
    func handle(context: inout Context, tag: Int, ui: Internal) {
        if context.performMath == true{
            context.rightOperand = String(tag)
            ui.displayResult(string: context.rightOperand)
            ui.makeOrange(tag: context.operation)
            context.performMath = false
        }
        else {
            if context.rightOperand != "0"{
                if context.operation == 0 {
                    context.rightOperand += String(tag)
                } else {
                    context.rightOperand = context.rightOperand + String(tag)                    
                    
                }
                ui.displayResult(string: context.rightOperand)
                
            } else{
                if !context.hasInput{
                    context.isAC = false
                    ui.changeClearButton(isAC: context.isAC)
                    context.hasInput = true;
                }
                context.rightOperand = String(tag)
                ui.displayResult(string: context.rightOperand)
            }
        }
    }
}
