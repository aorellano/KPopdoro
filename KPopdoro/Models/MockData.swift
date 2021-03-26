//
//  MockData.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/24/21.
//

import Foundation

//provides mockdata for when app is first launched
class MockData {
    private(set) static var mockProjects = [
        Project(title: "KPopdoro", color: .purple),
        Project(title: "Working Out", color: .green),
        Project(title: "Calculus", color: .red)
    ]
    
    private init(){}
}

