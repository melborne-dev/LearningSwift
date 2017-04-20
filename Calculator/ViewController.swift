//
//  ViewController.swift
//  Calculator
//
//  Created by Melborne on 20/04/17.
//  Copyright © 2017 Melborne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsInMiddleOfTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        
        let digit = sender.currentTitle!
        if userIsInMiddleOfTyping {
            
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        }else{
            display.text = digit
            userIsInMiddleOfTyping = true
        }
        
    }
    
    var displayValue : Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
        
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle {
            switch mathematicalSymbol {
            case "π":
                displayValue = (Double.pi)
            
            case "√":
                let operand = Double(display.text!)!
                displayValue = sqrt(operand)
            default:
                break
            }
            
            
        }
        
    }
    
}

