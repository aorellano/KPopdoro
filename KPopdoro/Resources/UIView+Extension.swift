//
//  UIView+Extension.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/29/21.
//

import UIKit

extension UIView {
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 1.5, height: 2.5)
        layer.shadowRadius = 1.0
        layer.shadowOpacity = 0.20
        layer.masksToBounds = false
    }
}
