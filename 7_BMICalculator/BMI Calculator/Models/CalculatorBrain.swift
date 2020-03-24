//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Mia Ngo on 3/23/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiVal = weight/(height*height)
        
        if (bmiVal < 18.5) {
            bmi = BMI(value: bmiVal, advice: "Eat some more rice!", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if (bmiVal >= 18.5 && bmiVal <= 24.9) {
            bmi = BMI(value: bmiVal, advice: "You're fit!", color: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
        } else if (bmiVal >= 25 && bmiVal <= 29.9) {
            bmi = BMI(value: bmiVal, advice: "Eat a bit less rice!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        } else {
            bmi = BMI(value: bmiVal, advice: "Eat a lot less rice!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        return "\(String(format: "%.1f", bmi?.value ?? 0.0))"
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Error"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.black
    }
}
