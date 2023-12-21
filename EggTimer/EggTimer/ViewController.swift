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

    var player: AVAudioPlayer?
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    var secondsInOneMinute = 2
    var totalTime = 0
    var secondsPassed = 0
    var timer = Timer()


    @IBAction func hardnessSelected(_ sender: UIButton) {
        if timer.isValid {
            timer.invalidate()
        }
        let hardness = sender.currentTitle!
        let eggTime = eggTimes[hardness]!

        progressBar.progress = 0.0
        self.secondsPassed = 0
        titleLabel.text = hardness

        timer(eggTime)
    }

    func timer(_ minutes: Int) {
        totalTime = secondsInOneMinute * minutes
        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in

            if self.secondsPassed < self.totalTime {
                self.secondsPassed += 1
                self.progressBar.progress = Float(self.secondsPassed) / Float(self.totalTime)

            } else {
                timer.invalidate() // Para o timer quando atingir 0 segundos
                self.playAlarm()
                self.titleLabel.text = "Done!"
            }
        }

        RunLoop.main.add(timer, forMode: .common)
    }

    func playAlarm() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")!

        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }

            player.prepareToPlay()
            player.play()

        } catch let error as NSError {
            print(error.description)
        }
    }
}
