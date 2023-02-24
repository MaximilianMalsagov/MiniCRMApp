//
//  ViewController.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 16.02.2023.
//

import UIKit

class AuthController: UIViewController {
    
    let mainView = AuthView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        addActions()
    }
    func addActions() {
        mainView.signInButton.addAction(UIAction(handler: {_ in
            
            guard let email = self.mainView.emailTF.text,
                  let password = self.mainView.passwordTF.text else { return }
            
            AuthService.shared.signIn(email: email, password: password) { result in
                switch result {
                    
                case.success(let user):
                    print(user.uid)
                    
                    let tabBarVC = TabBarController()
                    tabBarVC.modalPresentationStyle = .fullScreen
                    self.present(tabBarVC, animated: true)
                    
                case.failure(let error):
                    self.showInfoAlert(error.localizedDescription)
                    
                }
            }
            
        }), for: .touchUpInside)
        
        
    }
}
