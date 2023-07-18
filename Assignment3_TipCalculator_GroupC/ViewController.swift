//
//  ViewController.swift
//  Assignment3_TipCalculator_GroupC
//
//  Created by Majid Pawar on 2023-07-18.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipIndicator: UILabel!
    @IBAction func tipSlider(_ sender: UISlider) {
        tipIndicator.text = "The current tip is \(Int(sender.value))%"
    }
    
    @IBOutlet weak var userAmountInput: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

