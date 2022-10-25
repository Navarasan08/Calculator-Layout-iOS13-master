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
    
    var isFinishedTyping : Bool = false
    
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
                resultLabel.text =  resultLabel.text! + num
            }
            
         
        }
    }
    
    @IBAction func actionButtonPressed(_ sender: UIButton) {
        
        isFinishedTyping = true
        
        guard let number = Double(resultLabel.text!) else {
            fatalError("Failed converting display result to double")
        }
        
        let title = sender.titleLabel?.text
        
        if(title == "+/-") {
            resultLabel.text = String(number * -1)
        }
        
        if(title == "%") {
            resultLabel.text = String(number / 100)
        }
        
        if(title == "AC") {
            resultLabel.text = "0"
        }
        
        if(title == "+/-") {
            resultLabel.text = String(number * -1)
        }
        
        if(title == "+/-") {
            resultLabel.text = String(number * -1)
        }
        
        if(title == "+/-") {
            resultLabel.text = String(number * -1)
        }
    }
}

