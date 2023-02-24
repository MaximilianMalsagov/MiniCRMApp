//
//  ButtonExtension.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 16.02.2023.
//

import UIKit

extension UIButton {
    convenience init(title: String, withBg: Bool) {
        
        self.init(type: .system)
        setTitle(title, for: .normal)
        setTitleColor(withBg ? .darkGray: .white, for: .normal)
        backgroundColor = withBg ? .white : .clear
        if withBg {
            heightAnchor.constraint(equalToConstant: 48).isActive = true 
        
        self.titleLabel?.font = UIFont(name: "AvenirNext-regular", size: 20)
    } else {
        self.titleLabel?.font = UIFont(name: "AvenirNext-regular", size: 16)
    }
        layer.cornerRadius = 16
    }
}
