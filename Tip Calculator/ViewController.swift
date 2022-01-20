//
//  ViewController.swift
//  Tip Calculator
//
//  Created by AIVIE HUDSON on 1/19/22.
//  Copyright © 2022 AIVIE HUDSON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Tip: UISegmentedControl!
    @IBOutlet weak var BillAmountLbl: UITextField!
    @IBOutlet weak var TotalAmountLbl: UILabel!
    @IBOutlet weak var TipAmountLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTipChange(_ sender: Any) {
        let bill = Double(BillAmountLbl.text!) ?? 0
        let tipPercentages = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentages[Tip.selectedSegmentIndex]
        
        let total = bill + tip
        
        TipAmountLbl.text = String(format: "$%.2f", tip)
        TotalAmountLbl.text = String(format: "$%.2f", total)
    
    }
    
    @IBAction func onTipChanged(_ sender: Any) {
    }
}
    


