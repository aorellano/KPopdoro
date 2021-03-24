//
//  ViewController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/12/21.
//

import UIKit

class TimerController: UIViewController {
    let timerView = TimerView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        view = timerView
    }
}

