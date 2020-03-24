//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Mia Ngo on 3/23/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLable: UILabel!
    
    var bmi: String?
    var advice: String?
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
        adviceLable.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
