//
//  ViewController.swift
//  segueProject
//
//  Created by APPLE on 03/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TEXTFEILD: UITextField!
    
    @IBAction func SUBMITBUTTON(_ sender: UIButton) {
        if TEXTFEILD.text == "red"
        {
            performSegue(withIdentifier: "redsegue", sender: Any?.self)
        }else if TEXTFEILD.text == "blue"
        {
            performSegue(withIdentifier: "bluesegue", sender: Any?.self)
        }else{
            print("ERROR")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

