//
//  LoginViewModel.swift
//  Chat
//
//  Created by chqn201181 on 2021/09/21.
//

import Foundation

struct LoginViewModel {
    var email: String?
    var password: String?
    
    var formIsValid: Bool {
        return email?.isEmpty == false && password?.isEmpty == false
    }
}
