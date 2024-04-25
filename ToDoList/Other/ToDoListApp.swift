//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Eduardo Geovanni Pérez Munguía on 15/04/24.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
