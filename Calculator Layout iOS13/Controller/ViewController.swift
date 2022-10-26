//
//  ViewController.swift
//  Calculator Layout iOS13
//
//  Created by Angela Yu on 01/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var resultLabel: UILabel!
    
    private var isFinishedTyping : Bool = false
    
    private var displayValue : Double {
        get{
            guard let number = Double(resultLabel.text!) else {
                fatalError("Failed converting display result to double")
            }
            return number
        }
        set {
            resultLabel.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func numButtonPressed(_ sender: UIButton) {
        
        if let num = sender.currentTitle {
            
            
            if(isFinishedTyping) {
                resultLabel.text = num
                isFinishedTyping = false
            }
            else {
                
                if(num == ".") {
                    
                    let isInt = floor(displayValue) == displayValue
                    
                    if !isInt {
                        return
                    }
                    
                    
                }
                
                resultLabel.text =  resultLabel.text! + num
                
               
            }
            
         
        }
    }
    
    @IBAction func actionButtonPressed(_ sender: UIButton) {
        
        isFinishedTyping = true
        
         let title = sender.currentTitle!
        
        var calculator = CalculatorLogic(number: displayValue)
        
        guard let result = calculator.calculate(symbol: title) else {
            fatalError("No Calculated value found")
        }
        
        displayValue = result
        
        
    }
}

