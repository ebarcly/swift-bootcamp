//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Enrique Barclay on 6/10/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    var result = "0.0"
    var tip = 10
    var tipAmount = "0.0"
    var split = 1
    
    let tipCalc = CalculatorViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = result
        settingsLabel.text = "Split between \(split) people, with \(tip)% tip."
        tipAmountLabel.text = String(tipAmount)
        
    }
    
    
    @IBAction func recalculatedPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
