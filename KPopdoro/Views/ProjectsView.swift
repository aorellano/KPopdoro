//
//  ProjectsView.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/24/21.
//

import UIKit

class ProjectsView: UIView {
    var tableView = UITableView()
    var addButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    private func setupViews() {
        backgroundColor = Theme.backgroundColor
        
        setupAddButton()
        setupTableView()
    }
    
    private func setupAddButton() {
        let image = UIImage(named: "add")
        addButton.setImage(image, for: .normal)
        addButton.setTitle(" New Project", for: .normal)
        addButton.setTitleColor(Theme.textColor, for: .normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        positionAddButton()
    }
    
    private func positionAddButton() {
        addSubview(addButton)
        
        NSLayoutConstraint.activate([
            addButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            addButton.centerXAnchor.constraint(equalTo: centerXAnchor, constant: -20),
            addButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        positionTableView()
    }
    
    private func positionTableView() {
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: addButton.topAnchor)
        ])
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
