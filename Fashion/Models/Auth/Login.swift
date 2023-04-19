//
//  Login.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/14/23.
//

import Foundation
// MARK: - Login
struct Login: Codable {
    let status: Bool
    let message: String
    let data: LoginData
}

// MARK: - LoginData
struct LoginData: Codable {
    let id: Int
    let name, email, phone: String
    let image: String
    let points, credit: Int
    let token: String
}
