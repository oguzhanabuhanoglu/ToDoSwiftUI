//
//  ToDoListView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }

    var body: some View {
        NavigationStack{
            VStack{
                
            }
            .navigationTitle("To Do")
            .toolbar{
                Button(action: {
                    //sheet open
                    viewModel.showingNewItem = true
                }, label: {
                    Image(systemName: "plus")
                })
                .bold()
            }
            .sheet(isPresented: $viewModel.showingNewItem, content: {
                NewItemView(newItemPresented: $viewModel.showingNewItem)
            })
        }
    }
}

#Preview {
    ToDoListView(userId: "ssdfsdfg")
}
