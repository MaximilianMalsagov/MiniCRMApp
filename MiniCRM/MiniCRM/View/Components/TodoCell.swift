//
//  TodoCell.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 20.02.2023.
//

import UIKit

class TodoCell: UITableViewCell {

    static let reuseID = "TodoCell"
    
    let ppImageView = UIImageView()
    
    let clientNameLabel = UILabel(text: "Имя клиента", font: FontsLibrary.bold)
    
    let taskNameLabel = UILabel(text: "Название задачи", font: FontsLibrary.simple)
    
    let dateLabel = UILabel(text: "12.03.2023", font: FontsLibrary.simple)

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
        ppImageView.contentMode = .scaleAspectFill
    }
    func setConstraints() {
        let textStack = UIStackView(views: [clientNameLabel, taskNameLabel, dateLabel],
                                    axis: .vertical,
                                    spacing: 5)
        
        let stack = UIStackView(views: [ppImageView, textStack],
                                axis: .horizontal,
                                spacing: 24)
        addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.alignment = .center
        
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

