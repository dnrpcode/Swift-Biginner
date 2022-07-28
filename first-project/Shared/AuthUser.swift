//
//  AuthUser.swift
//  first-project
//
//  Created by dani prayogi on 08/03/22.
//

import Foundation

class AuthUser: ObservableObject{
    @Published var isLoggedin : Bool = false
    @Published var isCorrect : Bool = true
}
