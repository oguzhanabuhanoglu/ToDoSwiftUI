//
//  ToDoListItemViewViewModel.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ToDoListItemViewViewModel: ObservableObject {
    
    init(){}
    
    func done(item: ToDoListItem) {
        var item = item
        item.setDone(!item.isDone)
        
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("User").document(userId).collection("missions").document(item.id).setData(item.asDictionary())
        
    }
    
}
