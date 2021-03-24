//
//  HomeController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/23/21.
//

import UIKit

class HomeController: UIViewController {
    let homeView = HomeView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupChildViewControllers()
    }
    
    private func setupChildViewControllers() {
        add(TimerController())
        add(IdolController())
    }
    
    @objc func buttonPressed() {
        print("hello")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func loadView() {
        view = homeView
    }
}
