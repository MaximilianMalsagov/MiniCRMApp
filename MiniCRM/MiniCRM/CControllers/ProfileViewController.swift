//
//  ProfileViewController.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 19.02.2023.
//

import UIKit

class ProfileViewController: UIViewController {
    
    let mainView = ProfileView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = mainView
        
        
    }
    
}
