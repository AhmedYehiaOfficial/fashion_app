//
//  Register.swift
//  Fashion
//
//  Created by Ahmed Yehia on 4/14/23.
//

import Foundation

// MARK: - Register
struct Register: Codable {
    let status: Bool
    let message: String
    let data: RegisterData
}

// MARK: - RegisterData
struct RegisterData: Codable {
    let name, email, phone: String
    let id: Int
    let image: String
    let token: String
}
