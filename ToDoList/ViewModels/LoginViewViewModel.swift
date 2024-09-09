//
//  LoginViewViewModel.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import Foundation
import FirebaseAuth
class LoginViewViewModel: ObservableObject
{
    @Published var email = ""
    @Published var password = ""
    @Published var errorMessage = ""
    
    
    init()
    {
        
    }
        func login()
        {
            
            guard validate() else
            {
                return
            }
            //Try to login user
            
            Auth.auth().signIn(withEmail: email, password: password)
        }
        
       private  func validate() -> Bool
        {
            errorMessage = ""
            guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
                  !password.trimmingCharacters(in: .whitespaces).isEmpty
               
            else{
                errorMessage = "Please Fill In All Fields!"
                
                return false
            }
            guard email.contains("@") && email.contains(".")
            else{
            errorMessage = "Please enter valid email"
                return false
            }
            return true
        }
}
