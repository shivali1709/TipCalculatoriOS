//
//  ViewController.swift
//  TipCalculator
//
//  Created by Shivali Singh on 7/19/20.
//  Copyright © 2020 Shivali Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var BillLabel: UITextField!
    
    @IBOutlet weak var Split: UITextField!
    @IBOutlet weak var people: UILabel!
    @IBOutlet weak var tipcontrol: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ontap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalculateTip(_ sender: Any) {
        let bill = Double(BillLabel.text!) ?? 0
        let tiparray = [0.15,0.18,0.2]
        let tip = bill * tiparray[tipcontrol.selectedSegmentIndex]
       let splitby = Double(Split.text!) ?? 0
        let total = bill + tip
         let individual = total/splitby

        TotalLabel.text = String(format: "$%.2f", total)
        TipLabel.text = String(format: "$%.2f", tip)
   people.text = String(format: "$%.2f", individual)

        
        

   
   
        
        
    }
}

