//
//  NewItemViewViewModel.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import Foundation

class NewItemViewViewModel: ObservableObject{
    
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init(){}
    
    func save(){
        //save mission to database
    }
    
    func canSave() -> Bool{
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }
        
        return true
    
    }
}
