//
//  ViewController.swift
//  calci
//
//  Created by APPLE on 03/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var mathOperation = false
    var operation = 0
    
    
    @IBOutlet weak var labelButton: UILabel!
    
    
    @IBAction func numberButtons(_ sender: UIButton)
    {
        if mathOperation == true
        {
            labelButton.text = String(sender.tag-1)
            numberOnScreen = Double(labelButton.text!)!
            mathOperation = false
        }
        else
        {
            labelButton.text = labelButton.text! + String(sender.tag-1)
            numberOnScreen = Double(labelButton.text!)!
        }
        
    }
    
  
    
    
    
    @IBAction func operatorButtons(_ sender: UIButton)
    {
        if labelButton.text != "" && sender.tag != 15 && sender.tag != 16
        {
            previousNumber = Double(labelButton.text!)!
            if sender.tag == 11
            {
                labelButton.text = "+"
            }
            else if sender.tag == 12
            {
                labelButton.text = "-"
            }
            else if sender.tag == 13
            {
                labelButton.text = "*"
            }
            else if sender.tag == 14
            {
                labelButton.text = "/"
            }
            operation = sender.tag
            mathOperation = true
            
        }
        else if sender.tag == 15
        {
            if operation == 11
            {
                labelButton.text = String(previousNumber + numberOnScreen)
            }
            else if operation == 12
            {
                labelButton.text = String(previousNumber - numberOnScreen)
            }
           else if operation == 13
            {
                labelButton.text = String(previousNumber * numberOnScreen)
            }
            else if operation == 14
            {
                labelButton.text = String(previousNumber / numberOnScreen)
            }
        }
        else if sender.tag == 16
        {
            labelButton.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

