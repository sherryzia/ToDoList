//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import Foundation

import FirebaseFirestore
class ToDoListViewViewModel: ObservableObject
{
    @Published var showingNewItemView = false
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func delete(id: String)
    {
        let db = Firestore.firestore()
        
        db.collection("user").document(userId).collection("todos").document(id).delete()
    }
    
    
}
