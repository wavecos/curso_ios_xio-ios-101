//
//  CalculatorViewController.swift
//  Calculator
//
//  Created by Alfredo Arias on 8/12/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var displayLabel: UILabel!
    
    //
    var operator1: Int = 0
    var currentOperation: Operation? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Action
    @IBAction func updateDigit(digitButton: UIButton) {
        let digitStr = digitButton.currentTitle!
        displayLabel.text = displayLabel.text! + digitStr
    }
    
    @IBAction func operation(operationButton: UIButton) {
        let operationStr = operationButton.currentTitle!
        currentOperation = Operation(from: operationStr)
        
        operator1 = Int(displayLabel.text!)!
        displayLabel.text = ""
    }
    
    @IBAction func calculate(sender: UIButton) {
        let operator2 = Int(displayLabel.text!)!
        let result = currentOperation?.perform(operator1: operator1, operator2: operator2)
        
        displayLabel.text = "\(result!)" // String(result!)
    }


}
