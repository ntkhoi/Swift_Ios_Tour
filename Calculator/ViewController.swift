//
//  ViewController.swift
//  Calculator
//
//  Created by Nguyen Trong Khoi on 12/25/16.
//  Copyright © 2016 Nguyen Trong Khoi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel?
    
    var userIsInTheMiddleOfTyping : Bool = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping
        {
            let textCurrentlyInDisplay = display!.text!
            display!.text = textCurrentlyInDisplay + digit
        }
        else
        {
            display!.text = digit
        }
        
        userIsInTheMiddleOfTyping = true
        
        
        print("Touch \(digit) Digit")
        
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            if(mathematicalSymbol == "PI"){
                display!.text = String(M_PI)
                
            }
        }
        
    }
}


