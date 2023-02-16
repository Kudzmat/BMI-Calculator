//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kudzayi  Bamhare on 10/31/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    // method will calculate the bmi
    mutating func calculateBMI(weight: Int, height: Float) {
        
        var bmiValue = Float(weight) / pow(height, 2) // height to the power 2
        bmiValue = roundf(bmiValue * 100) / 100
        
        switch bmiValue {
        case 0..<18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", colour: UIColor.blue)
        case 18.5..<24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", colour: UIColor.green)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!", colour: UIColor.red)
        default:
            print("Hmmm what's going on?")
        }
        
        
        
    }
    
    // this method will return the bmi's value property
    func getBMIValue() -> String {
        let bmiString = String(format: "%.1f", bmi?.value ?? 0.0)  // string bmi to 1 decimal place
        
        return bmiString
    }
    
    // this method will return the bmi's advice property
    func getAdvice() -> String {
        let advice = bmi?.advice ?? "Something went wrong, please trey again"
        return advice
    }
    
    // this method will return the bmi's colour property
    func getColour() -> UIColor {
        let colour = bmi?.colour ?? UIColor.black
        
        return colour
    }
}
