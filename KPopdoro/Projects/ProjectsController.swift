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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupTitle()
        setupActions()

        projectsView.tableView.delegate = self
        projectsView.tableView.dataSource = dataSource
    }
    

    private func setupTitle() {
        title = "Projects"
        let textAttributes = [NSAttributedString.Key.foregroundColor : Theme.textColor]
        navigationController?.navigationBar.largeTitleTextAttributes = textAttributes
    }
    
    private func setupActions() {
        projectsView.addButton.addTarget(self, action: #selector(addButtonPressed), for: .touchUpInside)
    }
    
    @objc func addButtonPressed() {
        //nothing as of rn
    }
    
    
    @objc func createProject() {
        //
    }
    
    private func addProject() {
//        projectsView.tableView.performBatchUpdates({
//            projectsView.tableView.insertRows(at: [IndexPath(row: ProjectManager.readProjects().count - 1, section: 0)], with: .automatic)
//        }, completion: nil)
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
