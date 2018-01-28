//
//  operatorButtonHandler.swift
//  Calculator
//
//  Created by Christian Sletten on 27.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

class OperatorButtonHandler: ButtonHandler {
    func handle(context: inout Context, tag: Int, ui: Internal) {
        context.leftOperand = ui.getDisplayValue()
        ui.makeOrange(tag: AppConstants.KEY_DIVIDE)
        ui.makeOrange(tag: AppConstants.KEY_MULTIPLY)
        ui.makeOrange(tag: AppConstants.KEY_SUBTRACT)
        ui.makeOrange(tag: AppConstants.KEY_ADD)
        ui.makeWhite(tag: tag)
        context.operation = tag;
        context.performMath = true;
    }
}
