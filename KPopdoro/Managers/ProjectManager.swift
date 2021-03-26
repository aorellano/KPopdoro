//
//  DataManager.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/25/21.
//

enum ProjectType {
    case project(Project)
    case project(Project, atIndex: Int)
}

class ProjectManager {
    var projects = [Project]()
    var project: ProjectType
    
    init(project: ProjectType) {
        self.project = project
        
    }
    
    func create(project: Project) {
        projects.append(project)
        print(project)
    }
    func read() {
        
    }
    func update() {
        
    }
    func delete() {
        
    }
}




//switch type {
//case .project:
//    return
//case .task:
//    return
//}
//
////tuple
