//
//  AuthService.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 23.02.2023.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    static let shared = AuthService(); private init() { }
    let auth = Auth.auth()
    var currentUser : User? { auth.currentUser }
    
    func signIn(email: String,
                password: String,
                completion: @escaping (Result<User, Error>) -> ()) {
        auth.signIn(withEmail: email, password: password) { result , error in
            guard let result else {
                if let error { completion(.failure(error))}
                return
            }
            completion(.success(result.user))
        }
    }
    
}
