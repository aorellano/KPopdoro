//
//  HalfSizePresentationController.swift
//  KPopdoro
//
//  Created by Alexis Orellano on 6/8/21.
//

import UIKit

class HalfSizePresentationController: UIPresentationController {
    override var frameOfPresentedViewInContainerView: CGRect {
        get {
            guard let theView = containerView else {
                return CGRect.zero
            }

            return CGRect(x: 0, y: theView.bounds.height/2, width: theView.bounds.width, height: theView.bounds.height/2)
        }
    }
}
