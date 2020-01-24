//
//  ViewController.swift
//  Ayo2
//
//  Created by Ayo  on 1/23/20.
//

import UIKit

class ViewController: UIViewController {
    // One view controller for every screen in app.
    // Outlets refer to all the elements in my screen that I want to be able to control
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billLabel: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTap(_ sender: Any) {
        print("Hello")
        
        view.endEditing(true)
        //Everything in ios starts off from a user action like the one above. Then apply logic to the user action.
        //Dismisses the keyboard
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billLabel.text!) ?? 0
        

        //Calculate the tip and total
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        //tipLabel.text  = "$\(tip)"
        
        tipLabel.text  = String(format: "$%.2f", tip)
        //@ for a string, d for an integer, f for a decimal
        
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

