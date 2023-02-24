//
//  AuthView.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 16.02.2023.
//

import UIKit

class AuthView: UIView {
    
    let bgImageView = UIImageView(image: UIImage(named: "bg"))
    
    let titleLabel = UILabel(text: "Авторизация",
                             font: FontsLibrary.title,
                             isBlack: false)
    let emailLabel = UILabel(text: "    Email      ")
    let emailTF = UITextField(placeholder: "Ваш Email")
    let passwordLabel = UILabel(text: "    пароль"   )
    let passwordTF = UITextField(placeholder: "Ваш пароль")
    let signInButton = UIButton(title: "Войти", withBg: true)
    let signUpButton = UIButton(title: "Регистрация", withBg: false)
    let cardView = UIView()
    
    init() {
        
        super.init(frame: CGRect())
        setViews()
        setConstraints()
        
    }
    func setViews() {
        cardView.backgroundColor = UIColor(named: "blackAlpha")
        emailLabel.backgroundColor = .white
        emailLabel.layer.cornerRadius = 6
        emailLabel.clipsToBounds = true
        
        passwordLabel.backgroundColor = .white
        passwordLabel.layer.cornerRadius = 6
        passwordLabel.clipsToBounds = true
        passwordTF.isSecureTextEntry = true 
    }
    func setConstraints() {
        
        addSubview(bgImageView)
        addSubview(titleLabel)
        
        bgImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            bgImageView.topAnchor.constraint(equalTo: topAnchor),
            bgImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bgImageView.leftAnchor.constraint(equalTo: leftAnchor),
            bgImageView.rightAnchor.constraint(equalTo: rightAnchor)
            
        ])
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        let emailStack = UIStackView(views: [emailLabel,
                                             emailTF,],
                                     axis: .vertical,
                                     spacing: -8)
        
        emailStack.alignment = .leading
        
        let passStack = UIStackView(views: [passwordLabel,passwordTF,],
                                    axis: .vertical,
                                    spacing: -8)
        passStack.alignment = .leading
        
        let authStack = UIStackView(views: [emailStack,
                                            passStack,
                                           signInButton,
                                           ],
                                    axis: .vertical,
                                    spacing: 16)
        
        authStack.translatesAutoresizingMaskIntoConstraints = false
        cardView.addSubview(authStack)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(cardView)
        
        NSLayoutConstraint.activate([
            cardView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20),
            cardView.centerXAnchor.constraint(equalTo: centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: centerYAnchor),
            cardView.heightAnchor.constraint(equalToConstant: 270),

        ])
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.bottomAnchor.constraint(equalTo: cardView.topAnchor, constant: -24),

        ])
        
        NSLayoutConstraint.activate([
            authStack.leftAnchor.constraint(equalTo: cardView.leftAnchor, constant: 30),
            authStack.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
            authStack.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            emailTF.centerXAnchor.constraint(equalTo: centerXAnchor),
            passwordTF.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

import SwiftUI

struct AuthViewProvider: PreviewProvider {
    static var previews: some View {
        
        ContainerView().ignoresSafeArea()
    }
    
    
    struct ContainerView: UIViewRepresentable {
        let view = AuthView()
        
        func makeUIView(context: Context) -> some UIView {
            return view
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
            
        }
    }
}
