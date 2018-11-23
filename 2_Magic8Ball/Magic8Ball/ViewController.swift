//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Mia Ngo on 11/23/18.
//  Copyright © 2018 Mia Ngo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    var randomBallIndex = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImgs()
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        updateBallImgs()
    }
    
    func updateBallImgs() {
        randomBallIndex = Int.random(in: 0...4)
        
        ballImage.image = UIImage(named: "ball\(randomBallIndex+1)")
    }
}

