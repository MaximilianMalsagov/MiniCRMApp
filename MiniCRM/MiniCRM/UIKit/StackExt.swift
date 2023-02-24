//
//  StackExt.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 16.02.2023.
//

import UIKit

extension UIStackView {
    convenience init(views: [UIView],
                     axis: NSLayoutConstraint.Axis,
                     spacing: CGFloat) {
        self.init(arrangedSubviews: views)
        self.spacing = spacing
        self.axis = axis
    }
    
    
}
