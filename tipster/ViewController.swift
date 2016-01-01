//
//  ViewController.swift
//  tipster
//
//  Created by Focus on 12/29/15.
//  Copyright (c) 2015 Danyal Rizvi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var topCalcView: UIView!

    @IBOutlet weak var bottomCalcView: UIView!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipPercentageField: UITextField!
    
    @IBOutlet weak var numPeopleField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var indivTotalLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billField.becomeFirstResponder()
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onEdit(sender: AnyObject) {
        
        var billAmount = (billField.text! as NSString).doubleValue
        var tipPercentage = (tipPercentageField.text! as NSString).doubleValue
        tipPercentage = (tipPercentage == 0.0) ? 0.15 : tipPercentage/100
        var numPeople = (numPeopleField.text! as NSString).doubleValue
        numPeople = (numPeople == 0.0) ? 1.00 : numPeople
        
        var tip = billAmount * tipPercentage
        var total = billAmount + tip
        
        var indivTotal = total / numPeople

        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        indivTotalLabel.text = String(format: "$%.2f", indivTotal)
        
    }

}

