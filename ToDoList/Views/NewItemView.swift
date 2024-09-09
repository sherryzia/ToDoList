//
//  NewItemView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool

    var body: some View {
        VStack
        {
            Text("New Item")
                .font(.system(size: 32))
                .bold()
                .padding(.top, 100)
                
            
            Form
            {
                TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                Button
                {
                    if viewModel.canSave
                    {
                        viewModel.save()
                        newItemPresented = false
                    }
                    else
                    {
                        viewModel.showAlert = true
                    }
                } label: {
                    
                    ZStack
                    {
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(.pink)

                        Text("Save").foregroundStyle(Color.white).bold()

                    }
                }
                .padding()
                .alert(isPresented: $viewModel.showAlert)
                {
                    Alert(title: Text("ERROR"), message: Text("Please fill all entries"))
                }
            
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
