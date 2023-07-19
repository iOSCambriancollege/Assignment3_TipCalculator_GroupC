//
//  ViewController.swift
//  Assignment3_TipCalculator_GroupC
//
//  Created by Majid Pawar on 2023-07-18.
//

import UIKit

class ViewController: UIViewController {
    
//  Outlet for all labels
    
    @IBOutlet weak var outputBill: UILabel!
    @IBOutlet weak var billIndicator: UILabel!
    @IBOutlet weak var tipIndicator: UILabel!
    @IBOutlet weak var totalBill: UILabel!
    
    var tipInput:Float = 0
    var totalBillCal:Float = 0
    
//  Button for calculating total Bill
    @IBOutlet weak var totalBillView: UIButton!
    
    
    @IBOutlet weak var userBillInput: UITextField!
    
//  Slider Function indicating the bill with tip added
    @IBAction func tipSlider(_ sender: UISlider) {
        if (userBillInput == nil){
            billIndicator.text = "Please enter bill amount"
        }
        else{
            tipIndicator.text = "The current tip is \(Int(sender.value))%"
            if (sender.value == 0){
                billIndicator.text = "Approx total bill with tip is \(sender.value)"
            }
            else{
                tipInput = sender.value/100
            }
            
            var usrInput = Float(userBillInput.text ?? "1")
            totalBillCal = ((usrInput!) + (usrInput!*tipInput))
            billIndicator.text = "The current bill including tip is \(totalBillCal)"
        }
    }
//    Button to finalize Tip with bill
    @IBAction func tipCalculate(_ sender: UIButton) {
        
        totalBill.text = "The total bill is \(totalBillCal)"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
}

