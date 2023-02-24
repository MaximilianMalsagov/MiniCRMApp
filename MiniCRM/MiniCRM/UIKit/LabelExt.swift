//
//  LabelExt.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 16.02.2023.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont = FontsLibrary.simple, isBlack : Bool = true)  {
        self.init()
        self.text = text
        self.textColor = isBlack ? .black : .white
        self.font =  font
    }
}
