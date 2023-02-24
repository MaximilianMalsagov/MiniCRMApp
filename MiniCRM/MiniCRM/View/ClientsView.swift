//
//  ClientsView.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 20.02.2023.
//

import UIKit

class ClientsView: UIView {

    let tableView = UITableView()
    
    init() {
        super.init(frame: CGRect())
        setViews()
        setConstraints()
        
    }
    func setViews() {
        backgroundColor = .white
        tableView.register(ClientViewCell.self, forCellReuseIdentifier: ClientViewCell.reuseID)
    }
    
    func setConstraints() {
        addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints =  false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 0),
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: 0),
            tableView.leftAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor,constant: 8),
            tableView.rightAnchor.constraint(equalTo: safeAreaLayoutGuide.rightAnchor,constant: -8),
        ])
    }
    
    required init(coder: NSCoder) {
        fatalError("init coder has not been implemented")
    }
}
