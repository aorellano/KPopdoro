//
//  CreateProjectWindow.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/26/21.
//

import UIKit

class CreateProjectWindow: UIView {
    var containerView = UIView()
    var titleLabel = UILabel()
    var textField = UITextField()
    var cancelButton = UIButton()
    var createButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    private func setupViews() {
        isHidden = true
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.5)
        setupContainerView()
        setupTitleLabel()
        setupTextField()
        setupCancelButton()
        setupCreateButton()
    }
    
    private func setupContainerView() {
        containerView.backgroundColor = Theme.accentColor
        containerView.layer.cornerRadius = 20
        containerView.translatesAutoresizingMaskIntoConstraints = false
        positionContainerView()
    }
    
    private func positionContainerView() {
        addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.heightAnchor.constraint(equalToConstant: 300),
            containerView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 40),
            containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func setupTitleLabel() {
        titleLabel.text = "Create new project"
        titleLabel.textColor = Theme.textColor
        titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        positionTitleLabel()
    }
    
    private func positionTitleLabel() {
        containerView.addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 30)
        ])
    }
    
    private func setupTextField() {
        textField.attributedPlaceholder = NSAttributedString(string: "Enter project name", attributes: [NSAttributedString.Key.foregroundColor: Theme.cancelButtonColor])
        textField.borderStyle = .roundedRect
        textField.backgroundColor = Theme.textFieldColor
        textField.textColor = Theme.textColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        positionTextField()
    }
    
    private func positionTextField() {
        containerView.addSubview(textField)
        NSLayoutConstraint.activate([
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            textField.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -30),
            textField.heightAnchor.constraint(equalToConstant: 40)
        ])
    }

    private func setupCancelButton() {
        cancelButton.setTitle("Cancel", for: .normal)
        cancelButton.backgroundColor = Theme.cancelButtonColor
        cancelButton.layer.cornerRadius = 10
        cancelButton.translatesAutoresizingMaskIntoConstraints = false
        cancelButton.addShadow()
        
        positionCancelButton()
    }
    
    private func positionCancelButton() {
        addSubview(cancelButton)
        NSLayoutConstraint.activate([
            cancelButton.trailingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: -10),
            cancelButton.heightAnchor.constraint(equalToConstant: 55),
            cancelButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2.8),
            cancelButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20)
        ])
    }
    
    private func setupCreateButton() {
        createButton.setTitle("Create", for: .normal)
        createButton.backgroundColor = Theme.tintColorPink
        createButton.layer.cornerRadius = 10
        createButton.addShadow()
        createButton.translatesAutoresizingMaskIntoConstraints = false
        positionCreateButton()
    }
    
    private func positionCreateButton() {
        addSubview(createButton)
        NSLayoutConstraint.activate([
            createButton.leadingAnchor.constraint(equalTo: containerView.centerXAnchor, constant: 10),
            createButton.heightAnchor.constraint(equalToConstant: 55),
            createButton.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width/2.8),
            createButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
