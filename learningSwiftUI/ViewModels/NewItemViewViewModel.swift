//
//  NewItemViewViewModel.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewViewModel: ObservableObject{
    
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init(){}
    
    func save(){
        //save mission to database
        
        guard let currentUserId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let id = UUID().uuidString
        let newItem = ToDoListItem(id: id,
                                   title: title,
                                   dueDate: dueDate.timeIntervalSince1970,
                                   createdDate: Date().timeIntervalSince1970,
                                   isDone: false)
        
        let db = Firestore.firestore()
        db.collection("User").document(currentUserId).collection("missions").document(id).setData(newItem.asDictionary())
        
        
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
