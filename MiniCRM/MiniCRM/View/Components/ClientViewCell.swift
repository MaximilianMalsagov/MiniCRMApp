//
//  ClientViewCell.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 22.02.2023.
//

import UIKit

class ClientViewCell: UITableViewCell {

    static let reuseID = "ClientCell"
    
    
    let nameLabel = UILabel(text: "Maximilian", font: FontsLibrary.bold)
    
    let phoneLabel = UILabel(text: "+7-926-552-72-70", font: FontsLibrary.simple)
    
    let emailLabel = UILabel(text: "maxim.malsagov@mail.ru", font: FontsLibrary.simple)
    
    let addressLabel = UILabel(text: "Lobachevskogo street",font: FontsLibrary.simple)
    
    let managerLabel = UILabel(text: "Manager: Steve Jobs", font: FontsLibrary.simple)
    
    let ppImageView = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setViews()
        setConstraints()
    }
    
    func setViews() {
        backgroundColor = .white
        ppImageView.backgroundColor = .systemBlue
        ppImageView.layer.cornerRadius = 32
        ppImageView.clipsToBounds = true
    }
    func setConstraints() {
        let nameStack = UIStackView(views: [nameLabel,phoneLabel,emailLabel],
                                    axis: .vertical,
                                    spacing: 4)
        
        let topStack = UIStackView(views: [ppImageView,nameStack],
                                    axis: .horizontal,
                                    spacing: 16)
        
        let stack = UIStackView(views: [topStack,addressLabel,managerLabel],
                                    axis: .vertical,
                                    spacing: 6)
        contentView.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ppImageView.heightAnchor.constraint(equalToConstant: 64),
            ppImageView.widthAnchor.constraint(equalToConstant: 64)
        ])
        
        NSLayoutConstraint.activate([
            stack.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0),
            stack.leftAnchor.constraint(equalTo: leftAnchor, constant: 12),
            stack.centerXAnchor.constraint(equalTo: centerXAnchor, constant: 0),
        ])
        
        
    }
    required init(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}


