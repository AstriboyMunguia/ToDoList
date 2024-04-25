//
//  User.swift
//  ToDoList
//
//  Created by Eduardo Geovanni Pérez Munguía on 15/04/24.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
