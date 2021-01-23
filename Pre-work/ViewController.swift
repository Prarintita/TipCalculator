//
//  ViewController.swift
//  Pre-work
//
//  Created by Ada Ratanavarinchai on .
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipDisplayLabel: UILabel!
    @IBOutlet weak var tipPercentageControl: UISegmentedControl!
    @IBOutlet weak var totalDisplayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipPercentageControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipDisplayLabel.text = String(format: "$%.2f", tip)
        totalDisplayLabel.text = String(format: "$%.2f", total)
    }
    
}

