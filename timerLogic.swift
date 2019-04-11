//
//  timerLogic.swift
//  TaskBubble
//
//  Created by Kate Kearney on 4/11/19.
//  Copyright © 2019 Kate Kearney. All rights reserved.
//

import Foundation

struct timerLogic{
    var hours = 0
    var minutes = 0
    var seconds = 0
 
    mutating func timeString(time:TimeInterval) -> String {
         hours = Int(time) / 3600
         minutes = Int(time) / 60 % 60
         seconds = Int(time) % 60
        return "\(hours): \(minutes): \(seconds)"
    }
}
