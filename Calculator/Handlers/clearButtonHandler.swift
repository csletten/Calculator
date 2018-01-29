//
//  clearButtonHandler.swift
//  Calculator
//
//  Created by Christian Sletten on 27.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

class ClearButtonHandler: ButtonHandler {
    func handle(context: inout Context, tag: Int, ui: Internal) {
        if context.isAC{
            context.leftOperand = "0"
            context.operation = 0
            context.hasInput = false;
        } else{
            context.isAC = true;
            ui.changeClearButton(isAC: context.isAC)
        }
        ui.displayResult(string: "0")
        context.rightOperand = "0"
        context.hasComma = false;
        context.result = ""
        ui.makeOrange(tag: AppConstants.KEY_DIVIDE)
        ui.makeOrange(tag: AppConstants.KEY_MULTIPLY)
        ui.makeOrange(tag: AppConstants.KEY_SUBTRACT)
        ui.makeOrange(tag: AppConstants.KEY_ADD)

        
    }
    
}






