//
//  LoginView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()

    var body: some View {
        
        NavigationView{
            VStack
            {
             RegisterHeaderView()
                
                Form{
                    TextField("Name", text:$viewModel.name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Email Address", text:$viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text:$viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button
                    {
                        //Attempt to login
                        viewModel.register()
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.green/*@END_MENU_TOKEN@*/)
                            Text("Create Account").foregroundStyle(Color.white).bold()
                            
                        }
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    RegisterView()
}
