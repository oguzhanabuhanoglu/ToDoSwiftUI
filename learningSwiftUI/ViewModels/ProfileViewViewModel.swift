//
//  ProfileViewViewModel.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class ProfileViewViewModel: ObservableObject {
    
    @Published var user: User? = nil
    
    init(){}
    
    func fetchUser(){
        
        guard let userId = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("User").document(userId).getDocument { snapshot, error in
            guard let data = snapshot?.data(), error == nil else {
                return
            }
            DispatchQueue.main.async {
                self.user = User(id: data["id"] as? String ?? "",
                                 name: data["name"] as? String ?? "",
                                 email: data["email"] as? String ?? "",
                                 joined: data["joined"] as? TimeInterval ?? 0)
            }
        }
    }
    
    func logOut(){
        
    }
    
}
