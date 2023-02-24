//
//  ProfileView.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 20.02.2023.
//

import UIKit

class ProfileView: UIView {
let titleLabel = UILabel(text: "Личный  кабинет",
                         font: FontsLibrary.bigbold,
isBlack: true)
    
        let nameTextField = UITextField(placeholder: "Имя")
        let postTextField = UITextField(placeholder: "Должность")
    let emailLabel = UILabel(text: "maxim.malsagov@mail.ru",
                             font: FontsLibrary.simple)
    
    
    init() {
        super.init(frame: CGRect())
        setViews()
        setConstraints()
        
    }
    func setViews() {
        backgroundColor = .white
    }
    func setConstraints() {
        let vStack = UIStackView(views: [titleLabel,
                                        nameTextField,
                                        postTextField,
                                        emailLabel],
                                 
                                 axis: .vertical,
                                 spacing: 20)
        
        addSubview(vStack)
        
        vStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
             vStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),        vStack.centerXAnchor.constraint(equalTo: centerXAnchor),
            vStack.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
        
    }
    required init(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}
