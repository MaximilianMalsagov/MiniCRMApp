//
//  Profile.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 23.02.2023.
//

import Foundation


struct Profile: Identifiable {
    var id: String
    var name: String
    var post: String
    var email: String 
}

extension Profile {
    var representation: [String : Any] {
        var repres = [String : Any] ()
        repres[id] = id
        repres[name] = name
        repres[post] = post
        repres[email] = email
        return repres

    }
}
