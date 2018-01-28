//
//  ViewController.swift
//  Calculator
//
//  Created by Christian Sletten on 21.01.2018.
//  Copyright © 2018 Christian Sletten. All rights reserved.
//

import UIKit

class ViewController: UIViewController,Internal {
    
    var context = Context();
    
    @IBOutlet weak var numbersDisplay: UILabel!
    
    var numberButtonHandler = NumberButtonHandler();
    var operatorButtonHandler = OperatorButtonHandler();
    var equalButtonHandler = EqualButtonHandler();
    var clearButtonHandler = ClearButtonHandler();
    var plusMinusButtonHandler = PlusMinusButtonHandler();
    var percentButtonHandler = PercentButtonHandler();
    var commaButtonHandler = CommaButtonHandler();
    
    var handlers: Dictionary = [Int: ButtonHandler]()

    
    @IBAction func numbersButton(_ sender: UIButton){
        let tag = sender.tag <= 10 ? sender.tag-1 : sender.tag
        
//        print(sender.tag)
        let handler = handlers[tag]
        handler?.handle(context: &context, tag: tag, ui: self)
        
    }

    @IBOutlet weak var divideButton: roundButton!
    @IBOutlet weak var multiplyButton: roundButton!
    @IBOutlet weak var subtractButton: roundButton!
    @IBOutlet weak var addButton: roundButton!
    @IBOutlet weak var clearButton: roundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numbersDisplay.numberOfLines = 1
        
        numbersDisplay.adjustsFontSizeToFitWidth = true
        
        numbersDisplay.minimumScaleFactor = 0.65
        
        context.rightOperand = "0";
        
        handlers[AppConstants.KEY_ZERO] = numberButtonHandler
        handlers[AppConstants.KEY_ONE] = numberButtonHandler
        handlers[AppConstants.KEY_TWO] = numberButtonHandler
        handlers[AppConstants.KEY_THREE] = numberButtonHandler
        handlers[AppConstants.KEY_FOUR] = numberButtonHandler
        handlers[AppConstants.KEY_FIVE] = numberButtonHandler
        handlers[AppConstants.KEY_SIX] = numberButtonHandler
        handlers[AppConstants.KEY_SEVEN] = numberButtonHandler
        handlers[AppConstants.KEY_EIGHT] = numberButtonHandler
        handlers[AppConstants.KEY_NINE] = numberButtonHandler
        handlers[AppConstants.KEY_AC] = clearButtonHandler
        handlers[AppConstants.KEY_PLUSMINUS] = plusMinusButtonHandler
        handlers[AppConstants.KEY_PERCENT] = percentButtonHandler
        handlers[AppConstants.KEY_DIVIDE] = operatorButtonHandler
        handlers[AppConstants.KEY_MULTIPLY] = operatorButtonHandler
        handlers[AppConstants.KEY_SUBTRACT] = operatorButtonHandler
        handlers[AppConstants.KEY_ADD] = operatorButtonHandler
        handlers[AppConstants.KEY_EQUAL] = equalButtonHandler
        handlers[AppConstants.KEY_COMMA] = commaButtonHandler
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayResult(string: String) {
        numbersDisplay.text = string
    }
    
    func changeClearButton(isAC: Bool){
        let buttonText = isAC ? "AC" : "C"
        clearButton.setTitle(buttonText, for: .normal)
    }
    
    func makeOrange(tag: Int) {
        switch tag {
        case AppConstants.KEY_DIVIDE:
            Calculator.makeOrange(button: divideButton)
        case AppConstants.KEY_MULTIPLY:
            Calculator.makeOrange(button: multiplyButton)
        case AppConstants.KEY_SUBTRACT:
            Calculator.makeOrange(button: subtractButton)
        case AppConstants.KEY_ADD:
            Calculator.makeOrange(button: addButton)
        default: ()
        }
    }
    
    func makeWhite(tag: Int) {
        switch tag {
        case AppConstants.KEY_DIVIDE:
            Calculator.makeWhite(button: divideButton)
        case AppConstants.KEY_MULTIPLY:
            Calculator.makeWhite(button: multiplyButton)
        case AppConstants.KEY_SUBTRACT:
            Calculator.makeWhite(button: subtractButton)
        case AppConstants.KEY_ADD:
            Calculator.makeWhite(button: addButton)
        default: ()
        }
    }
    
    func getDisplayValue() -> String{
        return numbersDisplay.text!
    }
    
    
}

func hapticSuccess() {
    let feedbackGenerator = UINotificationFeedbackGenerator()
    feedbackGenerator.notificationOccurred(.success)
}

func hapticError() {
    let feedbackGenerator = UINotificationFeedbackGenerator()
    feedbackGenerator.notificationOccurred(.error)
}

func makeOrange(button: UIButton){
    button.backgroundColor = UIColor(red: 1, green: 136/255, blue: 2/255, alpha: 1)
    button.setTitleColor(UIColor.white, for: .normal)
}

func makeWhite(button: UIButton){
    button.backgroundColor = UIColor.white
    button.setTitleColor(UIColor(red: 1, green: 136/255, blue: 2/255, alpha: 1), for: .normal)
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
