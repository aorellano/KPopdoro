//
//  BottomButton.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/29/21.
//

import UIKit

class BottomButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupButton()
    }
    
    private func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = Theme.tintColorPink
        layer.cornerRadius = 42.5
        addShadow()
        
        NSLayoutConstraint.activate([
            heightAnchor.constraint(equalToConstant: 85),
            widthAnchor.constraint(equalToConstant: 85)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BottomButton {
    func add(theImage image: String) {
        let boldFont = UIFont.boldSystemFont(ofSize: 28)
        let configuration = UIImage.SymbolConfiguration(font: boldFont)
        
        let buttonImage = UIImage(systemName: image, withConfiguration: configuration)?.withTintColor(.white, renderingMode: .alwaysOriginal)
        setImage(buttonImage, for: .normal)
    }
}
