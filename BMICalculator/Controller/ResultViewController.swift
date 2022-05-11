//
//  ResultViewController.swift
//  BMICalculator
//
//  Created by Muhammad Ziddan Hidayatullah on 11/05/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?

    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var suggestionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        valueLabel.text = bmiValue
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
