//
//  ToDoListItemViewViewModel.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import Foundation

import FirebaseAuth
import FirebaseFirestore
class ToDoListItemViewViewModel: ObservableObject
{
    init() {}
    
    func toggleIsDone(item: ToDoListItem)
    {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else{
            return
        }
        let db = Firestore.firestore()
        db.collection("user").document(uid).collection("todos").document(newItem.id).setData(newItem.asDictionary())

    }
}
