//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var headerTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    var timerDoneSoundEffect: AVAudioPlayer!
    let eggTimes : [String:Float] = ["Soft": 3.0, "Medium": 5.0, "Hard": 12.0]
    var secondsRemaining : Float = 0.0
    var timer = Timer()
    
    @IBAction func HardnessSelected(_ sender: UIButton) {
        timer.invalidate()

        let hardness = sender.currentTitle!
        headerTitle.text = "Cooking your eggs \(hardness.lowercased())"
        secondsRemaining = eggTimes[hardness]!
        progressBar.progress = secondsRemaining
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }

    
    @objc func updateTimer() {
        let change: Float = progressBar.progress/secondsRemaining
        if secondsRemaining > 0.0 {
            print("\(secondsRemaining) seconds left.")
            progressBar.progress = progressBar.progress - change
            secondsRemaining -= 1.0
        } else {
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            timerDoneSoundEffect = try! AVAudioPlayer(contentsOf: url!)
            timerDoneSoundEffect.play()
            
            timer.invalidate()
            headerTitle.text = "Done!"
        }
    }
}
