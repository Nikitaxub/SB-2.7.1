//
//  Model.swift
//  SB-2.7.1
//
//  Created by xubuntus on 09.11.2021.
//

struct Person {
    let firstname: String
    let lastname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstname) \(lastname)"
    }
}

