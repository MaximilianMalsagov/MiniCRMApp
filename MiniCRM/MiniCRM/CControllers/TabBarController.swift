//
//  TabBarController.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 19.02.2023.
//

import UIKit

class TabBarController: UITabBarController {
    
    let todosVC = ToDosController()
    let clientsVC = ClientsController()
    let profileVC = ProfileViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers =  [
            
            generateVC(rootVC: todosVC,
                                      title: "Что делать?",
                                      image: UIImage(systemName:"calendar.circle")),
            
            generateVC(rootVC: clientsVC,
                                      title: "Клиенты?",
                                      image: UIImage(systemName:"person.crop.square.filled.and.at.rectangle")),
            
            generateVC(rootVC: profileVC,
                                      title: "ЛК?",
                                      image: UIImage(systemName:"person.circle")),

            
        
        ]
    }
    
    func generateVC(rootVC: UIViewController, title: String , image: UIImage?) -> UINavigationController {
        
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.tabBarItem.title = title
        navVC.tabBarItem.image = image
        return navVC
    }
    
}
