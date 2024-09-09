//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct LoginHeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color.pink)
                .rotationEffect(Angle(degrees: 15))
            VStack{
                Text("To Do List").foregroundStyle(Color.white).font(.system(size: 50))
                Text("Get things done!").foregroundStyle(Color.white)
                    .font(.system(size: 30))
            }.padding(.top, 30)
        }                    .frame(width: UIScreen.main.bounds.width * 3, height: 300 )
            .offset(y: -100)

        Spacer()    }
}

#Preview {
    LoginHeaderView()
}
