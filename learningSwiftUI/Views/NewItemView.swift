//
//  NewItemView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("New Mission")
                    .font(.title)
                    .bold()
                    .padding(.top, 50)
                Form{
                    TextField("Title", text: $viewModel.title)
                    DatePicker("Due Time", selection: $viewModel.dueDate)
                        .datePickerStyle(.graphical)
                }.frame(height: 500)
                BigButton(title: "Save") {
                    if viewModel.canSave() {
                        viewModel.save()
                        newItemPresented = false
                    }else{
                        viewModel.showAlert = true
                    }
                }
                Spacer()
            }
            .alert(isPresented: $viewModel.showAlert, content: {
                Alert(title: Text("Error"),
                      message: Text("Please be sure everything correct"))
            })
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}
