//
//  ProjectViewModel.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/25/21.
//
import UIKit

struct ProjectViewModel {
    private let model: Project
    
    init(model: Project) {
        self.model = model
    }
}

extension ProjectViewModel {
    var title: String {
        return "\(model.title)"
    }
    
    var color: UIColor {
        return model.color
    }
}
