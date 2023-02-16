//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()  // initializing calculator brain
    
    @IBOutlet weak var heightLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightSlider: UISlider!
    
    
    @IBOutlet weak var weightSlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        // update height on screen to 2 decimal places
        let height = String(round(sender.value * 100) / 100)
        heightLabel.text = "\(height)m"
        
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        // update weight on screen
        let weight = String(Int(sender.value))
        weightLabel.text = "\(weight)kg"
    }
    
    
    // calculate button is pressed
    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        
        let height = round(heightSlider.value * 100) / 100
        let weight = Int(weightSlider.value)
        
        // calculate the user's bmi
        calculatorBrain.calculateBMI(weight: weight, height: height)
        
        
        // navigating to next screen using identifier we called goToResults
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // if identifier is equal to the identifier we linked to the results screen
        if segue.identifier == "goToResults" {
            
            // destination view controller
            let destinationVC = segue.destination as! ResultsViewController
            //let bmi = calculateBMI(weight: weight, height: height) as! Ca
            
            // getting the respective bmi results page information
            destinationVC.bmiString = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.colour = calculatorBrain.getColour()
            
        }
    }
    
}


