//
//  ProjectsController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/24/21.
//

import UIKit

class ProjectsController: UIViewController {
    private let projectsView = ProjectsView()
    private let dataSource = ProjectsDataSource()
    var projectManager: ProjectManager?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTitle()
        projectsView.tableView.dataSource = dataSource
        projectsView.tableView.delegate = self
//        projectManager?.createProject()
//        let data = ProjectManager(project: ProjectType.project(Project(title: "Hello", color: .blue)))
//        data.createProject()
    }
    
//    init(projectManager: ProjectManager) {
//        self.projectManager = projectManager
//        super.init(nibName: nil, bundle: nil)
//    }
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
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

extension ProjectsController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}
