//
//  ToDosViewController.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 19.02.2023.
//

import UIKit

class ToDosController: UIViewController {

    let mainView = TodosView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = mainView
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self
        setNavBarItem()
        
    }
    func setNavBarItem() {
        let button = UIBarButtonItem(image: UIImage(systemName: "plus"),
                                     style: .plain,
                                     target: self,
                                     action: #selector(showAddNewTaskVC))
        navigationItem.rightBarButtonItem = button
    }
    @objc
    func showAddNewTaskVC() {
        print("Show Add new task VC")
    }
}

extension ToDosController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TodoCell.reuseID) as! TodoCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
}
