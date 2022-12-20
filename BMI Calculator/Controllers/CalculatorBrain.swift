//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Ertürk Alan on 17.12.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float , weight: Float){
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: .blue)
        }else if bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "You're FIT", color: .green)
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less, you fatty", color: .red)
        }
    }
    
    
    func getBMI()->String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    func getAdvice()->String{
        return bmi?.advice ?? ""
    }
    func getColor()->UIColor{
        return bmi?.color ?? UIColor.white
    }
}
