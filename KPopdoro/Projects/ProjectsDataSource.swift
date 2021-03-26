//
//  ProjectsDataSource.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/24/21.
//

import UIKit

class ProjectsDataSource: NSObject, UITableViewDataSource {
    let projects = MockData.mockProjects
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return MockData.mockProjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ProjectCell
        cell.setup(projects[indexPath.row])
        return cell
    }
}
