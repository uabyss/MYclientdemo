//
//  RandomUserModel.swift
//  EfHub
//
//  Created by Blai Pratdesaba Pares on 05/05/2022.
//

import Foundation


struct RandomUserName: Codable, Hashable {
    var title: String
    var first: String
    var last: String
}

struct RandomUserDOB: Codable, Hashable {
    var date: String
    var age: Int8
}

struct RandomUser: Codable, Hashable {
    var gender: String
    var name: RandomUserName
    var email: String
    var dob: RandomUserDOB
    
}
struct RandomUserResponse: Codable, Hashable {
    var results: [RandomUser]
}
