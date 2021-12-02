//
//  UserAuth.swift
//  swiftUIFirebaseAuth
//
//  Created by Ashton Hess on 12/1/21.
//

import Combine

class UserAuth: ObservableObject{
    @Published var isLoggedin: Bool = false
    func login(){
        self.isLoggedin = true
    }
}
