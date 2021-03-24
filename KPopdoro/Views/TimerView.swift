//
//  TimerView.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/23/21.
//

import UIKit

class TimerView: UIView {
    let timerLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    private func setupView() {
        backgroundColor = Theme.backgroundColor
        translatesAutoresizingMaskIntoConstraints = false
        setupTimer()
    }
    
    private func setupTimer() {
        timerLabel.text = "25:00"
        timerLabel.font = timerLabel.font.withSize(115)
        timerLabel.textColor = Theme.accentColor
        timerLabel.translatesAutoresizingMaskIntoConstraints = false
        positionTimer()
    }
    
    private func positionTimer() {
        addSubview(timerLabel)
        
        timerLabel.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        timerLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
