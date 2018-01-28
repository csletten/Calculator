//
//  functions.swift
//  Calculator
//
//  Created by Christian Sletten on 22.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import Foundation

func truncate(stringValue: String) -> String{
    let x = Double(stringValue)
    let remainder = x?.truncatingRemainder(dividingBy: 1)
    if remainder == 0{
        let integer = Int(floor(x!))
        let integerString = String(integer)
        return integerString
    } else{
        return stringValue;
    }
    
    
}



