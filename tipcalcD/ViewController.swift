//
//  ViewController.swift
//  tipcalcD
//
//  Created by Derek Ye on 3/31/19.
//  Copyright © 2019 Derek Ye. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
    //Get bill amt
    let bill = Double(billField.text!) ?? 0
    
    // Calculate tip and total
    let tipPercentages = [0.1, 0.18, 0.2]
        
    let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
    let total = bill + tip
    // Update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
    totalLabel.text = String(format: "$%.2f", total)
    }
}

