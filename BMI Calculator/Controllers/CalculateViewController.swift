//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
   
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func heightSlider(_ sender: UISlider) {
        let formattedValue = String(format:" %.2F ", sender.value)
        heightLabel.text = "\(formattedValue)m"
      
    }
    @IBAction func weightSlider(_ sender: UISlider) {
        let weightValue = Int ( sender.value)
        weightLabel.text="\(weightValue)kg"
                
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = heightSlider.value
        let weight = weightSlider.value
        
        let bmi = weight / ( height*height )
        let formattedBMI = String(format: " %.2F ", bmi )
        print (formattedBMI )
        
        let secondVC = SecondViewController( )         // secVC is a new object
        secondVC.bmiValue=String(format : "%.1f", bmi)
        
        self.present(secondVC, animated: true , completion: nil)
       
        
    }
}

