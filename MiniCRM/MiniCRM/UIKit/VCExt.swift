//
//  VCExt.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 23.02.2023.
//

import UIKit

extension UIViewController {
    
    func showInfoAlert(_ message: String) {
        let alert = UIAlertController(title : nil,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .cancel)
        alert.addAction(okAction)
        self.present(alert, animated: true)
        
    }
}
