//
//  ViewController.swift
//  Ch1 Tip Calculator
//
//  Created by FRANCIS HUYNH on 10/28/16.
//  Copyright © 2016 Fhools. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        // Note: Move this to a separate .swift file, possibly its own class
        // Inputs: Bill amount, Tip rate
        // Output: Calculate Tip amount, Calculate Total amount
        // Constraints: Tip is entered as percentage, output is arounded up a cent.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcButtonPressed(_ sender: UIButton) {
        var tip, total : Double
        (tip, total) = calculateTipAndTotal(bill: 18.00, tipRate: 15)
        tipAmountLabel.text = NSString(format: "%.2f", tip) as String
        totalAmountLabel.text = NSString(format: "%.2f", total) as String
        
    }
    func calculateTipAndTotal(bill: Double, tipRate: Int) -> (tip: Double, total: Double) {
        var tip = bill * (Double(tipRate)/100.0)
        // round to the nearest cent
        tip = round(tip * 100)/100
        
        var total = bill + tip
        // round to the nearest cent
        total = round(total * 100)/100
        return (tip, total)
    }

}

