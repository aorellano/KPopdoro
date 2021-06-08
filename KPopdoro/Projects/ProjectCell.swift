//
//  ProjectCell.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/25/21.
//

import UIKit

class ProjectCell: UITableViewCell {
    private var titleLabel = UILabel()
    private var textField = UITextField()
    private var colorView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = Theme.backgroundColor
        textField.isHidden = true
        textField.delegate = self
        setupColorView()
        setupTitleLabel()
        setupTextField()
    }
    
    func setup(_ project: Project) {
        titleLabel.text = project.title
        colorView.backgroundColor = project.color
    }
    
    private func setupColorView() {
        colorView.layer.cornerRadius = 10
        colorView.translatesAutoresizingMaskIntoConstraints = false
        
        positionColorView()
    }
    
    private func positionColorView() {
        contentView.addSubview(colorView)
        
        NSLayoutConstraint.activate([
            colorView.heightAnchor.constraint(equalToConstant: 20),
            colorView.widthAnchor.constraint(equalToConstant: 20),
            colorView.centerYAnchor.constraint(equalTo: centerYAnchor),
            colorView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15)
        ])
    }
    
    private func setupTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = Theme.textColor
        titleLabel.isUserInteractionEnabled = true
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(labelPressed))
        tapGesture.numberOfTapsRequired = 1
        titleLabel.addGestureRecognizer(tapGesture)
        positionTitleLabel()
    }
    
    private func setupTextField() {
        textField.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor: Theme.cancelButtonColor])
        textField.backgroundColor = Theme.accentColor
        textField.textColor = Theme.textColor
        textField.translatesAutoresizingMaskIntoConstraints = false
        positionTextField()
    }
    
    @objc func labelPressed() {
        titleLabel.isHidden = true
        textField.isHidden = false
        textField.text = titleLabel.text
    }
    
    private func positionTitleLabel() {
        contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    
    private func positionTextField() {
        contentView.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.leadingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: 20),
            textField.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10))
        contentView.backgroundColor = Theme.accentColor
        contentView.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ProjectCell: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        textField.isHidden = true
        titleLabel.isHidden = false
        titleLabel.text = textField.text
        return true
    }
}
