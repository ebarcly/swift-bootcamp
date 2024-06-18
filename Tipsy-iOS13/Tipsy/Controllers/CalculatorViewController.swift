//
//  CalculatorViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    
    
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var fifteenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var billTotal = 0.0
    var tipValue = 0.15
    var tipTotal = 0.0
    var numberOfPeople = 1
    var finalResult = "0.0"
    
    @IBAction func tipChanged(_ sender: UIButton) {
        
        // Dismiss Keyboard when user clicks on tip values
        billTextField.endEditing(true)
        
        
        // Initialize buttons array
        let tipButtons = [tenPctButton, fifteenPctButton, twentyPctButton]
        
        // Deselect all buttons
        for button in tipButtons {
            button?.isSelected = false
            button?.tintColor = .clear
        }
        
        // Select the tapped button
        sender.isSelected = true
        sender.tintColor = .systemGreen
        
        // Title of the pressed button
        let buttonTitle = sender.currentTitle!
        
        // Revome the last character of the tittle (%)
        let titleCleaup = String(buttonTitle.dropLast())
        
        // Turn the title into a number
        let titleAsNumber = Double(titleCleaup)!
        
        // Make the operation
        tipValue = titleAsNumber / 100
        
        
        
    }
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        splitNumberLabel.text = String(format: "%.0f", sender.value)
        
        numberOfPeople = Int(sender.value)
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let bill = billTextField.text!
        
        if bill != "" {
            billTotal = Double(bill)!
            
             tipTotal = billTotal * tipValue
            
            let result = (billTotal + tipTotal) / Double(numberOfPeople)
            
            finalResult = String(format: "%.2f", result)
        }
        
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "goToResult" {
            
            if let destinationVC = segue.destination as? ResultsViewController {
                
                destinationVC.result = finalResult
                destinationVC.tipAmount = String(format:"%.2f", tipTotal)
                destinationVC.tip = Int(tipValue * 100)
                destinationVC.split = numberOfPeople
            }
        }
    }
    
    
}

