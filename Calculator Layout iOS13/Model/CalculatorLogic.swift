//
//  CalculatorLogic.swift
//  Calculator Layout iOS13
//
//  Created by Navarasan on 26/10/22.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import Foundation


struct CalculatorLogic {
    
    private var number : Double?
    
    private var intermediateCalculation: (n1: Double, operation: String)?
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    mutating func calculate(symbol: String) -> Double? {
        
        if let n = number {
            
            if(symbol == "+/-") {
                return (n * -1)
            }else if(symbol == "%") {
                return n * 0.01
            }else if(symbol == "AC") {
                return 0
            }else if(symbol == "=") {
                return calculateTwoNumber(n2: n)
            }else {
                intermediateCalculation = (n1: n, operation: symbol)
                return n
            }
        }
        return nil
    }
    
    private func calculateTwoNumber(n2: Double) -> Double? {
        
        if let n1 = intermediateCalculation?.n1, let operation = intermediateCalculation?.operation {
            
            switch operation {
                
                case "+":
                    return n1 + n2
                case "-":
                        return n1 - n2
                case "×":
                    return n1 * n2
                case "÷":
                    return n1 / n2
                    
                default:
                    fatalError("Operation not supported")
                
            }
        }
        
        return nil
        
    }
    
}
