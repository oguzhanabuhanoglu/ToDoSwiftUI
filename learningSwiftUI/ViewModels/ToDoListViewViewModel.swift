//
//  ToDoListViewViewModel.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import Foundation
import FirebaseFirestore

class ToDoListViewViewModel: ObservableObject{
    
    @Published var showingNewItem = false
    
    private let userId: String
    
    init(userId: String){
        self.userId = userId
    }
    
    func delete(id: String){
        let db = Firestore.firestore()
        db.collection("User").document(userId).collection("missions").document(id).delete()
    }
}

