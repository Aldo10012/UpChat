//
//  Service.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/6/21.
//

import Foundation
import Firebase

struct Service {
    
    
    
    static func fetchUsers() {
        Firestore.firestore().collection("users").getDocuments { snapshot, error in
            print(snapshot?.documents)
            snapshot?.documents.forEach({ document in
                print(document.data())
            })
        }
        
    }
}
