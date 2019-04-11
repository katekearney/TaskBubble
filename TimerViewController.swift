//
//  TimerViewController.swift
//  TaskBubble
//
//  Created by Kate Kearney on 4/11/19.
//  Copyright © 2019 Kate Kearney. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {
    
    
    
    var clock = timerLogic()
    var seconds = 60
    var timer = Timer()
    var isTimerRunning = false
    var resumeTapped = false
    
    
    @objc func updateTimer() {
        seconds -= 1
        timerLabel.text = String(seconds)
    }
    
    func runTimer(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(timerView.updateTimer)), userInfo: nil, repeats: true)
    }

    @IBAction func pauseButton(_ sender: Any) {
        if self.resumeTapped == false {
            timer.invalidate()
            self.resumeTapped = true
        } else {
            runTimer()
            self.resumeTapped = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
}
