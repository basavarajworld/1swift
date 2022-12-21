//
//  ViewController.swift
//  project1
//
//  Created by APPLE on 01/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var priceTax: UITextField!
    
    @IBOutlet weak var salesTax: UITextField!
    
    @IBOutlet weak var totalPriceTax: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func calculatetotalprice(_ sender: Any) {
        
        let price = Double(priceTax.text!)!
        let salesTax = Double(salesTax.text!)!
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceTax.text = "$\(totalPrice)"
    }
    


}

