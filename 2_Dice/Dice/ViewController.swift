//
//  ViewController.swift
//  Dice
//
//  Created by Mia Ngo on 8/5/18.
//  Copyright © 2018 Mia Ngo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImgs()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImgs()
    }
    
    func updateDiceImgs() {
        randomDiceIndex1 = Int.random(in: 0...5)
        randomDiceIndex2 = Int.random(in: 0...5)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceIndex1+1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceIndex2+1)")
    }
    
}

