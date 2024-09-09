//
//  ProfileView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()

    var body: some View {
NavigationView
        {
            VStack{
                if let user = viewModel.user
                {
                    
                    Spacer()
                    
                        .padding(.top, 200)
                    //avatar
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .frame(width: 125, height: 125)
                    
                        Spacer()
                    //info: Name, Email, Member Since
                    
                    VStack(alignment: .leading)
                    {
                        Spacer()
                        Spacer()
                        HStack
                        {
                            Text("Name: ").bold()
                            Text(user.name)
                            
                        }
                        
                            Spacer()
                        HStack
                        {
                            Text("Email: ").bold()
                            Text(user.email)
                            
                        }
                        Spacer()
                        HStack
                        {
                            Text("Member Since: ").bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                            
                        }
                        Spacer()
                    }
                    Button
                    {
                        viewModel.logout()
                    } label: {
                        
                        Spacer()
                        ZStack{
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.red)
                            Text("Log Out").foregroundStyle(Color.white).bold()
                            
                        }
                        
                        Spacer()
                    }.padding(.all, 100)
                    
                
            }
                else
                {
                    Text("Loading.... Please Wait")
                }
            }
        }.onAppear{
            viewModel.fetchUser()
        }    }
}

#Preview {
    ProfileView()
}
