//
//  User.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import Foundation

struct User: Codable {
    var id: String
    var name: String
    var email: String
    var joined: TimeInterval
}
