//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by Kudzayi  Bamhare on 10/31/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiString: String?
    var advice: String?
    var colour: UIColor?

    @IBOutlet weak var bmiLabel: UILabel!
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiString
        adviceLabel.text = advice
        self.view.backgroundColor = colour
    }
    
    
    @IBAction func reCalculatePressed(_ sender: UIButton) {
        
        self.dismiss(animated: true)  // dismisses the view controller that was presented 
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
