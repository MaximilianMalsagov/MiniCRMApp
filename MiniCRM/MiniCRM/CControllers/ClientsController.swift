//
//  ClientsController.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 19.02.2023.
//

import UIKit

class ClientsController: UIViewController {
    
    let mainView = ClientsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = mainView
        mainView.tableView.dataSource = self
        mainView.tableView.delegate = self 
        
    }
}

extension ClientsController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 12
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ClientViewCell.reuseID) as! ClientViewCell
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
