//
//  CalculateViewController.swift
//  BMICalculator
//
//  Created by Muhammad Ziddan Hidayatullah on 10/05/22.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var bmiResult: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightChanged(_ sender: UISlider) {
        heightValueLabel.text = "\(String(format: "%.2f", sender.value))m"
    }
    
    @IBAction func weightChanged(_ sender: UISlider) {
        weightValueLabel.text = "\(String(format: "%.0f", sender.value))Kg"
    }
    
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height = round(heightSlider.value * 100) / 100.0
        let weight = round(weightSlider.value)
        
        let bmi = round(weight / pow(height, 2) * 10) / 10.0
        bmiResult = String(bmi)
        
        print(bmi)
        
        performSegue(withIdentifier: "goToResultVC", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultVC" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = bmiResult
        }
    }
}