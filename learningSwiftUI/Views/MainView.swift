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
            TabView{
                ToDoListView()
                    .tabItem { Label("Missions", systemImage: "house" )
                    }
                
                ProfileView()
                    .tabItem { Label("Profile", systemImage: "person.circle")
                    }
                
            }
        }else{
            LoginView()
        }
    }
}

#Preview {
    MainView()
}
