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
    private var bottomButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    private func setupViews() {
        backgroundColor = Theme.backgroundColor
        setupTimerView()
        setupIdolView()
        setupBottomButton()
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
    
    private func setupBottomButton() {
        setupButtonImage()
        bottomButton.backgroundColor = Theme.tintColorPink
        bottomButton.layer.cornerRadius = 42.5
        bottomButton.addTarget(self, action: #selector(HomeController.buttonPressed), for: .touchUpInside)
        bottomButton.translatesAutoresizingMaskIntoConstraints = false
        positionButton()
    }
    
    private func positionButton() {
        addSubview(bottomButton)
        NSLayoutConstraint.activate([
            bottomButton.widthAnchor.constraint(equalToConstant: 85),
            bottomButton.heightAnchor.constraint(equalToConstant: 85),
            bottomButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            bottomButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }
    
    private func setupButtonImage() {
        let boldFont = UIFont.boldSystemFont(ofSize: 28)
        let configuration = UIImage.SymbolConfiguration(font: boldFont)
        let buttonImage = UIImage(systemName: "play", withConfiguration: configuration)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        bottomButton.setImage(buttonImage, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
