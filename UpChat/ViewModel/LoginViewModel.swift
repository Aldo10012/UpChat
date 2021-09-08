//
//  LoginViewModel.swift
//  UpChat
//
//  Created by Alberto Dominguez on 9/7/21.
//

import Foundation

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
