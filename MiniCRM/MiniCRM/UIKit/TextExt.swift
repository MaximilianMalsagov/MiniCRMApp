//
//  TextExt.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 16.02.2023.
//

import UIKit

extension UITextField {
    
    convenience init(placeholder: String) {
        
        self.init()
        self.placeholder = placeholder
        self.backgroundColor = .clear
        self.textColor = .white
        self.layer.borderColor = UIColor.white.cgColor
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 16
        
        heightAnchor.constraint(equalToConstant: 48).isActive = true
        leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        leftViewMode = .always
        self.font =  UIFont(name: "AvenirNext-regular", size: 20)
    }
}
