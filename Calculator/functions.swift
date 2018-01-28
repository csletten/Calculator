//
//  functions.swift
//  Calculator
//
//  Created by Christian Sletten on 22.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

func normalize(stringValue: String) -> String{
    var returnValue = ""
    let isDecimal = stringValue.contains(".")
    if isDecimal{
        let doubleValue = Double(stringValue)!
        let isInteger = floor(doubleValue) == doubleValue
        if isInteger{
            let intDouble = Int(doubleValue)
            returnValue = String(intDouble)
        }else{
            returnValue = String(doubleValue)
        }
        
    } else{
        let intValue = Int(stringValue)
        returnValue = "\(intValue ?? 0)"
    }
    return returnValue
}


