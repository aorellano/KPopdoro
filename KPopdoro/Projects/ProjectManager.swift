//
//  DataManager.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/25/21.
//
import UIKit

class ProjectManager {
    
    static func createProject(project: Project) {
        Data.projects.append(project)
        print(Data.projects)
        
    }
    
    static func readProjects() -> [Project] {
        return Data.projects
    }
    
    
    static func updateProject(project: Project) {
        
    }
    
    static func deleteProject(project: Project) {
        //add comment
    }
}
