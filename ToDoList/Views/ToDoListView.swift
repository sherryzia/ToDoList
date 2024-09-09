//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI
import FirebaseFirestore
struct ToDoListView: View {
    
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    init(userId: String)
    {
        self._items = FirestoreQuery(collectionPath: "user/\(userId)/todos")
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId))
    }
    var body: some View {
        NavigationView
        {
            VStack()
            {
                List(items){ item in
                    ToDoListItemView(item: item)
                        .swipeActions()
                        {
                            Button(
                                action: {
                                    viewModel.delete(id: item.id)
                                }
                                   , label: {
                                       Text("Delete")
                            }).tint(.red)
                        }
                    
                }.listStyle(PlainListStyle())
            }
            
            .navigationTitle("To Do List")
            .toolbar
            {
                Button{
                    //Add ToDo
                    viewModel.showingNewItemView = true
                } label: {
                    
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView)
            {
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "0kdux1SrTINsJ9rgzsKwGd5gjPt1")
}
