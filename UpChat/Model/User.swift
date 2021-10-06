//
//  User.swift
//  UpChat
//
//  Created by Alberto Dominguez on 10/6/21.
//

import Foundation

struct User {
    let uid: String
    let profileImageURL: String
    let username: String
    let fullname: String
    let email: String
    
    init(dictinary: [String: Any]) {
        self.uid =             dictinary["uid"]             as? String ?? ""
        self.profileImageURL = dictinary["profileImageURL"] as? String ?? ""
        self.username =        dictinary["username"]        as? String ?? ""
        self.fullname =        dictinary["fullname"]        as? String ?? ""
        self.email =           dictinary["email"]           as? String ?? ""
    }
}
