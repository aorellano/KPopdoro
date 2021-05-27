//
//  HomeView.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/23/21.
//

import UIKit

class HomeView: UIView {
    private let timerView = TimerView()
    private let idolView = IdolView()
    var bottomButton = BottomButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    private func setupViews() {
        backgroundColor = Theme.backgroundColor
        setupTimerView()
        setupIdolView()
        positionBottomButton()
    }
    
    private func setupTimerView() {
        addSubview(timerView)
        NSLayoutConstraint.activate([
            timerView.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            timerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            timerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            timerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/4.5)
        ])
    }
    
    private func setupIdolView() {
        addSubview(idolView)
        NSLayoutConstraint.activate([
            idolView.topAnchor.constraint(equalTo: timerView.bottomAnchor),
            idolView.leadingAnchor.constraint(equalTo: leadingAnchor),
            idolView.trailingAnchor.constraint(equalTo: trailingAnchor),
            idolView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height/2.2)
        ])
    }
    
    private func positionBottomButton() {
        bottomButton.add(theImage: "plus")
        addSubview(bottomButton)
        NSLayoutConstraint.activate([
            bottomButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            bottomButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
