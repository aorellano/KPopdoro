//
//  TimerManager.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/23/21.
//

import Foundation

class TimerManager {
    let myTimer: Timer
    
    init(myTimer: Timer) {
        self.myTimer = myTimer
    }
    
    func currentTime() {
        print(myTimer)
    }
}
