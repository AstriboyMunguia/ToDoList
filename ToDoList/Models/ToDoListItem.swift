//
//  ToDoListItem.swift
//  ToDoList
//
//  Created by Eduardo Geovanni Pérez Munguía on 15/04/24.
//

import Foundation

struct ToDoListItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
