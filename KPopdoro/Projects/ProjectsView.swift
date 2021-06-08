//
//  ProjectsView.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/24/21.
//

import UIKit

class ProjectsView: UIView {
    var tableView = UITableView()
    var addButton = BottomButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    private func setupViews() {
        backgroundColor = Theme.backgroundColor
        
        positionAddButton()
        setupTableView()
    }
    
    private func setupAddButton() {
        let image = UIImage(named: "plus")
        addButton.setImage(image, for: .normal)
        addButton.setTitle(" New Project", for: .normal)
        addButton.setTitleColor(Theme.textColor, for: .normal)
        addButton.translatesAutoresizingMaskIntoConstraints = false
        positionAddButton()
    }
    
    private func positionAddButton() {
        addButton.add(theImage: "plus")
        addSubview(addButton)
        
        NSLayoutConstraint.activate([
            addButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            addButton.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }

    private func setupTableView() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ProjectCell.self, forCellReuseIdentifier: "Cell")
        tableView.backgroundColor = Theme.backgroundColor
        positionTableView()
    }
    
    private func positionTableView() {
        addSubview(tableView)
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: addButton.topAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
