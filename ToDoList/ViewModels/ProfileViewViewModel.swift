//
//  ProfileViewViewModel.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class ProfileViewViewModel: ObservableObject
{
    init() {}
    @Published var user: User? = nil
    
    func fetchUser()
    {
        guard let userId = Auth.auth().currentUser?.uid else{
            return
        }
        let db = Firestore.firestore()
        db.collection("user").document(userId)
            .getDocument{[weak self] snapshot, error in
                guard let data = snapshot?.data(), error == nil
                else{
                    return
                }
                DispatchQueue.main.async
                {
                    self?.user = User(id: data["id"] as? String ?? "",
                                      name:data["name"] as? String ?? "",
                                      email: data["email"] as? String ?? "",
                                      joined: data["id"] as? TimeInterval ?? 0)
                }
            }
    }
    
    
    func logout()
    {
        do
        {
            try Auth.auth().signOut()
        }
        catch
        {
            print(error)
        }
    }
    
}
