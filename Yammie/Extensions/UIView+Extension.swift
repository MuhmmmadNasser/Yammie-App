//
//  UIView+Extension.swift
//  Yammie
//
//  Created by Mohamed on 11/11/2021.
//

import UIKit

extension UIView{
    @IBInspectable var cornerRadius: CGFloat{
        get{ return cornerRadius}
        set{
            self.layer.cornerRadius = newValue
        }
    }
}
