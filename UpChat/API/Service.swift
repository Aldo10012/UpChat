//
//  Service.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/6/21.
//

import Foundation
import Firebase

struct Service {
    
    
    
    static func fetchUsers(completion: @escaping([User]) -> Void) {
        var users = [User]()
        
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            print(snapshot?.documents)
            snapshot?.documents.forEach({ document in
                let dictionary = document.data()
                let user = User(dictinary: dictionary)
                
                print("DEBUG: Username is: \(user.username)")
                print("DEBUG: Fullname is: \(user.fullname)")
                users.append(user)
                completion(users)
            })
        }
        
    }
}
