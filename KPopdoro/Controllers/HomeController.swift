//
//  HomeController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/23/21.
//

import UIKit

class HomeController: UIViewController, TimerProtocol {
    let homeView = HomeView()
    var time = "12:00"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildViewControllers()
        setupActions()
    }
    
    private func setupChildViewControllers() {
        add(TimerController())
        add(IdolController())
    }
    
    private func setupActions() {
        homeView.bottomButton.addTarget(self, action: #selector(HomeController.buttonPressed), for: .touchUpInside)
    }
    
    @objc func buttonPressed() {
        let vc = ProjectsController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc func fire() {
        print("hi")
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func loadView() {
        view = homeView
    }
}
