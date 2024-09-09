//
//  ToDoListItemView.swift
//  ToDoList
//
//  Created by Sherry on 30/08/2024.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ToDoListItemViewViewModel()
    let item: ToDoListItem
    var body: some View {
        HStack
        {
            VStack(alignment: .leading)
            {
                Text(item.title)
                    .font(.body)
                    .bold()
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: Date.FormatStyle.DateStyle.abbreviated, time: .shortened))")
                    .font(.footnote)
                    .foregroundStyle(Color(.secondaryLabel))
            }
            Spacer()
            Button{
                viewModel.toggleIsDone(item: item)
            } label: {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle" )
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(id: "123", title: "bla bla", dueDate: Date().timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: true))
}
