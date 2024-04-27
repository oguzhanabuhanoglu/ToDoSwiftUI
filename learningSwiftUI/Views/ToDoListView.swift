//
//  ToDoListView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI
import FirebaseFirestoreSwift

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListViewViewModel()
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String){
        self._items = FirestoreQuery(collectionPath: "User/\(userId)/missions")
    }

    var body: some View {
        NavigationStack{
            VStack{
                List(items) { item in
                    Text(item.title)
                }
                .listStyle(.plain)
                
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
    ToDoListView(userId: "03uBoOcPfahzBufITJQIJLIAmK32")
}
