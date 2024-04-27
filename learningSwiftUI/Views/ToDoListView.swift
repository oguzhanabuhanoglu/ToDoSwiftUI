//
//  ToDoListView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct ToDoListView: View {
    
    @StateObject var viewModel = ToDoListItemViewViewModel()
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
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                })
                .bold()
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "ssdfsdfg")
}
