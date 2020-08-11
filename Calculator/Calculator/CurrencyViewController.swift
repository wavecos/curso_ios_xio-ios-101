//
//  ViewController.swift
//  Calculator
//
//  Created by Alfredo Arias on 8/10/20.
//  Copyright © 2020 academy. All rights reserved.
//

import UIKit

class CurrencyViewController: UIViewController {
    
    @IBOutlet weak var amountTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateAction(_ sender: Any) {
        
        if let amountStr = amountTextField.text {
            let amount = Double(amountStr)
            let result = amount! * 6.96
            resultLabel.text = "\(result) BOB"
        }
        
    }
    
}

