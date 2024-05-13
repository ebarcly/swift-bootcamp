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
    
    let eggTimes = ["Soft": 1, "Medium": 7, "Hard": 12]
    var timer: Timer?
    var player: AVAudioPlayer?
    var count = 0
    var totalTime = 0
    
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var countDownLabel: UILabel!
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        guard let hardness = sender.currentTitle, let duration = eggTimes[hardness] else { return }
        totalTime = duration * 60 // Set the total time
        count = totalTime // Initialize count with total time
        countDownLabel.text = formatTime(seconds: count)
        progressBar.progress = 0.0 // Reset progress bar
        timer?.invalidate() // Stop any existing timer to prevent timer override
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCountDown), userInfo: nil, repeats: true)
        
        
    }
    
    
    // Use @objc to call this function for some reason...
    @objc func updateCountDown() {
        if count > 0 {
            count -= 1
            let progressFraction = Float(count) / Float(totalTime) // Calculate the fraction of the time left
            progressBar.setProgress(1.0 - progressFraction, animated: true)  // Update the progress bar
            countDownLabel.text = formatTime(seconds: count)
        } else {
            timer?.invalidate()
            progressBar.setProgress(1.0, animated: true)  // Ensure progress bar completes
            playSound()
            mainLabel.text = "DONE!"
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
        progressBar.progress = 0.0 // Initial state of the progress bar
    }
}
