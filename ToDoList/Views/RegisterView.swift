//
//  RegisterView.swift
//  ToDoList
//
//  Created by Eduardo Geovanni Pérez Munguía on 15/04/24.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
    var body: some View {
        VStack {
            // HEADER
            HeaderView(title: "Register",
                       subtitle: "Start organizing To Do",
                       angle: -15, background: .orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(
                    title: "Create Account",
                    background: .yellow
                ) {
                    viewModel.register()
                    // Attemp registration
                }
                .padding()
            }
            .offset(y: -50)
            
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
