//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit


class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var totalHeightInInches = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let heightInFeet = Double(sender.value)
        let heightMeasurement = Measurement(value: heightInFeet, unit: UnitLength.feet)
        
        // Convert to inches
        let heightInInches = heightMeasurement.converted(to: .inches).value
        totalHeightInInches = Int(heightInInches)
        
        // Separate for display
        let feet = Int(heightInInches) / 12
        let inches = Int(heightInInches) % 12
        
        // Display
        if inches == 0 {
            heightLabel.text = String("\(feet) ft")
        } else {
            heightLabel.text = String("\(feet) ft \(inches) in")
        }
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let weightInPounds = Int(sender.value)
        
        weightLabel.text = "\(weightInPounds) lbs"
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        let weightInPounds = Double(weightSlider.value)
        let heightInInches = Double(totalHeightInInches)
        
        //
        guard heightInInches > 0 else {
            print("Height cannot be zero")
            return
        }
        
        calculatorBrain.calculateBMI(weightInPounds: weightInPounds, heightInInches: heightInInches)
        
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            if let destinationVC = segue.destination as? ResultViewController {
                destinationVC.bmiValue = calculatorBrain.getBMIValue()
                destinationVC.advice = calculatorBrain.getAdvice()
                destinationVC.color = calculatorBrain.getColor()
            }
        }
    }
    
    
}

