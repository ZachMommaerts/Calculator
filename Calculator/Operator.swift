//
//  Operator.swift
//  Calculator
//
//  Created by Zach Mommaerts on 7/19/23.
//

import Foundation

class Operator {
    
    var operation: (Double, Double) -> Double
    var isDivision = false
    
    init(_ string: String) {
        
        if string == "+" {
            self.operation = (+)
        } else if string == "-" {
            self.operation = (-)
        } else if string == String("\u{00d7}") {
            self.operation = (*)
        } else {
            self.operation = (/)
            self.isDivision = true
        }
    }
}
