//
//  Calculator.swift
//  BMICalculator
//
//  Created by Muhammad Ziddan Hidayatullah on 11/05/22.
//

import UIKit

struct Calculator {
    
    var bmi: CalculatorModel?
    
    mutating func calculateBMI(_ weight: Float,_ height: Float) {
        let bmiValue = round(weight / pow(height, 2) * 10) / 10.0
        
        objectInitiator(bmiValue)
    }
    
    mutating func objectInitiator(_ bmiValue: Float) {
        switch bmiValue {
        case _ where bmiValue < 18.5: bmi = CalculatorModel(value: bmiValue, suggestion: "You need to eat more!", color: UIColor(red: 0.64, green: 0.80, blue: 0.95, alpha: 1.00))
        case 18.5...22.9: bmi = CalculatorModel(value: bmiValue, suggestion: "You are defenitely in perfect shape!", color: UIColor(red: 0.33, green: 0.96, blue: 0.45, alpha: 1.00))
        case 23...24.9: bmi = CalculatorModel(value: bmiValue, suggestion: "Just need a lil bit of effort to getting you in shape", color: UIColor(red: 0.98, green: 0.84, blue: 0.27, alpha: 1.00))
        case 25...30: bmi = CalculatorModel(value: bmiValue, suggestion: "Now you need to get your self up and change your habbit!", color: UIColor(red: 0.96, green: 0.72, blue: 0.34, alpha: 1.00))
        case _ where bmiValue > 30: bmi = CalculatorModel(value: bmiValue, suggestion: "You need to do hard diet and lots of workout!", color: UIColor(red: 0.97, green: 0.38, blue: 0.37, alpha: 1.00))
        default: print("Undefined")
        }
    }
    
    func getBMI() -> String {
        return String(bmi?.value ?? 0.0)
    }
    
    func getSuggestion() -> String {
        return bmi?.suggestion ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .white
    }
    
    // add comments to trigger webhook
}
