//
//  TodosView.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 20.02.2023.
//

import UIKit

class TodosView: UIView {

    let tableView = UITableView()
    let searchTF = UITextField(placeholder: "Поиск...")
    let searchButton = UIButton(title: "Найти", withBg: true)
    
    init() {
        super.init(frame: CGRect())
        setViews()
        setConstraints()
        
    }
    func setViews() {
        backgroundColor = .white
        tableView.backgroundColor = .white
        tableView.register(TodoCell.self, forCellReuseIdentifier: TodoCell.reuseID)
        searchTF.layer.borderColor = UIColor.darkGray.cgColor
        searchButton.setTitleColor(.systemBlue, for: .normal)
        searchTF.textColor = .black
    }
    
    func setConstraints() {
        let hStack = UIStackView(views: [searchTF,searchButton],
                                 axis: .horizontal,
                                 spacing: 12)
        let stack  = UIStackView(views: [hStack,tableView],
                                 axis: .vertical,
                                 spacing: 12)
        
        addSubview(stack)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
        
            stack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 0),
            stack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: 0),
            stack.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor,constant: 8),
            stack.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor,constant: -8),
        ])
        
    }
    required init(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}
