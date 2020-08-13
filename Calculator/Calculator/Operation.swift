//
//  Operation.swift
//  Calculator
//
//  Created by Alfredo Arias on 8/12/20.
//  Copyright © 2020 academy. All rights reserved.
//

import Foundation

enum Operation {
    
    case add
    case substract
    case multiply
    case divide
    
    init?(from buttonTitle: String) {
        switch buttonTitle {
        case "+":
            self = .add
        case "-":
            self = .substract
        case "x":
            self = .multiply
        case "/":
            self = .divide
        default:
            return nil
        }
    }
    
    func perform(operator1 left: Int, operator2 right: Int) -> Int {
        switch self {
        case .add:
            return left + right
        case .substract:
            return left - right
        case .multiply:
            return left * right
        case .divide:
            return left / right
        }
    }
    
}
