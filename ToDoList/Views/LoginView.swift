//
//  LoginView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    var body: some View {
        
        NavigationView{
            VStack
            {
             LoginHeaderView()
                
              
                
                Form{
                    if !viewModel.errorMessage.isEmpty
                    {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(Color.red)
                    }
                    
                    TextField("Email Address", text:$viewModel.email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text:$viewModel.password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button
                    {
                        viewModel.login()
                        //Attempt to login
                    } label: {
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text("Log In").foregroundStyle(Color.white).bold()
                            
                        }
                    }
                    
                }
                //Create Account
                VStack()
                {
                    Text("New around here?").bold()
                  NavigationLink("Create An Account", destination: RegisterView())
                }.padding(.bottom, 30)
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
