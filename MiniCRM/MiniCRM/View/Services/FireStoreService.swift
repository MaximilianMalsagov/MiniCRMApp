//
//  Profile.swift
//  MiniCRM
//
//  Created by Максимилиан Мальсагов on 23.02.2023.
//

import Foundation
import FirebaseFirestore

class FirestoreService {
    
    static let shared = FirestoreService(); private init() { }
    
    let db = Firestore.firestore()
    var profilesRed: CollectionReference { db.collection("profiles") }
    
    func setProfile(id: String , name: String? = nil, post: String? = nil, email: String,
                    completion: @escaping (Result<Profile, Error>) -> ()) {
        
        
        let profile = Profile(id: id,
                              name: name ?? "",
                              post: post ?? "",
                              email: email)
        profilesRed.document(id).setData(profile.representation) { error in
            
            if let error {
                completion(.failure(error))
                return
            }
            completion(.success(profile))
        }
    }
}
