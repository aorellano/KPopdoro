//
//  ProjectsController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/24/21.
//

import UIKit

class ProjectsController: UIViewController {
    let projectsView = ProjectsView()
    let dataSource = ProjectsDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        projectsView.tableView.dataSource = dataSource
    }

    private func setupTitle() {
        title = "Projects"
        let textAttributes = [NSAttributedString.Key.foregroundColor : Theme.textColor]
        navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.navigationBar.isHidden = false
        navigationController?.navigationBar.prefersLargeTitles = true
        
    }
    
    override func loadView() {
        view = projectsView
    }
    
}

extension ProjectsController {
    fileprivate enum Section {
        case main
    }
}
