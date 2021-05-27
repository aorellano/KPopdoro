//
//  UIColor+Extension.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 4/4/21.
//

import UIKit

extension UIColor {
    static func random() -> UIColor {
        return UIColor (
            red: .random(),
            green: .random(),
            blue: .random(),
            alpha: 1.0
        )
    }
}

extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}
