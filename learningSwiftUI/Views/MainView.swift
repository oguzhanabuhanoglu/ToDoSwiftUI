//
//  MainView.swift
//  learningSwiftUI
//
//  Created by Oğuzhan Abuhanoğlu on 25.04.2024.
//

import SwiftUI

struct MainView: View {
    
    @StateObject var viewModel = MainViewViewModel()
    
    var body: some View {
        
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
           accountView
        }else{
            LoginView()
        }
    }
    
    
    @ViewBuilder
    var accountView: some View {
        TabView{
            ToDoListView(userId: viewModel.currentUserId)
                .tabItem { Label("Missions", systemImage: "house" )
                }
            
            ProfileView()
                .tabItem { Label("Profile", systemImage: "person.circle")
                }
            
        }
    }
    
}

#Preview {
    MainView()
}
