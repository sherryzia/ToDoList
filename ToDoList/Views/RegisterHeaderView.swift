//
//  HeaderView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct RegisterHeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundColor(Color(hue: 0.07, saturation: 1.0, brightness: 0.954))
                .rotationEffect(Angle(degrees: 15))
            VStack{
                Text("Register").foregroundStyle(Color.white).font(.system(size: 50)).bold()
                Text("Start organizing stuff!").foregroundStyle(Color.white)
                    .font(.system(size: 30))
            }.padding(.top, 30)
        }                    .frame(width: UIScreen.main.bounds.width * 3, height: 300 )
            .offset(y: -100)

        Spacer()    }
}

#Preview {
    RegisterHeaderView()
}
