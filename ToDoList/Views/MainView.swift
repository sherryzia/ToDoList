//
//  ContentView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct MainView: View {
@StateObject var viewModel = MainViewViewModel()
    var body: some View {
        VStack {
            NavigationView{
                if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty{
                    //signed in state
                    TabView{
                        ToDoListView(userId: viewModel.currentUserId)
                            .tabItem {
                                Label("Home", systemImage: "house")
                            }
                        ProfileView()
                            .tabItem {
                                Label("Profile", systemImage: "person.circle")
                            }
                        
                    }
                }
                else
                {
                    LoginView()
                }
            }
        }
        
    }
}

#Preview {
    MainView()
}
