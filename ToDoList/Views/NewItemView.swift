//
//  NewItemsView.swift
//  ToDoList
//
//  Created by Eduardo Geovanni Pérez Munguía on 15/04/24.
//

import SwiftUI

struct NewItemsView: View {
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        VStack {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
            
            Form {
                // TITLE
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                // DUE DATE
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                // BUTTON
                TLButton(
                    title: "Save",
                    background: .yellow
                ) {
                    if viewModel.canSave {
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .padding()
            }
            .alert(isPresented: $viewModel.showAlert) {
                Alert(
                    title: Text("Error"),
                    message: Text("Please fill in all fields and select due date that is today or newer.")
                )
            }
        }
    }
}
    #Preview {
        NewItemsView(newItemPresented: Binding(get: {
            return true
        }, set: { _ in
        }))
    }
    

