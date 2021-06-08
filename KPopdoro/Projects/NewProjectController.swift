//
//  NewProjectController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 6/8/21.
//

import UIKit

class NewProjectController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Theme.backgroundColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupTitle()
        setupNavBar()
    }
    
    private func setupTitle() {
        navigationController?.navigationBar.isHidden = false
    }
    
    private func setupNavBar() {
        title = "Project"
        navigationController?.navigationBar.barTintColor = Theme.backgroundColor
        let textAttributes = [NSAttributedString.Key.foregroundColor : Theme.textColor]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        setupNavItems()
    }
    
    private func setupNavItems() {
        let cancelButton = UIBarButtonItem(systemItem: .cancel)
        let doneButton = UIBarButtonItem(systemItem: .done)
        navigationItem.rightBarButtonItem = doneButton
        navigationItem.leftBarButtonItem = cancelButton
    }
}
