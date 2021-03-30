//
//  UIView+Extension.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/29/21.
//

import UIKit

extension UIView {
    func addShadow() {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        layer.shadowOpacity = 0.4
    }
}
