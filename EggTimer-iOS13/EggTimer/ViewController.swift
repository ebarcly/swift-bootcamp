//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import SwiftUI

class ViewController: UIViewController {
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var count = 0
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        let hardness: String? =
        sender.currentTitle!
        
        
        print(eggTimes[hardness!]!)
        
    }
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountDown), userInfo: nil, repeats: true)
    }
    
    @objc func updateCountDown() {
        if count > 0 {
            countDownLabel.text = String(count-1)
        } else {
            timer?.invalidate()
            // Do something when the countdown is over
        }
    }
}
