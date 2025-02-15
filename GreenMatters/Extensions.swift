//
//  Extensions.swift
//  GreenMatters
//
//  Created by macbook air m1 on 15/02/25.
//

import UIKit
import Foundation

@IBDesignable
class CustomView: UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
        }
    }
}
