//
//  ProjectCell.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/25/21.
//

import UIKit

class ProjectCell: UITableViewCell {
    private var titleLabel = UILabel()
    private var colorView = UIView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = Theme.backgroundColor
        setupColorView()
        setupTitleLabel()
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
        positionTitleLabel()
    }
    
    private func positionTitleLabel() {
        contentView.addSubview(titleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: colorView.trailingAnchor, constant: 20),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
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
