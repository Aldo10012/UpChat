//
//  RegistrationViewModel.swift
//  UpChat
//
//  Created by Alberto Dominguez on 9/20/21.
//

import Foundation

struct RegistrationViewModel: AuthenticationProtocol  {
    var email: String?
    var password: String?
    var fullName: String?
    var userName: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false &&
            password?.isEmpty == false &&
            fullName?.isEmpty == false &&
            userName?.isEmpty == false
    }
}
