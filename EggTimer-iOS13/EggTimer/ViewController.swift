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
    
    let eggTimes = ["Soft": 5, "Medium": 7, "Hard": 12]
    var timer: Timer?
    var player: AVAudioPlayer?
    var count = 0
    
    @IBOutlet weak var countDownLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        guard let hardness = sender.currentTitle, let duration = eggTimes[hardness] else { return }
        count = duration * 60 // Conver minutes to seconds if needed
        countDownLabel.text = formatTime(seconds: count)
        timer?.invalidate() // Stop any existing timer
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountDown), userInfo: nil, repeats: true)
    }
    
    @objc func updateCountDown() {
        if count > 0 {
            count -= 1
            countDownLabel.text = formatTime(seconds: count)
        } else {
            timer?.invalidate()
            playSound()
            countDownLabel.text = "Done!"
        }
    }
    
    func formatTime (seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%d:%02d", minutes, seconds)
    }
    
    func playSound () {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")!
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print("Could not load sound file.")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countDownLabel.text = "Select Hardness" // Initial text for the label
    }
}
