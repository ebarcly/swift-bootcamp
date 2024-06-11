//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Enrique Barclay on 6/8/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiFormatted = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiFormatted
        
    }
    
    mutating func getAdvice() -> String {
        return bmi?.advice ?? "Nothing here"
        
    }
    
    mutating func getColor() -> UIColor {
        return bmi?.color ?? .black
    }
    
    // Calculate BMI
    mutating func calculateBMI(weightInPounds: Double, heightInInches: Double) {
        let bmiValue =  weightInPounds / (heightInInches * heightInInches) * 703
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pizza 🍕", color: .blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You are a fit person 💪", color: .green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Go for a run 👟", color: .red)
        }
        
        
    }
}
