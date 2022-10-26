//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by Navarasan on 26/10/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    
    var number : Double
    
    init(number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if(symbol == "+/-") {
            return (number * -1)
        }else if(symbol == "%") {
            return number * 0.01
        }else if(symbol == "AC") {
            return 0
        }
        
        return nil
    }
    
}
