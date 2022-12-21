//
//  ViewController.swift
//  BasicCalculator
//
//  Created by APPLE on 06/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performMathOp = false
    var operations = 0

    
    
    @IBOutlet weak var calcLabel: UILabel!
    
    
    @IBAction func operatorBtn(_ sender: UIButton) {
        if calcLabel.text != "" && sender.tag != 15 && sender.tag != 16
        {
            previousNumber = Double(calcLabel.text!)!
            
            if sender.tag == 11{
                calcLabel.text="+"
            }
            else if sender.tag == 12{
                calcLabel.text="-"
            }
            else if sender.tag == 13{
                calcLabel.text="/"
            }
            else if sender.tag == 14{
                calcLabel.text="*"
            }
            operations=sender.tag
            performMathOp = true
        }
        else if sender.tag == 15{
            if operations==11{
            calcLabel.text=String(previousNumber + numberOnScreen)
        }
            else if operations==12{
                calcLabel.text=String(previousNumber-numberOnScreen)
            }
            else if operations==13{
                calcLabel.text=String(previousNumber/numberOnScreen)
            }
            else if operations==14{
                calcLabel.text=String(previousNumber*numberOnScreen)
            }
            
        }}
    
    @IBAction func numberButtons(_ sender: UIButton) {
        if performMathOp==true{
        calcLabel.text=calcLabel.text! + String(sender.tag - 1)
            numberOnScreen = Double(calcLabel.text!)!
            }
        else{
            calcLabel.text=calcLabel.text!+String(sender.tag-1)
            numberOnScreen = Double(calcLabel.text!)!
        }
        
    }
    
//    @IBAction func operandBtn(_ sender: UIButton) { if performMathOp == true {}
//        calcLabel.text = calcLabel.text! + String(sender.tag-1)
//    }
    
    @IBAction func equalTo(_ sender: UIButton) {
        
    }
    
    
    
    @IBAction func clearBtn(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

