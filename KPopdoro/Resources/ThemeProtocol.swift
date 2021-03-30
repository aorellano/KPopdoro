//
//  ThemeProtocol.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 3/19/21.
//

import UIKit

protocol ThemeProtocol {
    static var backgroundColor: UIColor { get }
    static var accentColor: UIColor { get }
    static var textColor: UIColor { get }
    static var textFieldColor: UIColor { get }
    static var tintColorPink: UIColor { get }
    static var tintColorBlue: UIColor { get }
    static var checkMarkColor: UIColor { get }
    static var cancelButtonColor: UIColor { get }
}
