//
//  TimerViewController.swift
//  TaskBubble
//
//  Created by Kate Kearney on 4/11/19.
//  Copyright © 2019 Kate Kearney. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    
    @IBOutlet weak var pause: UIButton!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var clock = timerLogic()
    var seconds = 60
    var timer = Timer()
    var isTimerRunning = false
    var resumeTapped = false
    
    
    @objc func updateTimer() {
        seconds -= 1
        timerLabel.text = clock.timeString(time: TimeInterval(seconds))
    }
    
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(TimerViewController.updateTimer)), userInfo: nil, repeats: true)
    }

    @IBAction func pauseButton(_ sender: UIButton) {
        if self.resumeTapped == false {
            timer.invalidate()
            self.resumeTapped = true
            self.pause.setTitle("Resume", for: .normal)
        } else {
            runTimer()
            self.resumeTapped = false
            self.pause.setTitle("Pause", for: .normal)
        }
    }
    
    @IBAction func doneButton(_ sender: Any) {
        timer.invalidate()
        seconds = 60
        timerLabel.text = "\(seconds)"
        isTimerRunning = false
    }
    
    
   
}
