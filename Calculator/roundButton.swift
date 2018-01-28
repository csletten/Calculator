//
//  roundButton.swift
//  Calculator
//
//  Created by Christian Sletten on 21.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import UIKit

@IBDesignable
class roundButton: UIButton {
    @IBInspectable var RoundButton:Bool = false{
        didSet{
            if RoundButton{
                layer.cornerRadius = frame.height / 2
            }
        }
    }
    override func prepareForInterfaceBuilder() {
        if RoundButton {
            layer.cornerRadius = frame.height / 2
        }
    }
    
}
