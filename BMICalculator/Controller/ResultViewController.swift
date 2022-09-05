//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Muhammad Ziddan Hidayatullah on 11/05/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var suggestion: String?
    var color: UIColor?
    
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    func updateUI() {
        valueLabel.text = bmiValue
        suggestionLabel.text = suggestion
        self.view.backgroundColor = color
    }
}
