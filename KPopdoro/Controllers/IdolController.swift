//
//  IdolController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/19/21.
//

import UIKit

class IdolController: UIViewController {
    let idolView = IdolView()
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        view = idolView
    }
    
}
